# JANAVANI — DEPLOYMENT AND REPLACEMENT PROTOCOL

**Status:** Active  
**Version:** 1.0  
**Document:** `18-DEPLOYMENT-AND-REPLACEMENT-PROTOCOL.md`  
**Purpose:** Permanent release, verification, replacement, rollback, and evidence protocol for the Janavani public website.

---

## 1. PURPOSE

This document defines how a new Janavani website implementation moves from documented planning to local verification and, only after approval, replaces the existing public website.

The purpose is to prevent accidental production modification, undocumented changes, incomplete verification, irreversible deployment, and confusion between planned, implemented, and deployed capabilities.

This document is a permanent operational record. Future website upgrades must use it rather than reconstructing the process from old conversations, backups, screenshots, or terminal history.

---

## 2. CORE DEPLOYMENT PRINCIPLE

Deployment is a controlled release.

The existing public website is protected during the rebuild.

The new website is built independently, verified locally, tested as an integrated six-page system, and released only after the release gate is satisfied.

The deployment decision must be based on:

- verified implementation
- approved content
- approved design
- verified shared infrastructure
- accessibility verification
- SEO / AEO / GEO verification
- functional verification
- privacy and security verification
- multilingual verification
- deployment evidence
- backup and rollback readiness

A successful local build is not automatically a successful production deployment.

---

## 3. DEPLOYMENT BOUNDARY

The rebuild environment and the current public website are separate until the release decision.

### Protected during rebuild

The current public website must remain untouched during the rebuild.

Do not modify production merely to make the new implementation easier to build or test.

### New implementation

The new implementation is developed locally in the Janavani website repository.

The six pages are rebuilt fresh:

1. Home
2. How It Works
3. Resources
4. Vision
5. About
6. Contact / Get Involved

The new pages are not created by progressively patching the existing production pages.

---

## 4. PRE-DEPLOYMENT GATE

No replacement may occur until all required gates are complete.

Required gates:

- QA complete
- content verified
- design verified
- accessibility verified
- SEO verified
- AEO verified
- GEO verified
- privacy verified
- security verified
- links verified
- forms verified where implemented
- responsive behaviour verified
- multilingual behaviour verified
- integration verified
- deployment readiness confirmed
- rollback plan confirmed

Any critical failure blocks release.

---

## 5. REPOSITORY STATE VERIFICATION

Before release:

1. Confirm the repository and branch.
2. Review `git status`.
3. Confirm intended files are known.
4. Confirm accidental files are not included.
5. Confirm backups exist where required.
6. Confirm the new implementation is distinguishable from historical material.
7. Confirm documentation has been updated.
8. Confirm the release commit or release state is identifiable.

GitHub is the engineering source for the current implementation state.

Local editor state alone is not sufficient evidence of the final release state.

---

## 6. CONTENT VERIFICATION

Each page must be checked against its approved content master.

Content verification includes:

- factual accuracy
- constitutional framing
- current / building / future distinction
- citizen-agency language
- internal consistency
- terminology consistency
- absence of invented statistics
- absence of unsupported claims
- appropriate cross-links
- meaningful headings
- meaningful calls to action

The website must preserve Janavani's citizen-centered philosophy.

### Citizen agency

The preferred model is:

> JANAVANI ASSISTS  
> CITIZEN REVIEWS  
> CITIZEN DECIDES  
> CITIZEN ACTS

Janavani must not imply that AI, automation, or Janavani itself exercises public authority on behalf of the citizen.

---

## 7. DESIGN VERIFICATION

The final design must be verified as a complete civic information system, not merely as a collection of attractive components.

The design should be:

- premium
- civic
- intelligent
- trustworthy
- modern
- human
- restrained
- editorially clear
- accessible
- responsive
- visually meaningful

Use meaningful visual storytelling where it improves comprehension.

Avoid:

- decorative statistics
- repetitive card grids
- unnecessary visual effects
- invented metrics
- visual clutter
- decoration that competes with civic information

---

## 8. ACCESSIBILITY VERIFICATION

Accessibility must be checked before release.

Verify:

- semantic HTML
- logical heading hierarchy
- keyboard navigation
- visible focus states
- meaningful link text
- image ALT text
- sufficient contrast
- form labels where forms exist
- appropriate ARIA only where needed
- responsive text and controls
- usable navigation without relying solely on visual cues

Accessibility blockers prevent release.

---

## 9. SEO / AEO / GEO VERIFICATION

Each page must have deliberate search and answer-engine structure.

Verify:

- unique page title
- useful meta description
- canonical URL where applicable
- semantic headings
- meaningful internal links
- meaningful ALT text
- consistent Janavani entity description
- appropriate structured data
- direct answers to important questions
- useful question architecture where appropriate
- current / future distinction in public claims

SEO optimisation must not distort the civic meaning of the content.

---

## 10. FUNCTIONAL VERIFICATION

Verify every implemented interaction.

Examples:

- navigation
- menu behaviour
- internal links
- external links
- buttons
- forms where implemented
- back-to-top behaviour
- language controls
- responsive navigation
- dynamic elements
- error states

A feature must not be described publicly as working merely because its HTML or JavaScript exists.

---

## 11. PRIVACY AND SECURITY VERIFICATION

Privacy by Design, Privacy by Default, Safety by Design, and Safety by Default are Janavani ecosystem invariants.

Verify:

- minimum necessary collection
- purpose limitation
- identity minimisation
- explicit consent where required
- user review before consequential actions
- evidence protection
- provenance
- access control
- retention discipline
- auditability
- abuse prevention
- truthful capability descriptions

### Why privacy matters

Civic participation can involve information that is personally sensitive, politically sensitive, legally significant, socially sensitive, or capable of exposing a citizen to unwanted attention or retaliation.

Privacy therefore supports citizen agency. A citizen who must expose unnecessary personal information merely to understand or pursue a civic issue may be discouraged from participating.

Privacy is not presented as an absolute argument against useful civic information. Janavani must distinguish:

- information that is genuinely necessary
- information that is useful but optional
- information that should not be collected
- information that may be publicly available but still should not be unnecessarily aggregated
- information whose disclosure may create safety or misuse risks

### Counter-arguments and Janavani's position

**Counter-argument: "Transparency requires collecting more information."**

Response: transparency and unnecessary collection are not identical. Janavani should seek the minimum information needed for the stated civic purpose while preserving appropriate provenance and accountability.

**Counter-argument: "Government records are public, so privacy is irrelevant."**

Response: public availability does not automatically justify unlimited aggregation, profiling, redistribution, or retention. Context and purpose still matter.

**Counter-argument: "More identity information makes civic action more trustworthy."**

Response: identity may sometimes be necessary, but unnecessary identity exposure can create risk. Janavani should minimise identity where the workflow permits.

**Counter-argument: "AI needs more data to work better."**

Response: technical convenience is not by itself sufficient justification for collecting personal information. AI capability must remain purpose-bound and subject to appropriate privacy controls.

**Counter-argument: "Privacy makes accountability harder."**

Response: the objective is not secrecy. The objective is accountable civic infrastructure that protects people while preserving evidence, provenance, lawful process, and appropriate transparency.

**Counter-argument: "Citizens can simply choose not to use Janavani."**

Response: meaningful citizen agency requires informed choice. Privacy should therefore be a property of the system rather than something citizens must sacrifice merely to participate.

### Placement across the website

Privacy should not be isolated into a single technical paragraph.

Primary treatment:

- **About:** why privacy and citizen agency are part of Janavani's identity.
- **How It Works:** how privacy considerations affect evidence, identity, review, and action.
- **Resources:** deeper explanation of privacy, safety, evidence, provenance, and technical concepts.
- **Vision:** privacy-preserving civic infrastructure as a long-term design principle.

Home should communicate the principle briefly rather than becoming a privacy policy page.

---

## 12. MULTILINGUAL VERIFICATION

The multilingual experience must be tested independently from the existence of translator code.

Verify:

- translator loads
- language selector is visible and usable
- supported languages are configured correctly
- page content remains structurally usable after translation
- no duplicate translator controls
- no broken layout caused by translated text
- no critical untranslated UI strings where translation is expected
- fallback behaviour is truthful

Translation availability is not evidence that every translated phrase has been independently verified.

---

## 13. INTEGRATION VERIFICATION

After all six pages are individually verified, shared infrastructure is integrated and regression-tested.

Shared infrastructure includes:

- `styles.css`
- `script.js`
- `gtranslation.js`

The correct sequence is:

```text
Six fresh pages
      ↓
Individual page verification
      ↓
Shared infrastructure integration
      ↓
Six-page regression testing
      ↓
Final release QA
```

Do not use shared infrastructure changes as an excuse to repeatedly patch individual production pages.

---

## 14. DEPLOYMENT EVIDENCE

Deployment must have evidence.

Evidence may include:

- repository release state
- deployment state
- user-accessible pathway
- runtime evidence
- production evidence
- HTTP status
- HTTPS
- domain
- DNS
- SSL
- browser verification
- post-deployment testing

A source file existing in GitHub is not proof of deployment.

A screenshot is not proof of deployment.

A prototype is not proof of deployment.

Planning material is not proof of deployment.

---

## 15. BACKUP AND ROLLBACK

Before replacement:

- preserve the known-good public version
- preserve a repository reference
- preserve necessary production files
- record the release state
- record the replacement point
- document the rollback trigger
- document the rollback procedure

Do not destroy the previous working version.

Replacement must remain reversible.

Rollback must itself be verified.

---

## 16. REPLACEMENT PROTOCOL

The replacement sequence is:

1. Freeze the approved release.
2. Confirm repository state.
3. Confirm six-page QA.
4. Confirm shared infrastructure regression testing.
5. Confirm deployment readiness.
6. Confirm backup.
7. Confirm rollback plan.
8. Confirm release authorization.
9. Replace the public implementation.
10. Verify the production website.
11. Record deployment evidence.
12. Keep the previous version available for rollback until release stability is confirmed.

No production replacement should be performed merely because the local website "looks good."

---

## 17. PUBLIC WEBSITE PROTECTION

The current public website must remain untouched during the rebuild.

Rules:

- do not replace production early
- do not modify production to test unfinished work
- do not mix experimental files with the production release without review
- do not delete the old version before release stability is established
- do not treat a local success as production approval

The public website remains the protected known-good reference until the release gate.

---

## 18. DOMAIN / HOSTING VERIFICATION

Before and after deployment verify:

- correct domain
- correct hosting target
- correct deployment target
- correct branch or release
- correct site root
- expected assets available
- expected HTML files available

Do not assume the hosting environment is identical to the local environment.

---

## 19. DNS / SSL / HTTPS VERIFICATION

Verify:

- DNS resolves correctly
- HTTPS is active
- SSL certificate is valid
- expected canonical domain resolves
- HTTP to HTTPS behaviour is correct where configured
- no unexpected mixed-content failures exist

Record significant production evidence in the release documentation.

---

## 20. POST-DEPLOYMENT VERIFICATION

After replacement verify:

- homepage loads
- all six pages load
- navigation works
- links work
- forms work where implemented
- language controls work
- metadata is present
- structured data is valid
- no critical console errors
- no critical network errors
- mobile behaviour
- accessibility behaviour
- rollback remains possible

Post-deployment verification is mandatory.

---

## 21. SIX-PAGE DEPLOYMENT CHECK

The six pages are:

### HOME

Purpose: establish the constitutional premise, citizen agency, Janavani's purpose, and the path from civic problem to informed action.

Home begins from:

> **THE REPUBLIC BEGINS WITH THE PEOPLE**

> **WE, THE PEOPLE OF INDIA** having solemnly resolved to constitute India into a **SOVEREIGN SOCIALIST SECULAR DEMOCRATIC REPUBLIC**

Janavani begins from this constitutional premise: citizens are not spectators of governance. They are participants in the Republic.

Home should provide the high-level orientation and direct users toward How It Works.

### HOW IT WORKS

Purpose: explain the citizen journey and what Janavani actually helps a citizen do.

It should expand the operational journey introduced by Home without duplicating the whole Home page.

### RESOURCES

Purpose: provide civic knowledge, source material, explanations, references, and deeper technical/civic understanding.

### VISION

Purpose: explain the larger destination of Janavani and distinguish current capabilities from building and future/research capabilities.

### ABOUT

Purpose: explain Janavani's identity, principles, citizen-agency model, privacy philosophy, architecture, and relationship to the wider ecosystem.

### CONTACT / GET INVOLVED

Purpose: provide appropriate ways to communicate, participate, contribute, collaborate, or access relevant channels without implying government authority or guaranteed outcomes.

Each page must be individually verified before final six-page regression testing.

---

## 22. SHARED INFRASTRUCTURE DEPLOYMENT CHECK

Shared infrastructure is finalised only after the six pages have been individually developed and verified.

Required shared components:

- `styles.css`
- `script.js`
- `gtranslation.js`

Verify:

- no duplicate global styles
- no accidental page-specific dependency
- no duplicate translator wrapper
- no duplicate translator loader
- no conflicting scripts
- no broken navigation
- no regression between pages
- responsive behaviour across all six pages

---

## 23. FAILURE / ABORT CONDITIONS

ABORT the release when any critical issue exists, including:

- deployment failure
- critical defect
- broken navigation
- security issue
- privacy issue
- accessibility blocker
- incorrect public claim
- major content error
- broken multilingual behaviour
- missing critical asset
- critical console or network failure
- inability to establish rollback

Do not proceed merely to meet a schedule.

---

## 24. ROLLBACK CONDITIONS

Rollback when:

- production is materially broken
- critical navigation fails
- essential functionality fails
- privacy or security risk is discovered
- major accessibility failure is discovered
- incorrect public claims are exposed
- critical assets fail
- multilingual infrastructure causes material failure
- production differs materially from the approved release
- rollback is safer than attempting an emergency production patch

Rollback should restore the known-good version, then the issue should be documented before another release attempt.

---

## 25. CURRENT / BUILDING / FUTURE STATUS

Every Janavani capability must be classified.

### CURRENT

Implemented and verified as available to users.

### BUILDING

An active development target whose implementation is underway or formally planned.

### FUTURE / RESEARCH

Strategic, exploratory, experimental, or long-term capability.

Planning material is not proof of deployment.

Screenshot is not proof of deployment.

Prototype is not proof of deployment.

Source-code presence is not proof of deployment.

Future capability must not be presented as current.

---

## 26. CLAIM CONTROL AFTER DEPLOYMENT

Public claims must remain aligned with verified implementation.

Avoid unsupported statements about:

- government affiliation
- government endorsement
- guaranteed outcomes
- guaranteed legal correctness
- official determinations
- capabilities that are only planned
- technologies that are only research

AI assistance must not be presented as an official government determination.

An attempted transmission is not the same as confirmed delivery.

---

## 27. CHANGE CONTROL

Every significant website change should have:

- documented purpose
- affected page(s)
- affected shared infrastructure
- content impact
- design impact
- functional impact
- privacy/security impact where relevant
- QA evidence
- rollback consideration
- documentation update

Do not repeat completed audits unnecessarily. Use dated audit records and the documentation knowledge base to identify the next unresolved question.

---

## 28. DOCUMENTATION AND EVIDENCE

The website rebuild must remain understandable to a future maintainer.

Documentation should preserve:

- content decisions
- content sources
- page responsibilities
- asset decisions
- design decisions
- shared infrastructure decisions
- privacy decisions
- SEO decisions
- accessibility decisions
- verification results
- deployment evidence
- rollback information
- change history

The repository should contain enough documentation that a future upgrade does not require reconstructing the project from conversation history.

---

## 29. RELEASE AUTHORIZATION

Replacement requires an explicit release decision.

Before authorization, confirm:

- six pages complete
- content approved
- design approved
- functionality verified
- accessibility verified
- SEO/AEO/GEO verified
- privacy/security verified
- multilingual behaviour verified
- shared infrastructure verified
- regression testing complete
- production backup complete
- rollback plan available
- deployment target confirmed

No authorization means no replacement.

---

## 30. QA CHECKLIST

### Content

- [ ] Six content masters reviewed
- [ ] Current / Building / Future labels verified
- [ ] Constitutional framing verified
- [ ] Citizen-agency language verified
- [ ] No unsupported claims
- [ ] No invented statistics
- [ ] Internal links verified

### Design

- [ ] Premium civic presentation
- [ ] Responsive
- [ ] Editorial hierarchy
- [ ] Visual assets meaningful
- [ ] No unnecessary repetitive cards

### Accessibility

- [ ] Semantic structure
- [ ] Keyboard navigation
- [ ] Focus states
- [ ] ALT text
- [ ] Contrast
- [ ] Form labels where applicable

### SEO / AEO / GEO

- [ ] Titles
- [ ] Descriptions
- [ ] Canonicals
- [ ] Headings
- [ ] Internal links
- [ ] Structured data
- [ ] Direct-answer content

### Function

- [ ] Navigation
- [ ] Links
- [ ] Buttons
- [ ] Forms where applicable
- [ ] Language controls
- [ ] Responsive interactions

### Privacy / Security

- [ ] Minimum collection
- [ ] Purpose limitation
- [ ] Identity minimisation
- [ ] User review
- [ ] Evidence protection
- [ ] Provenance
- [ ] Access control
- [ ] Retention discipline
- [ ] Abuse prevention

### Release

- [ ] Backup
- [ ] Rollback
- [ ] Deployment evidence
- [ ] Production verification

---

## 31. CONTENT STATUS

The website content is governed by the Janavani Website Knowledge Base.

Primary documentation includes:

- `00-README-WEBSITE-KNOWLEDGE-BASE.md`
- `01-PROJECT-PRINCIPLES.md`
- `02-SIX-PAGE-CONTENT-ARCHITECTURE.md`
- `03-HOME-CONTENT-MASTER.md`
- `04-HOW-IT-WORKS-CONTENT-MASTER.md`
- `05-RESOURCES-CONTENT-MASTER.md`
- `06-VISION-CONTENT-MASTER.md`
- `07-ABOUT-CONTENT-MASTER.md`
- `08-CONTACT-CONTENT-MASTER.md`
- `09-ASSET-INVENTORY.md`
- `10-DESIGN-SYSTEM.md`
- `11-SHARED-INFRASTRUCTURE.md`
- `12-PRIVACY-AND-CITIZEN-AGENCY.md`
- `13-NOW-BUILDING-FUTURE.md`
- `14-HOME-HOW-IT-WORKS-BOUNDARY.md`
- `15-SEO-AND-METADATA-STANDARDS.md`
- `16-ACCESSIBILITY-STANDARDS.md`
- `17-QUALITY-ASSURANCE-CHECKLIST.md`
- this deployment protocol
- `19-CHANGELOG.md`
- `20-CONTENT-REFERENCE-REGISTER.md`

The Content Reference Register identifies source material and its authority classification.

---

## 32. FINAL DEPLOYMENT / REPLACEMENT PRINCIPLE

The Janavani public website must never be treated as an experimental workspace.

Build separately.

Document continuously.

Verify locally.

Verify the integrated six-page system.

Protect the current public version.

Back up before replacement.

Release only after authorization.

Verify production after replacement.

Keep rollback possible.

Document what changed and why.

Future maintainers must be able to understand the website without reconstructing its history from scratch.

**Technology is not the purpose of Janavani.**
