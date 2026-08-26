# JANAVANI — 11-SHARED-INFRASTRUCTURE

## 1. PURPOSE

This document defines the master shared-infrastructure specification for the Janavani website.

It establishes the rules for infrastructure shared across the six public pages, including shared CSS, JavaScript, translation support, navigation behaviour, common metadata, shared accessibility behaviour, asset loading, and implementation boundaries.

Shared infrastructure must support consistency without silently changing page-specific content or introducing unsupported functionality.

---

## 2. SHARED INFRASTRUCTURE PRINCIPLE

Shared infrastructure should be:

- stable;
- reusable;
- maintainable;
- accessible;
- responsive;
- predictable;
- page-agnostic where appropriate;
- compatible with verified content masters;
- compatible with the approved asset inventory;
- compatible with the approved design system.

Shared infrastructure should solve genuinely shared concerns rather than forcing unrelated page behaviour into common code.

---

## 3. SHARED INFRASTRUCTURE SCOPE

Shared infrastructure may include:

- `styles.css`;
- `script.js`;
- `gtranslation.js`;
- shared navigation;
- shared header;
- shared footer;
- shared responsive behaviour;
- shared interaction states;
- shared accessibility utilities;
- shared language/translation behaviour;
- shared metadata conventions;
- shared asset-loading conventions;
- shared reusable UI components.

Page-specific content and page-specific behaviour remain controlled by their respective content masters and page implementation specifications.

---

## 4. SHARED FILE RESPONSIBILITIES

### 4.1 styles.css

The shared stylesheet should contain only genuinely shared visual rules, including:

- design tokens;
- typography foundations;
- layout foundations;
- shared components;
- navigation;
- header;
- footer;
- buttons;
- links;
- forms;
- shared responsive rules;
- shared accessibility states.

Page-specific styling should be isolated and clearly controlled rather than duplicated unnecessarily.

### 4.2 script.js

The shared JavaScript layer should contain only verified shared behaviour, such as:

- navigation interaction;
- mobile navigation;
- common UI state handling;
- accessibility-related interaction;
- shared progressive enhancement;
- shared safe utilities.

It must not claim or simulate functionality that has not been verified.

### 4.3 gtranslation.js

Translation infrastructure should provide only verified language/translation behaviour.

It must not:

- fabricate translated content;
- overwrite meaningful content unexpectedly;
- break semantic HTML;
- prevent users from accessing the original language;
- introduce inaccessible controls.

Translation behaviour must remain compatible with multilingual design requirements.

---

## 5. SHARED HEADER AND NAVIGATION

The shared header should provide:

- Janavani identity;
- consistent primary navigation;
- language controls where implemented;
- accessible mobile navigation;
- predictable keyboard operation.

Navigation labels and destinations must correspond to verified public pages.

No invented page, route, social account, or external destination may be introduced through shared navigation.

The active page should be identifiable without relying solely on colour.

---

## 6. SHARED FOOTER

The shared footer may contain:

- primary navigation;
- relevant resource links;
- contact/get-involved pathways;
- privacy/legal links where applicable;
- verified social links;
- project identity.

Social links and external destinations must be independently verified before implementation.

The footer must not imply institutional affiliation, partnership, endorsement, or government relationship without verification.

---

## 7. SHARED DESIGN TOKENS

Shared infrastructure should consume the approved design-system tokens rather than creating competing values.

Shared tokens may include:

- colours;
- typography;
- spacing;
- borders;
- radii;
- elevation;
- breakpoints;
- focus treatment;
- status states.

Final production values must remain consistent with the approved `10-DESIGN-SYSTEM.md`.

---

## 8. SHARED RESPONSIVE BEHAVIOUR

Shared infrastructure must support:

- desktop;
- tablet;
- mobile;
- narrow mobile screens.

Verify shared behaviour for:

- header;
- navigation;
- footer;
- buttons;
- forms;
- typography;
- spacing;
- overflow;
- language controls;
- interactive components.

Responsive behaviour must not hide or remove important civic information or actions.

---

## 9. SHARED ACCESSIBILITY

Shared infrastructure must support:

- semantic HTML;
- keyboard accessibility;
- visible focus states;
- sufficient contrast;
- descriptive links;
- accessible controls;
- meaningful alternative text where applicable;
- responsive text;
- mobile usability;
- reduced-motion consideration;
- accessible language controls.

Accessibility must be preserved when shared components are reused across pages.

---

## 10. SHARED INTERACTION STATES

Reusable controls should define predictable:

- default;
- hover;
- focus;
- active;
- disabled;
- loading;
- error;
- success where applicable

states.

Interaction state must remain understandable without relying only on colour.

Shared JavaScript must not create misleading visual states that imply an operation succeeded when it has not been verified.

---

## 11. SHARED COMPONENT BOUNDARIES

Potential shared components include:

- header;
- navigation;
- footer;
- buttons;
- links;
- cards;
- forms;
- alerts;
- badges;
- breadcrumbs;
- language controls;
- social icons.

A component should become shared only when its structure and behaviour are genuinely common.

Page-specific content must not be duplicated into shared infrastructure merely for convenience.

---

## 12. MULTILINGUAL / TRANSLATION INFRASTRUCTURE

Shared translation behaviour must accommodate:

- longer translated text;
- different word lengths;
- different line breaks;
- script-specific typography;
- translated navigation;
- language selection;
- fallback to source language where appropriate.

Translation controls must have accessible names and keyboard operation.

The translation layer must not be treated as evidence that every language has been fully reviewed or professionally translated.

---

## 13. SHARED SEO / METADATA BOUNDARY

Shared infrastructure may establish common technical conventions for:

- canonical URL handling;
- Open Graph defaults;
- viewport metadata;
- structured document foundations;
- crawlable HTML;
- common metadata patterns.

Page-specific SEO remains controlled by each page's content requirements.

Shared infrastructure must not overwrite page-specific:

- title;
- meta description;
- canonical URL;
- Open Graph title;
- Open Graph description;
- page-specific structured data

without explicit verification.

---

## 14. SHARED ASSET LOADING

Shared infrastructure should use only assets recorded and controlled through `09-ASSET-INVENTORY.md`.

Asset loading should consider:

- correct repository path;
- stable filename;
- responsive behaviour;
- accessibility;
- performance;
- licensing/source requirements.

Do not introduce placeholder or invented production assets through shared code.

---

## 15. SECURITY / PRIVACY BOUNDARY

Shared infrastructure must not collect unnecessary sensitive personal information.

Forms and client-side scripts must not request or expose:

- Aadhaar numbers;
- passwords;
- financial credentials;
- authentication codes;
- private medical information;
- unnecessary government-identification data;
- other sensitive personal information.

Client-side code must not imply confidentiality, security, or privacy protections beyond what is actually implemented and documented.

---

## 16. CURRENT / BUILDING / FUTURE / RESEARCH

### 16.1 CURRENT

Shared infrastructure already verified and approved for the current public implementation.

### 16.2 BUILDING

Shared infrastructure currently being prepared, reviewed, or integrated during the rebuild.

### 16.3 FUTURE / RESEARCH

Prospective infrastructure or capabilities being considered for future development.

Future infrastructure must never be presented as current implementation without verification.

Planning material is not proof of deployment.

Only verified capabilities may be described as current.

---

## 17. CLAIM AND FUNCTIONALITY CONTROL

Shared code is part of the public product and therefore communicates claims.

Shared infrastructure must not:

- invent functionality;
- simulate successful operations without verification;
- imply unsupported integrations;
- imply government affiliation;
- imply formal partnerships;
- publish invented social channels;
- publish invented contact channels;
- present planned features as deployed.

A polished interface or working mock-up is not proof of production deployment.

---

## 18. PAGE-SPECIFIC BOUNDARY

Shared infrastructure must not erase the distinction between the six pages:

- Home explains what Janavani is and why it matters.
- How It Works explains the civic journey.
- Resources helps citizens understand and act.
- Vision explains where Janavani is going.
- About explains the project's origin, mission, values, and foundations.
- Contact / Get Involved explains how people can connect, contribute, or provide feedback.

Shared code should provide common infrastructure while preserving these content boundaries.

---

## 19. IMPLEMENTATION ORDER

Shared infrastructure should be standardized only after:

1. all six page content masters are verified;
2. the asset inventory is verified;
3. the design system is verified;
4. page-specific implementation requirements are understood;
5. shared responsibilities are clearly separated from page-specific responsibilities.

Shared CSS, JavaScript, and translation files must not be standardized prematurely if doing so would overwrite verified page-specific work.

---

## 20. CURRENT PUBLIC WEBSITE PROTECTION

The current public website must remain untouched during the rebuild until the appropriate implementation and review gate is passed.

Before changing shared production files, create an appropriate backup or version-control checkpoint.

No shared infrastructure change should be applied directly to the current public implementation without review.

---

## 21. DOCUMENTATION / SOURCE AUTHORITY

The shared infrastructure implementation should respect this authority order:

1. approved project architecture;
2. verified content masters;
3. verified asset inventory;
4. approved design system;
5. verified implementation requirements;
6. actual repository structure;
7. implementation details.

Planning notes, mock-ups, screenshots, or conversations must not override verified source documentation without an explicit project decision.

---

## 22. SHARED INFRASTRUCTURE QA

Before shared infrastructure is considered ready, verify:

- all shared files are readable;
- UTF-8 encoding is valid;
- no accidental terminal text exists;
- shared CSS does not unnecessarily duplicate page-specific rules;
- shared JavaScript contains only verified behaviour;
- translation behaviour is verified;
- navigation destinations are verified;
- social/external links are verified;
- accessibility states work;
- responsive behaviour works;
- assets resolve correctly;
- page-specific content remains intact;
- SEO metadata remains page-specific where required;
- current/building/future status remains accurate.

---

## 23. CONTENT STATUS

**Status:** Shared infrastructure specification established.

This document defines responsibilities and boundaries. It does not by itself confirm that the shared CSS, JavaScript, translation layer, navigation, or other infrastructure has been implemented or verified.

---

## 24. IMPLEMENTATION GATE

Shared infrastructure may proceed to implementation only when:

- six page content masters are verified;
- `09-ASSET-INVENTORY.md` is verified;
- `10-DESIGN-SYSTEM.md` is verified;
- shared/page-specific boundaries are confirmed;
- current public website protection is in place;
- implementation backups/version-control checkpoints are available;
- documentation QA has passed.

---

## 25. FINAL SHARED-INFRASTRUCTURE PRINCIPLE

Shared infrastructure should make the Janavani website more consistent, accessible, maintainable, and reliable without hiding uncertainty, inventing functionality, weakening page boundaries, or allowing implementation convenience to override verified civic content.

**Technology is not the purpose of Janavani.**
