#!/usr/bin/env python3
"""Validate the exact public artifact staged for GitHub Pages."""

from __future__ import annotations

import argparse
import json
import re
import sys
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import unquote, urlsplit
import xml.etree.ElementTree as ET

BASE_URL = "https://netzen-abm.github.io/janavani-website/"
PAGES = {
    "index.html": BASE_URL,
    "about.html": BASE_URL + "about.html",
    "how-it-works.html": BASE_URL + "how-it-works.html",
    "resources.html": BASE_URL + "resources.html",
    "vision.html": BASE_URL + "vision.html",
    "contact.html": BASE_URL + "contact.html",
}
ROOT_FILES = {
    *PAGES,
    "404.html",
    "styles-rebuild.css",
    "script-rebuild.js",
    "gtranslation-new.js",
    "robots.txt",
    "sitemap.xml",
    "site.webmanifest",
    "assets",
    "CNAME",
}
MOJIBAKE = (
    "â€”", "â€“", "â€™", "â€˜", "â€œ", "â€\u009d", "â€�",
    "Â©", "Â·", "Â ", "â˜°", "â†‘", "â†’", "â†“",
    "â€¢", "â€¦", "Ã—", "ï»¿", "�",
)
OG_PROPERTIES = ("og:title", "og:description", "og:type", "og:url", "og:site_name")
TWITTER_NAMES = ("twitter:card", "twitter:title", "twitter:description")


class ReferenceParser(HTMLParser):
    """Collect links and metadata without executing page scripts."""

    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.references: list[str] = []
        self.h1_count = 0
        self.title_depth = False
        self.title_parts: list[str] = []
        self.meta_by_key: dict[str, str] = {}
        self.canonical: list[str] = []
        self.jsonld_parts: list[str] = []
        self._in_jsonld = False
        self._current_jsonld: list[str] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        values = {key.lower(): value or "" for key, value in attrs}
        tag = tag.lower()
        if tag == "h1":
            self.h1_count += 1
        if tag in {"a", "link", "script", "img", "source"}:
            for key in ("href", "src"):
                if values.get(key):
                    self.references.append(values[key])
        if tag == "meta":
            key = (values.get("name") or values.get("property") or "").lower()
            if key and values.get("content"):
                self.meta_by_key[key] = values["content"]
        if tag == "link" and "canonical" in values.get("rel", "").lower().split():
            self.canonical.append(values.get("href", ""))
        if tag == "title":
            self.title_depth = True
        if tag == "script" and values.get("type", "").lower() == "application/ld+json":
            self._in_jsonld = True
            self._current_jsonld = []

    def handle_data(self, data: str) -> None:
        if self.title_depth:
            self.title_parts.append(data)
        if self._in_jsonld:
            self._current_jsonld.append(data)

    def handle_endtag(self, tag: str) -> None:
        tag = tag.lower()
        if tag == "title":
            self.title_depth = False
        if tag == "script" and self._in_jsonld:
            self.jsonld_parts.append("".join(self._current_jsonld))
            self._in_jsonld = False
            self._current_jsonld = []


def local_path(reference: str) -> str | None:
    value = reference.strip()
    if not value or value.startswith("#"):
        return None
    parsed = urlsplit(value)
    if parsed.scheme or parsed.netloc:
        return None
    path = unquote(parsed.path)
    if not path:
        return None
    if path.startswith("/"):
        if path.startswith("/janavani-website/"):
            path = path[len("/janavani-website/"):]
        else:
            raise ValueError(
                f"root-relative reference escapes the project Pages base path: {value}"
            )
    return path


def check_reference(
    root: Path, reference: str, source: str, errors: list[str]
) -> str | None:
    try:
        path = local_path(reference)
    except ValueError as exc:
        errors.append(f"{source}: {exc}")
        return None
    if path is None:
        return None
    target = root / path
    if path.endswith("/"):
        target = target / "index.html"
    if not target.is_file():
        errors.append(f"{source}: missing referenced file {reference!r}")
        return None
    return target.relative_to(root).as_posix()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--site-dir", type=Path, default=Path("_site"))
    args = parser.parse_args()
    root = args.site_dir.resolve()
    errors: list[str] = []

    if not root.is_dir():
        print(f"ERROR: staged site directory does not exist: {root}", file=sys.stderr)
        return 1

    actual_roots = {path.name for path in root.iterdir()}
    unexpected = actual_roots - ROOT_FILES
    if unexpected:
        errors.append(f"public artifact contains unexpected root entries: {sorted(unexpected)}")
    missing_pages = set(PAGES) - actual_roots
    if missing_pages:
        errors.append(f"public artifact is missing pages: {sorted(missing_pages)}")

    used_files: set[str] = set()
    for filename in [*PAGES, "404.html"]:
        path = root / filename
        if not path.is_file():
            continue
        html = path.read_text(encoding="utf-8")
        if any(token in html for token in MOJIBAKE):
            errors.append(f"{filename}: suspicious mojibake/replacement character remains")
        if not re.search(r"<meta\s+charset=[\"']utf-8[\"']", html, re.I):
            errors.append(f"{filename}: missing UTF-8 charset declaration")
        if filename in PAGES:
            if not re.search(r"<meta\s+name=[\"']viewport[\"']", html, re.I):
                errors.append(f"{filename}: missing viewport declaration")
            if not re.search(
                r"<meta\s+name=[\"']description[\"']\s+content=[\"'][^\"']{40,170}[\"']",
                html, re.I,
            ):
                errors.append(f"{filename}: missing or unsuitable meta description")

        document = ReferenceParser()
        document.feed(html)
        if not " ".join(document.title_parts).strip():
            errors.append(f"{filename}: missing title")

        if filename in PAGES:
            if document.h1_count != 1:
                errors.append(
                    f"{filename}: expected exactly one H1, found {document.h1_count}"
                )
            if document.canonical != [PAGES[filename]]:
                errors.append(
                    f"{filename}: canonical mismatch; expected {PAGES[filename]!r}, "
                    f"got {document.canonical!r}"
                )
            for key in OG_PROPERTIES:
                if key not in document.meta_by_key:
                    errors.append(f"{filename}: missing Open Graph property {key}")
            for key in TWITTER_NAMES:
                if key not in document.meta_by_key:
                    errors.append(f"{filename}: missing Twitter metadata {key}")
            if len(document.jsonld_parts) != 1:
                errors.append(f"{filename}: expected one JSON-LD WebSite/WebPage block")
            else:
                try:
                    data = json.loads(document.jsonld_parts[0])
                    if data.get("@type") not in {"WebSite", "WebPage"}:
                        errors.append(f"{filename}: unexpected JSON-LD @type {data.get('@type')!r}")
                except json.JSONDecodeError as exc:
                    errors.append(f"{filename}: invalid JSON-LD: {exc}")

        for reference in document.references:
            resolved = check_reference(root, reference, filename, errors)
            if resolved:
                used_files.add(resolved)
        for css_url in re.findall(r"url\(\s*([^)]+?)\s*\)", html, re.I):
            css_url = css_url.strip().strip("\"'").strip()
            resolved = check_reference(root, css_url, filename + " inline CSS", errors)
            if resolved:
                used_files.add(resolved)

    css_path = root / "styles-rebuild.css"
    if css_path.is_file():
        css = css_path.read_text(encoding="utf-8")
        if any(token in css for token in MOJIBAKE):
            errors.append("styles-rebuild.css: suspicious mojibake/replacement character remains")
        for css_url in re.findall(r"url\(\s*([^)]+?)\s*\)", css, re.I):
            css_url = css_url.strip().strip("\"'").strip()
            resolved = check_reference(root, css_url, "styles-rebuild.css", errors)
            if resolved:
                used_files.add(resolved)

    manifest_path = root / "site.webmanifest"
    if manifest_path.is_file():
        try:
            manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
            if manifest.get("start_url") != "/janavani-website/":
                errors.append("site.webmanifest: incorrect project start_url")
            if manifest.get("scope") != "/janavani-website/":
                errors.append("site.webmanifest: incorrect project scope")
            for icon in manifest.get("icons", []):
                resolved = check_reference(root, icon.get("src", ""), "site.webmanifest", errors)
                if resolved:
                    used_files.add(resolved)
        except (json.JSONDecodeError, OSError) as exc:
            errors.append(f"site.webmanifest: invalid manifest: {exc}")

    sitemap_path = root / "sitemap.xml"
    if sitemap_path.is_file():
        try:
            sitemap = ET.parse(sitemap_path).getroot()
            sitemap_urls = {
                node.text.strip()
                for node in sitemap.iter()
                if node.tag.endswith("loc") and node.text
            }
            expected_urls = set(PAGES.values())
            if sitemap_urls != expected_urls:
                errors.append(
                    "sitemap.xml differs from canonical page set; "
                    f"missing={sorted(expected_urls - sitemap_urls)}, "
                    f"unexpected={sorted(sitemap_urls - expected_urls)}"
                )
        except (ET.ParseError, OSError) as exc:
            errors.append(f"sitemap.xml: invalid XML: {exc}")

    robots_path = root / "robots.txt"
    if not robots_path.is_file() or f"Sitemap: {BASE_URL}sitemap.xml" not in robots_path.read_text(encoding="utf-8"):
        errors.append("robots.txt: missing canonical sitemap declaration")

    assets_dir = root / "assets"
    actual_assets = {
        item.relative_to(root).as_posix()
        for item in assets_dir.rglob("*")
        if item.is_file()
    } if assets_dir.is_dir() else set()
    unreferenced = actual_assets - used_files
    if unreferenced:
        errors.append(f"public artifact contains unreferenced assets: {sorted(unreferenced)}")

    if errors:
        for error in errors:
            print(f"ERROR: {error}", file=sys.stderr)
        print(f"FAILED: {len(errors)} public-site validation error(s)", file=sys.stderr)
        return 1

    print(
        f"PASS: validated {len(PAGES)} public pages, {len(used_files)} local files, "
        "SEO metadata, JSON-LD, links, sitemap, manifest, and artifact allowlist."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
