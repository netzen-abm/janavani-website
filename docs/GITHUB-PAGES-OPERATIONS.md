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
- The generated `pages build and deployment` run appeared alongside the repository's custom publisher. In GitHub Settings → Pages → Build and deployment, set the source to **GitHub Actions** and verify the published environment URL to prevent competing publication sources.
- The active `.github/workflows/codeql.yml` produced a confirmed duplicate-configuration failure: `CodeQL analyses from advanced configurations cannot be processed when the default setup is enabled`. Its exact source is being archived before retiring the duplicate workflow. Keep GitHub's default CodeQL setup enabled as the single source of code-scanning results unless the repository deliberately switches configurations.
- The Pages validation gate initially caught two real packaging problems: an apostrophe in the Vision description was not handled by the checker, and the optimized SVG header logo was copied but not referenced. Both are being corrected; the validation gate remains enabled.
