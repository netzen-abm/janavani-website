# Janavani Website — Architecture & Decision Record

**Status:** Current working authority for the website upgrade
**Date:** 2026-09-09
**Repository:** `netzen-abm/janavani-website`
**Working branch:** `audit/2026-09-09-website-reconciliation`

---

## 1. Purpose

This document records the important architectural, deployment, SEO, workflow, and maintenance decisions made during the September 2026 Janavani website reconciliation.

The purpose is to prevent repeated decisions, accidental architectural drift, and future maintainers treating starter/template infrastructure as production architecture.

The GitHub repository remains the implementation authority. This document records the decisions that implementation must follow.

---

## 2. Janavani Website Identity

Janavani is **The Infrastructure of Citizen Voice** — civic infrastructure for meaningful citizen participation.

The public website is the explanatory/public-facing layer of Janavani. It is **not the Janavani application itself**.

The website must not imply that future product capabilities are already operational.

Use the explicit lifecycle language:

- **NOW** — currently available/implemented and evidenced.
- **BUILDING** — actively being developed or prepared.
- **FUTURE** — intended direction, not yet operational.

Never present BUILDING or FUTURE capabilities as live functionality.

---

## 3. Current Website Architecture

The current public website is a lightweight static website consisting of:

- six HTML pages;
- shared rebuilt CSS;
- lightweight shared JavaScript;
- shared translation configuration;
- static assets.

The six canonical pages are:

1. `index.html` — Home / What is Janavani?
2. `about.html` — Why does it exist?
3. `how-it-works.html` — How does it work?
4. `resources.html` — What can I learn?
5. `vision.html` — Where is it going?
6. `contact.html` — How can I participate?

Current rebuilt shared assets are:

- `styles-rebuild.css`
- `script-rebuild.js`
- `gtranslation-new.js`

Legacy files such as `styles.css`, `script.js`, and `gtranslation.js` are historical/reference infrastructure and must not be treated as the current canonical shared implementation merely because they remain in the repository.

The website currently has a transitional state in which some page-specific CSS remains inside individual HTML pages. Do not prematurely consolidate that CSS until all six HTML pages have converged and passed their individual audits.

---

## 4. Page-by-Page Upgrade Rule

The agreed workflow is:

```text
One HTML page at a time
        ↓
Backup / audit existing page
        ↓
Content alignment
        ↓
SEO / AEO / AI-search alignment
        ↓
Accessibility
        ↓
Visual implementation
        ↓
Verification
        ↓
Next HTML page
        ↓
All six pages complete
        ↓
Shared CSS / JS / translation standardization
        ↓
Whole-site QA
        ↓
Deployment
```

Do not use a broad site-wide replacement while individual page decisions are still being finalized.

Existing content must be preserved by default. Verify first; retain, add, modify, or move content only when there is a documented reason.

---

## 5. Shared Infrastructure Rule

`styles-rebuild.css`, `script-rebuild.js`, and `gtranslation-new.js` are the current rebuilt shared infrastructure.

They are protected from unnecessary changes while individual HTML pages are being finalized.

After all six pages are stable, perform one deliberate shared-infrastructure standardization pass.

The final shared layer should eliminate duplication where appropriate without destroying page-specific visual requirements.

---

## 6. GitHub Actions / Deployment Architecture

### 6.1 Canonical deployment workflow

The canonical workflow is:

`.github/workflows/static.yml`

It is intentionally a static GitHub Pages deployment workflow.

Janavani's current website does **not** require:

- Jekyll;
- Astro;
- Gatsby;
- Hugo;
- Next.js;
- Nuxt;
- mdBook;
- Docker/OpenShift deployment;
- an application-framework build pipeline.

The website should not inherit a framework simply because GitHub provides a starter workflow for it.

### 6.2 Deployment trigger

The canonical workflow deploys on pushes to `main` and supports manual `workflow_dispatch`.

The working reconciliation branch must not be treated as production.

### 6.3 Pages permissions

The canonical workflow uses the minimum Pages deployment permissions required by GitHub Pages:

- `contents: read`
- `pages: write`
- `id-token: write`

### 6.4 Artifact scope

The workflow must **not** upload the entire repository.

The previous configuration used `path: '.'`, which would make the complete repository the Pages artifact. That was rejected.

The corrected workflow stages an explicit `_site` payload containing only the intended public website files.

This protects repository-only material such as documentation, archives, audit records, and workflow files from accidental inclusion in the public deployment artifact.

### 6.5 Public deployment payload

The canonical workflow currently stages:

- the six HTML pages;
- `styles-rebuild.css`;
- `script-rebuild.js`;
- `gtranslation-new.js`;
- `assets/`;
- `robots.txt` when present;
- `sitemap.xml` when present;
- `manifest.json` / `site.webmanifest` when present;
- `CNAME` when present.

Optional files are copied only when they exist.

---

## 7. SEO / Discovery Files

### 7.1 `robots.txt` — KEEP

`robots.txt` provides crawler guidance. It is not a security control.

Current configuration allows normal crawling and points crawlers to the sitemap:

```text
User-agent: *
Allow: /

Sitemap: https://netzen-abm.github.io/janavani-website/sitemap.xml
```

This is appropriate for the current public website and its SEO/AEO/AI discoverability goals.

When the public domain changes, update the sitemap URL consistently.

### 7.2 `sitemap.xml` — KEEP

A sitemap provides search engines with the canonical public URL set.

The current sitemap contains the six public website pages and uses the current GitHub Pages URLs.

When a custom domain is adopted, update the sitemap URLs together with canonical metadata and other absolute URLs.

### 7.3 `manifest.json` / `site.webmanifest` — DEFER

A web manifest is useful for an installable/PWA experience.

Janavani has **not** adopted a PWA requirement for the public information website at this stage.

Do not create a manifest merely because it is common practice.

Create one only when the website architecture deliberately adopts PWA/installable behavior.

### 7.4 `CNAME` — CONDITIONAL

`CNAME` is relevant only when the GitHub Pages site is configured to use a custom domain.

Do not add a CNAME file without an actual custom-domain decision/configuration.

A CNAME file alone is not the complete GitHub Pages custom-domain configuration.

---

## 8. Current GitHub Pages URL

The current public deployment URL used by the SEO files is:

`https://netzen-abm.github.io/janavani-website/`

This is a deployment fact for the current environment, not a permanent assertion that this will be the final public domain.

If a custom domain is later configured, update all relevant absolute URLs as one coordinated change:

- `robots.txt`
- `sitemap.xml`
- HTML canonical URLs
- Open Graph URLs
- structured data URLs
- any other absolute website URLs.

---

## 9. Workflow Cleanup Policy

The repository previously contained many generic GitHub starter workflows for frameworks and external services.

The existence of a workflow file is not evidence that the underlying technology belongs to Janavani.

Each workflow must be classified by its actual code and relationship to the repository.

### Keep / review

- `static.yml` — canonical website deployment.
- `codeql.yml` — genuine security workflow; retain/review based on repository needs.
- `label.yml` — retain only if its configuration and repository-management purpose are intentional.
- `stale.yml` — optional repository-management capability.
- `summary.yml` — optional issue-management/AI utility.

### Security / quality workflows requiring separate evidence-based review

- `bearer.yml`
- `black-duck-security-scan-ci.yml`
- `fortify.yml`
- `sonarcloud.yml`
- `sonarqube.yml`
- `jscrambler-code-integrity.yml`
- `generator-generic-ossf-slsa3-publish.yml`
- `apisec-scan.yml`
- `contrast-scan.yml`
- `ethicalcheck.yml`

These must not be deleted solely because they are third-party workflows. Their actual configuration, usefulness, credentials/dependencies, and relationship to Janavani must be established first.

### Generic / unrelated workflows targeted for retirement after exact archival

- `astro.yml`
- `gatsby.yml`
- `hugo.yml`
- `jekyll-gh-pages.yml`
- `jekyll.yml`
- `nextjs.yml`
- `nuxtjs.yml`
- `mdbook.yml`
- `openshift.yml`
- `octopusdeploy.yml`
- `freenet-deploy.yml`
- `manual.yml`
- `greetings.yml`

Some workflows may move between classifications if new repository evidence is discovered.

---

## 10. Archive-First Rule

The permanent repository rule is:

> **Archive first. Delete only after evidence.**

For workflow retirement:

```text
Fetch exact active workflow
        ↓
Archive exact content
        ↓
Verify archive against source
        ↓
Record reason for retirement
        ↓
Delete active workflow
        ↓
Verify remaining workflows
```

Do not replace an original workflow with an approximate reconstruction and call it an exact archive.

The archive must preserve the original source content whenever possible.

---

## 11. Known Workflow History

The repository has evidence that `jekyll-gh-pages.yml` previously executed successfully. This does **not** mean Jekyll is the current website architecture; it means Jekyll was historically used by the repository.

That distinction is important when cleaning workflows.

Similarly, generic Astro/Gatsby/Hugo/Next/Nuxt/mdBook workflows are not evidence that the corresponding applications exist.

---

## 12. Current Code-Level Issues Already Identified

These are tracked issues for the later six-page/shared-code reconciliation:

1. **UTF-8 / mojibake** — visible strings such as `â€”`, `â˜°`, `â†“`, and `Â·` have appeared in current HTML. Source encoding must ultimately be corrected rather than relying on a JavaScript cleanup workaround.
2. **Skip-link selector mismatch** — pages use `jv-skip-link` while shared CSS defines `.skip-link`; this requires verification and correction.
3. **Metadata convergence** — title, description, canonical, Open Graph, Twitter metadata and structured data need a final cross-page consistency audit.
4. **JSON-LD** — relevant page schemas must be verified page by page.
5. **AEO direct-answer blocks** — maintain visible, useful answer content rather than hidden/keyword-stuffed SEO.
6. **NOW / BUILDING / FUTURE** — verify that lifecycle labels remain truthful on every page.
7. **Asset/link integrity** — verify all current asset paths, logo detection, favicon, and page links.
8. **Translation infrastructure** — reconcile current `gtranslation-new.js` behavior with documentation after page convergence.
9. **Responsive/accessibility QA** — verify at the whole-site level after individual page completion.
10. **Shared CSS/JS consolidation** — do only after all six HTML pages are finalized.

---

## 13. SEO / AEO / AI Discoverability Principles

The website should use:

- semantic HTML;
- unique and accurate page titles;
- useful meta descriptions;
- canonical URLs;
- Open Graph metadata;
- appropriate Twitter metadata;
- descriptive links;
- meaningful image ALT text;
- structured data where appropriate;
- visible question-and-answer content where it genuinely improves comprehension;
- clear page purpose and information hierarchy.

Do not use:

- hidden SEO text;
- keyword stuffing;
- fake structured data;
- claims of functionality that does not exist;
- future features presented as live features.

The Q&A strategy is page-specific:

- Home — high-level Janavani questions.
- How It Works — operational questions.
- Resources — evidence/learning questions.
- About — trust, privacy and boundaries.
- Get Involved — participation questions.
- Vision — primarily editorial/philosophical rather than forcing an FAQ structure where it adds no value.

---

## 14. Content Preservation Rule

Existing website content represents accumulated project history and must not be casually discarded.

Before changing content:

1. inspect existing material;
2. identify its purpose;
3. preserve useful substance;
4. move content when hierarchy requires it;
5. rewrite only when alignment, clarity, accuracy, or consistency requires it;
6. document significant removals or replacements.

The goal is convergence, not indiscriminate replacement.

---

## 15. Website vs Janavani Product

The public website should explain Janavani without becoming a false representation of the product implementation.

Janavani's broader ecosystem may eventually contain independent surfaces and capabilities, but those belong to the product/platform architecture rather than being assumed to exist merely because the public website mentions the direction.

The website should therefore remain a clear public communication layer while the application/platform remains separately engineered.

---

## 16. Current Reconciliation Branch

Working branch:

`audit/2026-09-09-website-reconciliation`

This branch is a protected reconciliation workspace.

It must not be merged into `main` without an explicit release decision after verification.

Known reconciliation work already performed includes:

- progress tracker reconciliation;
- workflow audit;
- workflow archive preparation;
- correction of the Astro archive content;
- canonical static Pages workflow redesign;
- controlled Pages artifact staging;
- creation of `robots.txt`;
- creation of `sitemap.xml`.

---

## 17. Change Discipline

Before modifying repository code:

1. explain exactly what will change;
2. identify affected files;
3. identify why the change is required;
4. verify relevant repository evidence;
5. make the smallest justified change;
6. verify the result;
7. record the change when architecturally significant.

Read-only audits may be performed without approval. Production-impacting changes require explicit approval.

---

## 18. Definition of Done for Website Reconciliation

The website reconciliation is not complete merely because the site renders.

Completion requires evidence for:

- six-page content alignment;
- semantic HTML;
- accessibility;
- responsive behavior;
- asset integrity;
- UTF-8 correctness;
- SEO metadata;
- AEO/AI discoverability;
- structured data;
- internal links;
- translation behavior;
- deployment workflow correctness;
- controlled Pages artifact scope;
- repository/workflow hygiene;
- rollback/archive integrity;
- production deployment verification.

Only after these gates pass should the shared CSS/JS standardization and final production release be considered complete.
