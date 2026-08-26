# JANAVANI — 09-ASSET-INVENTORY

## 1. PURPOSE

This document is the master inventory and control specification for visual and supporting assets used by the Janavani website.

The asset inventory records what assets are required, what assets exist, where they belong, their source or licensing status, accessibility requirements, and whether they are CURRENT, BUILDING, or FUTURE / RESEARCH.

No asset should be treated as approved merely because it appears in a design, mock-up, previous discussion, or planning document.

---

## 2. ASSET INVENTORY PRINCIPLE

Every public-facing asset must be:

- identified;
- assigned to a page or shared site role;
- given a stable filename;
- stored in the correct repository location;
- checked for source and licensing status;
- checked for accessibility requirements;
- classified as CURRENT, BUILDING, or FUTURE / RESEARCH;
- verified before public implementation.

No invented, placeholder, or unsupported asset should be presented as an approved production asset.

---

## 3. BRAND AND LOGO ASSETS

### 3.1 Primary Janavani Logo

**Asset type:** Logo  
**Status:** CURRENT / verify before implementation  
**Purpose:** Primary Janavani brand identity  
**Requirements:**

- consistent proportions;
- transparent/background variants where required;
- sufficient resolution;
- accessible alternative text where used as meaningful content;
- no unauthorised alteration.

### 3.2 Logo Variants

Potential variants may include:

- horizontal logo;
- compact logo;
- light/dark-background variant;
- favicon or site icon.

Each variant must be independently verified before implementation.

---

## 4. IMAGE ASSETS

Images may be used only when they provide meaningful communication value.

For every image, record:

| Asset | Page / Role | Filename | Source | License / Rights | Alt Text | Status |
|---|---|---|---|---|---|---|
| Primary image | To be verified | To be verified | To be verified | To be verified | Required | CURRENT / BUILDING |
| Supporting image | To be verified | To be verified | To be verified | To be verified | Required | CURRENT / BUILDING |
| Future visual | Vision / future use | To be verified | To be verified | To be verified | Required | FUTURE / RESEARCH |

Do not invent image sources, licenses, filenames, or deployment status.

---

## 5. ICON ASSETS

Icons may include:

- navigation icons;
- accessibility-related icons;
- social icons;
- action/interface icons;
- document/resource icons.

Icons must be visually consistent and must not replace meaningful text where text is required for comprehension.

Interactive icons require:

- accessible names;
- keyboard accessibility;
- visible focus states;
- sufficient contrast;
- meaningful alternative text where appropriate.

---

## 6. SOCIAL ASSETS

Social icons and links are implementation-controlled assets.

Before publication:

- official social accounts must be independently verified;
- URLs must be independently verified;
- no invented social accounts may be published;
- external/community platforms must be clearly distinguished from official project channels;
- platform presence must not be represented as a formal partnership unless independently verified.

---

## 7. PAGE ASSET COVERAGE

### 7.1 HOME

Home assets may include:

- Janavani logo;
- hero/supporting visual;
- navigation and action icons;
- accessibility-supporting assets.

Only verified assets should be implemented.

### 7.2 HOW IT WORKS

Potential assets may include:

- civic journey diagrams;
- process illustrations;
- interface screenshots;
- explanatory icons.

Any screenshot or diagram must accurately represent the verified implementation.

### 7.3 RESOURCES

Potential assets may include:

- document/resource icons;
- category illustrations;
- explanatory diagrams;
- supporting visuals.

### 7.4 VISION

Potential assets may include:

- future-oriented conceptual illustrations;
- infrastructure diagrams;
- technology concept visuals.

Future visuals must not imply that planned capabilities are already deployed.

### 7.5 ABOUT

Potential assets may include:

- Janavani identity/logo;
- origin or philosophy visuals;
- project-development visuals where verified.

### 7.6 CONTACT / GET INVOLVED

Potential assets may include:

- verified GitHub/open-development icon;
- verified Telegram or other interface icon;
- contribution/action icons;
- accessibility-supporting assets.

No unverified channel should be represented as an active contact option.

---

## 8. ALT TEXT AND ACCESSIBILITY

Every meaningful image must have meaningful alternative text.

Decorative images should be treated as decorative and should not introduce redundant information.

Logo alternative text should identify Janavani when the logo functions as meaningful content or navigation.

Icons used as controls must have accessible names.

Accessibility requirements include:

- meaningful alternative text;
- keyboard accessibility;
- visible focus states;
- sufficient contrast;
- mobile usability;
- accessible social icons;
- no information conveyed only through colour.

---

## 9. SOURCE, LICENSE, AND RIGHTS

Every externally sourced asset must have a documented source and appropriate usage rights before public deployment.

Inventory records should identify, where applicable:

- creator;
- source;
- license;
- attribution requirement;
- modification permission;
- local repository path.

Do not assume that an image found online is free to use.

---

## 10. CURRENT / BUILDING / FUTURE / RESEARCH

### 10.1 CURRENT

Assets already verified and approved for the current public implementation.

### 10.2 BUILDING

Assets being prepared, designed, reviewed, or integrated into the rebuild.

### 10.3 FUTURE / RESEARCH

Conceptual or prospective assets associated with future capabilities or research directions.

Future assets must never be presented as evidence of current implementation without verification.

Planning material is not proof of deployment.

Only verified assets may be described as current.

---

## 11. PLACEHOLDER AND INVENTED ASSET CONTROL

The inventory must prevent:

- invented logos;
- invented social accounts;
- invented screenshots;
- invented interface states;
- invented government or institutional marks;
- invented partnerships;
- unsupported visual claims;
- placeholder assets being published as production assets.

If a required asset does not yet exist, mark it as **TO BE CREATED**, **TO BE VERIFIED**, or **FUTURE / RESEARCH** rather than inventing it.

---

## 12. ASSET NAMING AND STORAGE

Asset filenames should be:

- descriptive;
- stable;
- predictable;
- lowercase where practical;
- free from unnecessary spaces or ambiguous numbering.

The repository should maintain a clear asset directory structure, for example:

```text
assets/
├── brand/
├── images/
├── icons/
├── social/
├── diagrams/
└── screenshots/
```

The exact production path must be verified against the actual repository before implementation.

---

## 13. VISUAL CLAIM CONTROL

Visual assets are content claims.

A screenshot can imply that a feature exists.

A government logo can imply affiliation.

A diagram can imply an implemented architecture.

A social icon can imply an active official channel.

Therefore every asset must be reviewed for the claim it communicates, not only for visual quality.

---

## 14. IMPLEMENTATION GATE

Before an asset is implemented publicly, verify:

- asset identity;
- filename;
- repository location;
- page assignment;
- source;
- licensing / rights;
- accessibility requirements;
- visual accuracy;
- current/building/future status;
- associated content claim;
- responsive behaviour;
- documentation QA.

The current public website must remain untouched during the rebuild until the appropriate implementation and review gate is passed.

---

## 15. ASSET STATUS

**Status:** Master inventory specification established.

The inventory should be updated whenever an asset is created, replaced, verified, licensed, relocated, or approved for production.

Asset inventory status must not be confused with website deployment status.

---

## 16. FINAL ASSET PRINCIPLE

Janavani should use visual assets only when they improve understanding, trust, accessibility, or navigation. Every asset must communicate honestly, remain traceable to its source, and be verified before public implementation.

**Technology is not the purpose of Janavani.**
