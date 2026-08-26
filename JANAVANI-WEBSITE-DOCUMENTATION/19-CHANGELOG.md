# JANAVANI — WEBSITE CHANGELOG

**Status:** Active  
**Version:** 1.0  
**Document:** `19-CHANGELOG.md`  
**Purpose:** Permanent historical record of significant Janavani website decisions, changes, verification, release state, and upgrade history.

---

## 1. PURPOSE

This changelog records significant changes to the Janavani public website and its supporting documentation.

Its purpose is to ensure that future maintainers can understand:

- what changed
- why it changed
- when the change was made
- which pages or shared files were affected
- which documentation governed the decision
- what verification was performed
- whether the change was current, building, future, or historical
- whether the change reached production
- how the change can be reversed or understood later

The changelog is a permanent project record.

Future website upgrades must update this document rather than relying on conversation history, terminal history, screenshots, memory, or undocumented local changes.

---

## 2. CHANGELOG AUTHORITY

This changelog records history.

It does **not** override current architectural or governance authority.

When historical information conflicts with current direction, consult the current authority hierarchy:

1. `docs/JANAVANI_NORTH_STAR.md`
2. `docs/JANAVANI_ECOSYSTEM_CHARTER.md`
3. `docs/JANAVANI_CONSTITUTIONAL_GOVERNANCE.md`
4. `docs/SOURCE_OF_TRUTH.md`
5. `docs/JANAVANI_MASTER_ARCHITECTURE.md`
6. `docs/JANAVANI_PRODUCT_LANDSCAPE.md`
7. `ROADMAP.md`
8. `docs/MASTER_TASK_CHECKLIST.md`
9. `docs/CAPABILITY_REGISTRY.md`
10. `planning/`
11. `docs/`
12. `JANAVANI-WEBSITE-DOCUMENTATION/`
13. historical/archive material

The actual GitHub repository remains the implementation authority for what currently exists.

---

## 3. CHANGE RECORDING RULES

Every significant website change should record:

- Date
- Change ID
- Status
- Area
- Affected page(s)
- Affected shared infrastructure
- Reason
- Decision
- Implementation state
- Verification state
- Documentation references
- Deployment state
- Rollback/recovery information where relevant

Do not record a change as deployed unless deployment has actually been verified.

Do not record a planned change as implemented.

Do not treat screenshots, prototypes, source-code presence, or planning documents as proof of production deployment.

---

## 4. STATUS VOCABULARY

### CURRENT

Implemented and verified as available to users.

### BUILDING

An active development target whose implementation is underway or formally planned.

### FUTURE / RESEARCH

Strategic, exploratory, experimental, or long-term capability.

### HISTORICAL / SUPERSEDED

A previous decision or implementation that is retained for historical understanding but is no longer current direction.

### VERIFIED

The relevant verification has actually been performed and recorded.

### DEPLOYED

The implementation has been released and production verification has established that it is publicly available.

---

# 5. WEBSITE REBUILD STRATEGY

## Change ID: WEBSITE-REBUILD-001

**Date:** August 2026  
**Status:** CURRENT — BUILDING  
**Area:** Website architecture / implementation strategy

### Decision

The existing six public website pages will **not** be progressively repaired through patch work.

The six pages will be rebuilt fresh:

1. Home
2. How It Works
3. Resources
4. Vision
5. About
6. Contact / Get Involved

The new implementation will be developed and verified locally before replacing the existing public website.

### Reason

Repeated patching created accumulated complexity, historical backups, duplicated structures, encoding problems, and difficulty establishing a clean baseline.

A fresh rebuild provides a controlled implementation boundary.

### Required sequence

```text
Existing public website
        │
        │ protected
        ▼
Fresh local six-page rebuild
        ↓
Individual page verification
        ↓
Shared infrastructure integration
        ↓
Six-page regression testing
        ↓
Final QA
        ↓
Release authorization
        ↓
Production replacement
        ↓
Production verification
        ↓
Rollback retained until stable
```

### Governing document

`18-DEPLOYMENT-AND-REPLACEMENT-PROTOCOL.md`

---

# 6. SIX-PAGE ARCHITECTURE

## Change ID: WEBSITE-ARCHITECTURE-001

**Date:** August 2026  
**Status:** CURRENT  
**Area:** Information architecture

The website consists of six primary pages.

| Page | Primary responsibility |
|---|---|
| Home | Constitutional premise, citizen agency, purpose, orientation |
| How It Works | Citizen journey and operational explanation |
| Resources | Civic knowledge, references, explanations and deeper material |
| Vision | Larger destination and current/building/future distinction |
| About | Identity, principles, architecture, privacy and citizen agency |
| Contact / Get Involved | Communication, participation, contribution and collaboration |

### Boundary rule

Each concept should have a primary home.

The site should avoid unnecessary duplication while allowing important concepts to be briefly introduced and then expanded on the appropriate page.

### Governing documents

- `02-SIX-PAGE-CONTENT-ARCHITECTURE.md`
- `14-HOME-HOW-IT-WORKS-BOUNDARY.md`

---

# 7. HOME PAGE CONSTITUTIONAL OPENING

## Change ID: HOME-CONSTITUTIONAL-001

**Date:** August 2026  
**Status:** APPROVED CONTENT DIRECTION  
**Area:** Home content

### Decision

The Home page begins with the constitutional premise:

> **THE REPUBLIC BEGINS WITH THE PEOPLE**

> **WE, THE PEOPLE OF INDIA** having solemnly resolved to constitute India into a **SOVEREIGN SOCIALIST SECULAR DEMOCRATIC REPUBLIC**

This establishes the civic foundation before introducing the technology.

### Approved conceptual framing

Janavani begins from the constitutional premise that citizens are not spectators of governance. They are participants in the Republic.

### Presentation principle

The constitutional opening should be presented with strong editorial hierarchy and visual dignity.

It should not feel like a decorative quotation or a legal disclaimer.

The Home page should then transition naturally from:

```text
Constitutional premise
        ↓
Citizen agency
        ↓
Why Janavani exists
        ↓
What Janavani helps with
        ↓
How It Works
        ↓
Resources / deeper understanding
        ↓
Participation
```

### Governing documents

- `03-HOME-CONTENT-MASTER.md`
- `14-HOME-HOW-IT-WORKS-BOUNDARY.md`

---

# 8. HOME / HOW IT WORKS RELATIONSHIP

## Change ID: HOME-HIW-001

**Date:** August 2026  
**Status:** CURRENT CONTENT DIRECTION  
**Area:** Content architecture

Home and How It Works share information but have different responsibilities.

### Home

Home answers:

> Why does Janavani exist, what is it, and why should a citizen care?

### How It Works

How It Works answers:

> What happens when a citizen brings a real civic problem to Janavani?

### Boundary

Home introduces the journey.

How It Works explains the journey in operational depth.

How It Works must not simply repeat Home.

Home must not become an operational manual.

### Core journey

```text
Citizen Reality
      ↓
Understanding
      ↓
Evidence / Context
      ↓
Correct Authority
      ↓
Lawful Civic Action
      ↓
Submission / Communication
      ↓
Government Response
      ↓
Tracking
      ↓
Follow-up / RTI / Escalation
      ↓
Outcome
      ↓
Feedback / Accountability
      ↓
Public Learning
```

This journey is part of the wider Janavani ecosystem model and must be presented according to verified implementation status.

---

# 9. PRIVACY AND CITIZEN AGENCY

## Change ID: PRIVACY-001

**Date:** August 2026  
**Status:** CURRENT DESIGN PRINCIPLE  
**Area:** Privacy / safety / content

Privacy by Design, Privacy by Default, Safety by Design, and Safety by Default are Janavani ecosystem invariants.

### Core principles

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

### Why privacy matters

Civic participation can involve information that is personally sensitive, politically sensitive, legally significant, socially sensitive, or capable of exposing a citizen to unwanted attention or retaliation.

Privacy therefore supports citizen agency.

The objective is not secrecy. The objective is accountable civic infrastructure that protects people while preserving appropriate evidence, provenance, lawful process and transparency.

### Counter-arguments addressed

The website documentation explicitly addresses the following arguments:

- transparency requires collecting more information
- public government records make privacy irrelevant
- more identity information always makes civic action more trustworthy
- AI needs more personal data
- privacy makes accountability harder
- citizens can simply choose not to use Janavani

### Website placement

Primary treatment:

- About — identity and philosophy
- How It Works — practical handling of identity, evidence, review and action
- Resources — deeper technical/civic explanation
- Vision — privacy-preserving future infrastructure

Home should communicate the principle briefly rather than becoming a privacy-policy page.

### Governing documents

- `12-PRIVACY-AND-CITIZEN-AGENCY.md`
- `18-DEPLOYMENT-AND-REPLACEMENT-PROTOCOL.md`

---

# 10. ASSET INVENTORY

## Change ID: ASSETS-001

**Date:** August 2026  
**Status:** INVENTORIED  
**Area:** Visual assets

A local asset inventory established **33 files** in the `assets` directory.

### Asset categories identified

- SVG
- PNG
- WEBP
- BMP
- TIF

### Important visual groups

- Janavani banner assets
- Janavani profile/logo assets
- civic pathway diagrams
- citizen journey/problem/vigilance visuals
- Home hero and explanatory visuals
- Preamble of India assets
- social-media QR codes
- social-media icons
- favicon

### Rule

Existing assets should be preserved as source material.

An asset should be used because it improves understanding, identity, credibility or visual storytelling — not merely because it exists.

Duplicate formats should be evaluated before selecting the production asset.

### Governing document

`09-ASSET-INVENTORY.md`

---

# 11. DESIGN SYSTEM DIRECTION

## Change ID: DESIGN-001

**Date:** August 2026  
**Status:** APPROVED DIRECTION  
**Area:** Visual design

The website should be:

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

### Avoid

- decorative statistics
- repetitive card grids
- unnecessary visual effects
- invented metrics
- visual clutter
- decoration competing with civic information

### Principle

Premium presentation means clarity, hierarchy, restraint and confidence — not excessive decoration.

### Governing document

`10-DESIGN-SYSTEM.md`

---

# 12. SHARED INFRASTRUCTURE STRATEGY

## Change ID: INFRASTRUCTURE-001

**Date:** August 2026  
**Status:** BUILDING  
**Area:** Shared website infrastructure

Shared infrastructure consists of:

- `styles.css`
- `script.js`
- `gtranslation.js`

### Required build order

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

Shared infrastructure should be standardized only after the six fresh pages have individually established their intended structure and behaviour.

---

# 13. ENCODING / MOJIBAKE LESSON

## Change ID: ENCODING-001

**Date:** August 2026  
**Status:** HISTORICAL LESSON / BUILDING SAFEGUARD  
**Area:** Encoding

Previous website work exposed UTF-8/mojibake problems, including sequences such as:

- `â€”`
- `Â·`
- `Â©`
- `â†‘`

The correct lesson for the fresh rebuild is not to continue repairing accumulated encoding damage.

### New-build rule

All newly created website files must use valid UTF-8.

Verification must explicitly check for:

- actual Unicode replacement character `U+FFFD`
- obvious mojibake sequences
- accidental terminal text
- inconsistent encoding

The fresh rebuild must establish a clean encoding baseline from the beginning.

---

# 14. CONTENT REFERENCE REGISTER

## Change ID: CONTENT-REFERENCE-001

**Date:** August 2026  
**Status:** CURRENT  
**Area:** Content governance

A permanent Content Reference Register was established as:

`20-CONTENT-REFERENCE-REGISTER.md`

### Purpose

The register identifies source material used to inform:

- website identity
- philosophy
- product direction
- architecture
- future capabilities
- public claims
- privacy
- technology explanations

### Classification system

References may be:

- CANONICAL
- CURRENT PRODUCT
- CURRENT ECOSYSTEM DIRECTION
- FUTURE / RESEARCH
- HISTORICAL / SUPERSEDED
- REFERENCE ONLY

### Claim rule

A reference describing a future capability must not automatically become a claim that the website currently implements that capability.

Current implementation must be verified against the actual repository.

---

# 15. CURRENT / BUILDING / FUTURE CLAIM CONTROL

## Change ID: CLAIMS-001

**Date:** August 2026  
**Status:** CURRENT  
**Area:** Public claims

Every Janavani capability must be classified.

### CURRENT

Implemented and verified as available to users.

### BUILDING

An active development target whose implementation is underway or formally planned.

### FUTURE / RESEARCH

Strategic, exploratory, experimental, or long-term capability.

### Rules

Planning material is not proof of deployment.

Screenshot is not proof of deployment.

Prototype is not proof of deployment.

Source-code presence is not proof of deployment.

Future capability must not be presented as current.

### Citizen agency language

The preferred model is:

```text
JANAVANI ASSISTS
CITIZEN REVIEWS
CITIZEN DECIDES
CITIZEN ACTS
```

Janavani must not imply government authority, guaranteed outcomes, guaranteed legal correctness, or official government determination.

---

# 16. DEPLOYMENT / REPLACEMENT PROTOCOL

## Change ID: DEPLOYMENT-001

**Date:** August 2026  
**Status:** VERIFIED  
**Area:** Release engineering

`18-DEPLOYMENT-AND-REPLACEMENT-PROTOCOL.md` was created and verified.

### Verification result

**STEP 3D-21 PASS**

Verified items include:

- all 32 required sections
- six-page deployment structure
- controlled-release principle
- protected public website
- local-build strategy
- privacy/safety requirements
- current/building/future claim control
- shared infrastructure requirements
- rollback/replacement procedure
- claim safety
- Unicode replacement-character check
- accidental terminal-text check
- approved final line

### Approved final line

> **Technology is not the purpose of Janavani.**

The deployment protocol is now a permanent operational reference.

---

# 17. DOCUMENTATION KNOWLEDGE BASE

## Change ID: DOCUMENTATION-001

**Date:** August 2026  
**Status:** CURRENT  
**Area:** Project continuity

The directory:

`JANAVANI-WEBSITE-DOCUMENTATION`

was established as the permanent website knowledge base.

### Documentation principle

Future maintainers should be able to understand the website without reconstructing its history from conversation.

The documentation should preserve:

- content decisions
- page responsibilities
- asset decisions
- design decisions
- privacy decisions
- SEO decisions
- accessibility decisions
- shared infrastructure decisions
- verification evidence
- deployment evidence
- rollback information
- change history

---

# 18. CURRENT WEBSITE REBUILD STATE

## Change ID: REBUILD-STATUS-001

**Date:** August 2026  
**Status:** BUILDING

### Completed foundation work

- website documentation directory established
- asset inventory completed
- content reference register established
- deployment/replacement protocol completed
- deployment protocol verification passed
- six-page fresh-rebuild strategy established
- Home constitutional opening established
- Home / How It Works boundary established
- privacy philosophy and counter-arguments documented
- current/building/future claim-control model established
- premium civic design direction established

### Not yet completed

The fresh six-page implementation is not yet considered complete.

The existing public website remains protected until the new implementation passes the release gate.

---

# 19. NEXT BUILD SEQUENCE

The intended sequence is:

```text
Documentation foundation
        ↓
Content masters
        ↓
Home
        ↓
How It Works
        ↓
Resources
        ↓
Vision
        ↓
About
        ↓
Contact / Get Involved
        ↓
Individual verification of each page
        ↓
Shared CSS / JS / translation integration
        ↓
Six-page regression testing
        ↓
Final QA
        ↓
Production backup
        ↓
Release authorization
        ↓
Production replacement
        ↓
Post-deployment verification
```

The exact implementation sequence may be updated through documented change control.

---

# 20. FUTURE WEBSITE UPGRADE PROCEDURE

A future maintainer should follow this procedure:

1. Read this changelog.
2. Read `00-README-WEBSITE-KNOWLEDGE-BASE.md`.
3. Read `02-SIX-PAGE-CONTENT-ARCHITECTURE.md`.
4. Read the relevant page content master.
5. Read `10-DESIGN-SYSTEM.md`.
6. Read `11-SHARED-INFRASTRUCTURE.md`.
7. Read `12-PRIVACY-AND-CITIZEN-AGENCY.md`.
8. Read `15-SEO-AND-METADATA-STANDARDS.md`.
9. Read `16-ACCESSIBILITY-STANDARDS.md`.
10. Read `17-QUALITY-ASSURANCE-CHECKLIST.md`.
11. Read `18-DEPLOYMENT-AND-REPLACEMENT-PROTOCOL.md`.
12. Check the current GitHub implementation.
13. Identify the unresolved change.
14. Document the proposed change.
15. Implement in the appropriate environment.
16. Verify.
17. Update this changelog.
18. Update affected knowledge-base documents.
19. Preserve rollback information where relevant.

Never begin by blindly patching the production website.

---

# 21. CHANGE RECORD TEMPLATE

Future entries should use this structure:

```text
## Change ID: YYYY-MM-DD-NAME

Date:
Status:
Area:

### Change

What changed?

### Reason

Why was it changed?

### Affected pages/files

Which pages, assets, CSS, JavaScript, documentation or infrastructure changed?

### Decision

What was approved?

### Verification

What was actually verified?

### Deployment

Was it deployed?

### Rollback

What is the recovery path?

### Documentation

Which documents were updated?
```

---

# 22. IMPORTANT HISTORICAL PRINCIPLE

Historical backups, terminal commands and old audit records are valuable evidence, but they are not automatically current authority.

The project should preserve history without allowing historical implementation problems to control the new architecture.

The fresh rebuild exists specifically to establish a clean, understandable and maintainable baseline.

---

# 23. RELEASE HISTORY

## 2026-08 — Documentation and Rebuild Foundation

### Recorded outcomes

- Permanent website knowledge base established.
- Asset inventory established.
- Content reference governance established.
- Six-page fresh rebuild strategy established.
- Home constitutional premise established.
- Home / How It Works content boundary established.
- Privacy and citizen-agency principles documented.
- Deployment and replacement protocol established.
- Deployment protocol passed structural verification.
- Changelog established as the permanent website historical record.

### Production state

The existing public website remains protected.

The fresh rebuild is a separate development effort until final release authorization.

---

# 24. CURRENT CHANGELOG STATUS

**Status:** Active.

This document must be updated whenever a significant website decision or implementation change occurs.

No significant change should exist only in conversation.

No production deployment should be recorded without deployment evidence.

No future capability should be recorded as current without verified implementation.

---

# 25. FINAL CONTINUITY PRINCIPLE

The purpose of this changelog is not merely to remember what was changed.

It is to preserve **why the website is structured the way it is**, what was deliberately rejected, what remains unfinished, what is current, what is future, and how the next maintainer should proceed.

The goal is that a future Janavani website upgrade begins with understanding rather than reconstruction.

**Technology is not the purpose of Janavani.**
