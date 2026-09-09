# Janavani Website — Workflow Archive Index

Date: 2026-09-09
Repository: `netzen-abm/janavani-website`
Branch: `audit/2026-09-09-website-reconciliation`

## Purpose

This directory preserves workflow files retired from the active workflow directory during repository convergence.

The archive-first rule applies: retired workflow source is preserved before removal from `.github/workflows/`.

## Final active workflow policy

Only these two workflows are intended to remain active for the Janavani public website:

- `codeql.yml` — security analysis for GitHub Actions and JavaScript/TypeScript.
- `static.yml` — canonical GitHub Pages deployment for the six-page static website.

## Archived workflows

| Workflow | Reason for retirement |
|---|---|
| `apisec-scan.yml` | APIsec/VAmPI API scanner; unrelated to the static public website architecture. |
| `astro.yml` | Framework-specific GitHub Pages starter workflow; repository is not an Astro site. |
| `bearer.yml` | External Bearer security scanner; not required by the documented website architecture. |
| `black-duck-security-scan-ci.yml` | External Black Duck/Coverity security stack; redundant with the retained CodeQL baseline and not required for this site. |
| `contrast-scan.yml` | External Contrast scanner with Java/.NET artifact assumptions; not applicable to this static site. |
| `ethicalcheck.yml` | API penetration-testing starter workflow targeting an external NetBanking API; unrelated to Janavani website deployment. |
| `fortify.yml` | External enterprise Fortify scanning workflow; no demonstrated Janavani website requirement. |
| `freenet-deploy.yml` | Future/research infrastructure deployment experiment; not a current website deployment dependency. |
| `gatsby.yml` | Framework-specific GitHub Pages starter workflow; repository is not a Gatsby site. |
| `generator-generic-ossf-slsa3-publish.yml` | Generic SLSA starter that generates placeholder `artifact1`/`artifact2`; not valid Janavani website provenance. |
| `greetings.yml` | Generic repository greeting automation; no website engineering function. |
| `hugo.yml` | Framework-specific GitHub Pages workflow; repository is not a Hugo site. |
| `jekyll.yml` | Jekyll deployment path; repository currently uses static HTML/CSS/JS. |
| `jekyll-gh-pages.yml` | Duplicate Jekyll deployment path; confirmed by successful historical run 33147897062. |
| `jscrambler-code-integrity.yml` | External Jscrambler workflow requiring an npm build, `dist`, config, and credentials not present in the current architecture. |
| `label.yml` | Generic pull-request labeler; not required for the website release path. |
| `manual.yml` | Generic manual greeting workflow; no website engineering function. |
| `mdbook.yml` | mdBook documentation-site deployment; not the Janavani public website. |
| `nextjs.yml` | Framework-specific GitHub Pages starter workflow; repository is not a Next.js site. |
| `nuxtjs.yml` | Framework-specific GitHub Pages starter workflow; repository is not a Nuxt site. |
| `octopusdeploy.yml` | External Docker/Octopus deployment template with placeholders; not part of the documented GitHub Pages path. |
| `openshift.yml` | Container/OpenShift deployment template; unrelated to the static GitHub Pages architecture. |
| `sonarcloud.yml` | Unconfigured SonarCloud starter with empty mandatory project/organization values. |
| `sonarqube.yml` | Unconfigured SonarQube starter with an empty mandatory project key. |
| `stale.yml` | Generic stale issue/PR automation; not required for the website. |
| `summary.yml` | Generic AI issue summarization automation; unnecessary additional automation surface. |

## Archive integrity

For workflows whose historical blob SHA was available, the archive uses the exact historical Git blob rather than a reconstructed approximation. In particular, the following archives were explicitly corrected or restored to their active historical blob identities during this cleanup: APIsec, Black Duck, Contrast, EthicalCheck, Fortify, Freenet, SLSA, Jscrambler, Hugo, mdBook, Next.js, Nuxt, Manual, Labeler, SonarCloud, SonarQube, Stale, Summary, and OpenShift/Octopus.

## Important evidence

Workflow run `33147897062` used `jekyll-gh-pages.yml` on `main` and completed successfully on 2026-08-28. This is historical evidence that the duplicate Jekyll deployment path was active.

## Post-cleanup review

1. Verify the audit branch contains exactly `codeql.yml` and `static.yml` under `.github/workflows/`.
2. Verify the archive remains outside the active workflow directory.
3. Review GitHub Pages settings and recent deployment activity before production reconciliation.
4. Keep `main` unchanged until its separate workflow reconciliation is explicitly approved.
