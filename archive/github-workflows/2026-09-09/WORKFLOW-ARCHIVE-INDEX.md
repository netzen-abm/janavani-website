# Janavani Website — Workflow Archive Index

Date: 2026-09-09
Repository: `netzen-abm/janavani-website`
Branch: `audit/2026-09-09-website-reconciliation`

## Purpose

This directory preserves workflow files retired from the active workflow directory during repository convergence.

The archive-first rule applies: files are preserved before removal from `.github/workflows/`.

## Archived workflows

| Workflow | Reason for retirement from active workflows |
|---|---|
| `astro.yml` | Framework-specific GitHub Pages starter workflow; repository is not an Astro site. |
| `gatsby.yml` | Framework-specific GitHub Pages starter workflow; repository is not a Gatsby site. |
| `hugo.yml` | Framework-specific GitHub Pages workflow; repository is not a Hugo site. |
| `jekyll.yml` | Jekyll deployment path; repository currently uses static HTML/CSS/JS. |
| `jekyll-gh-pages.yml` | Second Jekyll deployment path; also confirmed by linked successful run 33147897062. |
| `nextjs.yml` | Framework-specific GitHub Pages starter workflow; repository is not a Next.js site. |
| `nuxtjs.yml` | Framework-specific GitHub Pages starter workflow; repository is not a Nuxt site. |
| `openshift.yml` | Container/platform deployment workflow unrelated to the documented GitHub Pages website architecture. |
| `octopusdeploy.yml` | External deployment platform workflow not part of the documented GitHub Pages release path. |
| `freenet-deploy.yml` | Future/research infrastructure workflow; not a current website deployment dependency. |
| `manual.yml` | Generic sample/manual greeting workflow with no website engineering function. |
| `greetings.yml` | Generic repository greeting automation; not part of website build/deployment. |

## Intentionally retained active workflow

`static.yml`

This remains the provisional canonical GitHub Pages deployment workflow pending a separate artifact-scope review.

## Not covered by this cleanup

Security, code-analysis, quality, provenance, or administrative workflows are not removed by this archive action merely because they are numerous. They require separate evidence-based review.

## Important evidence

Workflow run `33147897062` used `jekyll-gh-pages.yml` on `main` and completed successfully on 2026-08-28. The run is therefore evidence that the duplicate Jekyll deployment path was active.

## Next review

After this archive/removal step:

1. Verify only the intended deployment workflow remains active.
2. Review GitHub Pages settings and recent deployment activity.
3. Narrow the artifact published by `static.yml` so the production site does not unnecessarily publish repository contents.
