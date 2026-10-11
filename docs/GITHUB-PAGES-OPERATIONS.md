# GitHub Pages and GitHub App Operating Model

## Public URL and repository separation

Canonical public brochure website: https://netzen-abm.github.io/janavani-website/

- `netzen-abm/janavani-website`: public HTML/CSS/JavaScript brochure website.
- `netzen-abm/janavani`: application and API repository. It must not be published wholesale as a Pages artifact.
- The supplied `https://netzen-abm.github.io/janavani/` path is not the URL emitted by the currently successful Pages deployment. Use the `janavani-website` URL consistently for canonical metadata, Open Graph, sitemap, and external links.

GitHub Pages serves static files. It does not run the Janavani FastAPI/Python backend. Keep authentication, citizen cases, secrets, authorization, and persistent data on the application-capable backend service.

## Publishing workflow

`.github/workflows/static.yml` is the single canonical publisher:
1. Runs validation on pull requests and main pushes.
2. Stages only the six pages, custom 404 page, shared CSS/JS, sitemap, robots, manifest, and referenced assets.
3. Validates metadata, structured data, local links, UTF-8 text, sitemap, manifest, and artifact allowlist.
4. Deploys only from `main`. Deployment credentials are scoped to the deploy job; build/validation has read-only contents access.
5. Uses the `github-pages` environment so deployment protection rules can be attached in GitHub Settings → Environments.

Do not copy the full repository into `_site`. Archived HTML, project documents, workflow examples, and application source must remain outside the public artifact.

## Recommended GitHub App permissions

Install a GitHub App only on the repositories it needs. Apply least privilege:
- Read repository contents to inspect source and produce build/test results.
- Pull requests read/write only if the App must create or update pull requests.
- Issues read/write only if it must triage issues.
- Actions read for run status; Actions write only if it must rerun workflows.
- Avoid repository administration, secrets, deployments, and broad organization permissions unless there is a clearly documented operational need.

Prefer an App-generated pull request and let CI validate it. Do not let automation push directly to `main`, alter deployment settings, or publish arbitrary files. Protect `main` with required checks and require the public-site validation workflow before merge.

GitHub Pages deployment uses the workflow's `GITHUB_TOKEN` with `pages: write` and `id-token: write` only on the deploy job; a personal access token should not be stored solely for Pages deployment.

## Release checklist

- Review the six public pages and verify all feature claims are accurate.
- Confirm canonical URLs all start with `https://netzen-abm.github.io/janavani-website/`.
- Run `python scripts/validate_public_site.py --site-dir _site` through CI.
- Inspect the Pages deployment job and its environment URL.
- Browser-check six page routes, mobile navigation, keyboard focus, translation, and the 404 route.
- Ensure no secrets, citizen data, backend code, or archive files enter `_site`.


## Findings from the 2026-10-11 Pages audit

- The authoritative Pages URL reported by the successful deployment job is `https://netzen-abm.github.io/janavani-website/`. The similarly named `/janavani/` path is not reported by the current publisher.
- The generated `dynamic/pages/pages-build-deployment` workflow also appears after the custom publisher; GitHub reports its event as `dynamic`, and its latest run succeeded. This is the generated Pages deployment stage and, by itself, is not evidence of a competing branch-source deployment. The Pages settings endpoint is not exposed by the connected repository tool; if checking manually, confirm Settings → Pages → Build and deployment → Source is **GitHub Actions**.
- The former `.github/workflows/codeql.yml` produced a confirmed duplicate-configuration failure: `CodeQL analyses from advanced configurations cannot be processed when the default setup is enabled`. Its exact contents are preserved at `archive/github-workflows/2026-10-11/codeql.yml`, and the duplicate workflow has been removed after verifying the archive. Keep GitHub's default CodeQL setup enabled as the single source of code-scanning results unless the repository deliberately switches configurations.
- The Pages validation gate initially caught two real packaging problems: an apostrophe in the Vision description was not handled by the checker, and the optimized SVG header logo was copied but not referenced. Both were corrected in commit `52765b1481594f55a42e877cfd1e0fb0a69f1440`; the validation gate now passes. The custom deployment also passed on commit `6c515eb73fd58c885068cfd742694e6caf61f0c1`.


## Verified outcome

On commit `52765b1481594f55a42e877cfd1e0fb0a69f1440`, the public-site validator passed: six public pages, 14 local files, required SEO/JSON-LD, internal references, sitemap, manifest, encoding, and the artifact allowlist. The uploaded Pages artifact was 1,033,625 bytes (about 1.03 MB). The custom Pages deployment also passed on commit `6c515eb73fd58c885068cfd742694e6caf61f0c1`.

**Optional settings check:** the custom publisher and generated dynamic Pages deployment both succeeded. The generated dynamic run is part of the Pages pipeline and does not by itself demonstrate duplicate branch publishing. For certainty, a repository administrator can verify Settings → Pages → Build and deployment → Source is **GitHub Actions**. The connected tool can update repository files but cannot read or change that Pages setting. The published environment URL should remain `https://netzen-abm.github.io/janavani-website/`.
