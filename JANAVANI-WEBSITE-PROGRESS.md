# JANAVANI WEBSITE — MASTER PROGRESS TRACKER

**Status:** Active control document  
**Last reconciled:** 2026-09-09  
**Repository:** `netzen-abm/janavani-website`  
**Branch under audit:** `audit/2026-09-09-website-reconciliation`  
**Identity:** JANAVANI — The Infrastructure of Citizen Voice

---

## 1. CURRENT VERIFIED STATE

The repository is in the second-generation six-page website rebuild.

The current implementation uses the rebuild shared infrastructure:

- `styles-rebuild.css`
- `script-rebuild.js`
- `gtranslation-new.js`

The six primary HTML pages are present:

1. `index.html` — Home
2. `how-it-works.html` — Citizen journey and operational explanation
3. `resources.html` — Civic knowledge, references and FAQ
4. `vision.html` — Future direction and civic infrastructure vision
5. `about.html` — Identity, mission, principles and citizen agency
6. `contact.html` — Get Involved / Contact

The current public website remains protected until the final release gate is satisfied.

---

## 2. COMPLETED / VERIFIED

### Project architecture

- [x] Repository/state audit
- [x] Six-page website architecture
- [x] Website/application boundary
- [x] Master website content map
- [x] Developer guide
- [x] Deployment/replacement protocol
- [x] QA framework
- [x] Whole-site visual architecture
- [x] Existing-content preservation rule
- [x] NOW / BUILDING / FUTURE discipline
- [x] Citizen-agency boundary

### Rebuild infrastructure

- [x] Rebuild stylesheet exists
- [x] Rebuild JavaScript exists
- [x] New translation configuration exists
- [x] Shared shell pattern present across rebuilt pages
- [x] Sticky/header interaction support implemented in rebuild JS
- [x] Back-to-top interaction support implemented in rebuild JS
- [x] Current-page navigation detection implemented in rebuild JS
- [x] Reduced-motion handling present in page/rebuild styles where applicable

### Page rebuilds

- [x] Home rebuild present
- [x] How It Works rebuild present
- [x] About rebuild present
- [x] Resources rebuild present
- [x] Vision rebuild present
- [x] Contact/Get Involved rebuild present

### Site documentation

- [x] Website knowledge-base directory established
- [x] Six-page content architecture documentation
- [x] Shared infrastructure documentation
- [x] QA checklist
- [x] Deployment/replacement protocol
- [x] Changelog
- [x] Page-specific content masters/reference material

### Preservation

- [x] Historical/recovery archive retained
- [x] Pre-change page recovery copies retained
- [x] Existing legacy `styles.css` retained
- [x] Existing legacy `script.js` retained
- [x] Existing legacy translation infrastructure retained where applicable

---

## 3. CURRENTLY IN PROGRESS

### A. Repository reconciliation

- [ ] Reconcile this tracker with all current implementation files
- [ ] Identify obsolete framework/deployment workflows
- [ ] Classify historical archive material
- [ ] Confirm canonical production files

### B. Six-page final convergence

- [ ] Final content verification against page masters
- [ ] Cross-page navigation consistency
- [ ] Cross-page footer consistency
- [ ] Translation consistency
- [ ] Internal/external link verification
- [ ] Encoding verification
- [ ] Responsive verification at required widths
- [ ] Accessibility verification
- [ ] SEO/AEO/GEO verification
- [ ] Structured-data verification

### C. Shared rebuild stabilization

- [ ] Consolidate repeated page-specific CSS into `styles-rebuild.css` where justified
- [ ] Consolidate shared interaction behaviour into `script-rebuild.js`
- [ ] Keep page-specific styling limited to genuine page needs
- [ ] Confirm `gtranslation-new.js` is the intended translation configuration

---

## 4. IMPORTANT REPOSITORY FINDING

The repository currently contains many framework-specific GitHub Actions workflows, including workflows associated with Astro, Gatsby, Hugo, Jekyll, Next.js, Nuxt.js and static deployment, in addition to security/quality workflows.

This is excessive for the current six-page static website architecture.

**Decision:** Do not delete workflows during this reconciliation step. First classify them, identify the canonical deployment workflow, archive obsolete workflows where appropriate, and retain only the workflows justified by the final architecture.

---

## 5. CONTENT GOVERNANCE

### NOW

Implemented and verified as currently available.

### BUILDING

Actively being developed.

### FUTURE

Research, roadmap or long-term direction.

Never present BUILDING or FUTURE capabilities as operational.

Telegram is an interface, not Janavani itself.

The Web App is a major building direction unless verified as publicly deployed.

AI is a capability, not Janavani's identity.

Freenet and decentralised infrastructure remain future/research directions unless independently verified as implemented.

---

## 6. PAGE RESPONSIBILITIES

| Page | Primary responsibility |
|---|---|
| Home | Constitutional premise, identity, purpose and orientation |
| How It Works | Citizen journey and operational explanation |
| Resources | Civic knowledge, references, practical material and FAQ |
| Vision | Larger destination, future direction and possibilities |
| About | Identity, mission, principles, privacy and citizen agency |
| Get Involved | Communication, participation and contribution |

FAQ is primarily a Resources responsibility and should not be duplicated on Home merely to satisfy a checklist.

---

## 7. VISUAL GOVERNANCE

The website should feel:

- civic
- premium
- intelligent
- trustworthy
- human
- restrained
- editorial
- citizen-centred

Visuals must explain systems, not merely decorate.

Prefer:

- process diagrams
- relationship diagrams
- timelines
- conceptual illustrations
- meaningful infographics
- editorial layouts

Do not invent statistics or use decorative charts without legitimate data.

Reduce unnecessary card/panel dependency.

---

## 8. PROTECTED LEGACY FILES

The following legacy implementation files are retained as historical/reference infrastructure during the rebuild:

- `styles.css`
- `script.js`
- legacy translation files as applicable

Do not modify legacy files merely to make the rebuild easier.

The canonical rebuild direction is:

```text
HTML pages
    ↓
styles-rebuild.css
    ↓
script-rebuild.js
    ↓
gtranslation-new.js
```

---

## 9. RELEASE GATE

No production replacement until all required gates are satisfied:

- [ ] Content QA
- [ ] Design QA
- [ ] Accessibility QA
- [ ] SEO QA
- [ ] AEO/GEO QA
- [ ] Functional QA
- [ ] Technical QA
- [ ] Integration QA
- [ ] Multilingual QA
- [ ] Privacy/security verification
- [ ] Responsive verification
- [ ] Repository-state verification
- [ ] Deployment readiness
- [ ] Rollback readiness
- [ ] Production verification plan

The deployment protocol explicitly requires a controlled release rather than treating a successful local build as sufficient proof of production readiness.

---

## 10. EXECUTION ORDER

1. Reconcile repository and tracker.
2. Complete individual six-page content/HTML verification.
3. Complete cross-page shell verification.
4. Stabilize shared rebuild CSS/JS/translation infrastructure.
5. Perform final responsive/accessibility/SEO/AEO/GEO/technical QA.
6. Classify and clean obsolete deployment workflows.
7. Prepare release candidate.
8. Verify Git state and release evidence.
9. Deploy only after release authorization.
10. Perform live verification.

---

## 11. DO NOT REPEAT

Do not restart:

- Janavani identity selection
- six-page architecture discussion
- NOW / BUILDING / FUTURE definition
- Telegram positioning
- AI positioning
- Freenet placement
- general visual philosophy

unless new evidence requires a documented change.

---

## 12. NEXT 2 STEPS

1. Complete the remaining four-page/content convergence audit and record exact defects.
2. Audit and classify the GitHub Actions workflows before any deployment cleanup.

**Rule:** One controlled change at a time. Verify before moving forward.
