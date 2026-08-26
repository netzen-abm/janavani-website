# JANAVANI — 17-QUALITY-ASSURANCE-CHECKLIST

## 1. PURPOSE

This document defines the master quality-assurance framework for the Janavani website and its public-facing implementation.

QA exists to verify that approved content, design, accessibility, privacy, citizen-agency principles, SEO/AEO/GEO standards, technical behaviour, and implementation boundaries are preserved during development and before publication.

QA is evidence-based verification.

A checklist, screenshot, polished interface, successful local rendering, or passing automated test is not by itself proof of complete readiness.

---

## 2. CORE QA PRINCIPLE

Janavani should be verified as a complete citizen-facing system rather than as isolated visual pages.

Quality means:

1. the right content is present;
2. the content is accurate and bounded;
3. the approved page responsibilities are preserved;
4. the interface is usable;
5. accessibility requirements are addressed;
6. privacy and citizen agency are preserved;
7. SEO/AEO/GEO signals are accurate;
8. integrations behave as claimed;
9. current/building/future status is truthful;
10. the implementation is supported by repository evidence.

QA must never be reduced to visual appearance alone.

---

## 3. QA LAYERS

QA should operate across multiple layers.

### CONTENT QA

Verify:

- approved content is used;
- wording is not accidentally changed;
- page boundaries remain clear;
- claims remain supported;
- current/building/future labels remain accurate;
- privacy and citizen-agency principles remain intact.

### DESIGN QA

Verify:

- approved design system is respected;
- layout hierarchy is coherent;
- typography is consistent;
- spacing is intentional;
- assets are correctly used;
- responsive behaviour is preserved.

### ACCESSIBILITY QA

Verify:

- semantic HTML;
- keyboard operation;
- visible focus;
- headings and landmarks;
- forms;
- contrast;
- alternative text;
- multilingual accessibility;
- reduced-motion behaviour;
- assistive-technology considerations.

### SEO / AEO / GEO QA

Verify:

- crawlability;
- titles;
- descriptions;
- headings;
- canonical URLs;
- structured data;
- internal links;
- entity consistency;
- machine-readable content;
- truthful AI/search representation.

### FUNCTIONAL QA

Verify:

- links;
- navigation;
- forms;
- menus;
- buttons;
- language controls;
- interactive states;
- error states;
- loading states;
- responsive interactions.

### TECHNICAL QA

Verify:

- HTML;
- CSS;
- JavaScript;
- asset paths;
- console errors;
- network failures;
- status codes;
- redirects;
- deployment configuration where applicable.

### INTEGRATION QA

Verify only integrations that are actually implemented.

Examples may include:

- Telegram;
- GitHub;
- translation services;
- government or civic data sources;
- document services;
- communication channels;
- analytics;
- AI providers.

An integration must not be described as live merely because configuration, code, credentials, documentation, or planning material exists.

---

## 4. SIX-PAGE QA BOUNDARY

Every public page must be tested independently.

### HOME

Verify:

- identity and purpose are immediately understandable;
- primary citizen pathway is clear;
- navigation works;
- primary calls to action work;
- status claims are accurate;
- accessibility is preserved;
- SEO/AEO/GEO metadata is appropriate.

### HOW IT WORKS

Verify:

- civic journey is understandable;
- sequence is coherent;
- citizen review and decision points are clear;
- assistance is not represented as official determination;
- process links and interactions work.

### RESOURCES

Verify:

- resources are discoverable;
- categories and links work;
- external sources are distinguishable;
- resource claims are current and traceable.

### VISION

Verify:

- future concepts are clearly identified;
- research directions are not presented as current;
- visual explanations have accessible equivalents;
- future claims remain bounded.

### ABOUT

Verify:

- origin, mission, values, and foundations are accurate;
- project identity is consistent;
- historical or organisational claims are supported.

### CONTACT / GET INVOLVED

Verify:

- contact pathways are real and verified;
- forms work where implemented;
- privacy notices are clear;
- unnecessary sensitive data is not requested;
- contribution or participation claims are accurate.

---

## 5. CONTENT INTEGRITY QA

For each page verify:

- approved content master is the source;
- headings are correct;
- paragraphs are complete;
- links point to intended destinations;
- terminology is consistent;
- no accidental placeholder text remains;
- no duplicate or obsolete content remains;
- no unsupported claims have been introduced;
- no accidental legal, privacy, government-affiliation, or capability claims have been added.

Do not rewrite approved content merely to make an automated audit pass.

If an audit string is incorrect, classify it as an audit-string mismatch and review the audit rather than corrupting approved content.

---

## 6. CURRENT / BUILDING / FUTURE QA

Every significant capability claim should be classified.

### CURRENT

Evidence should support that the capability is actually available.

### BUILDING

Evidence should support that the capability is genuinely under development or integration.

### FUTURE / RESEARCH

The capability should be clearly presented as prospective, conceptual, experimental, or research-oriented.

The following are not sufficient deployment evidence by themselves:

- planning documents;
- screenshots;
- diagrams;
- polished interfaces;
- prototypes;
- source-code presence;
- configuration files;
- API references;
- structured data;
- search results;
- AI answers.

Public wording must match verified implementation.

---

## 7. CITIZEN-AGENCY QA

Verify the core model:

**JANAVANI ASSISTS**

**CITIZEN REVIEWS**

**CITIZEN DECIDES**

**CITIZEN ACTS**

Verify that:

- citizens can understand what assistance means;
- important outputs can be reviewed;
- citizens retain decision responsibility;
- actions are presented clearly;
- AI assistance is not represented as official determination;
- no interface pressures the citizen into an unsupported conclusion.

---

## 8. PRIVACY AND DATA-MINIMISATION QA

Verify:

- only necessary information is requested;
- sensitive information is not unnecessarily requested;
- forms explain relevant data requirements;
- private information is not exposed in URLs;
- visible status messages do not reveal sensitive data;
- privacy notices are accessible;
- storage and retention claims are accurate;
- access-control claims are supported;
- security claims are not exaggerated.

Do not claim absolute confidentiality, guaranteed privacy, guaranteed security, or guaranteed outcomes without appropriate evidence.

---

## 9. ACCESSIBILITY QA

Verify at minimum:

- semantic HTML;
- page landmarks;
- one clear H1;
- logical heading hierarchy;
- keyboard navigation;
- visible focus states;
- logical focus order;
- accessible links;
- accessible buttons;
- accessible forms;
- understandable errors;
- sufficient contrast;
- colour-independent meaning;
- readable typography;
- responsive/mobile usability;
- meaningful alternative text;
- accessible icons;
- reduced-motion behaviour;
- accessible dynamic content;
- multilingual accessibility;
- skip navigation where appropriate.

Where practical, combine automated, manual, and assistive-technology testing.

---

## 10. SEO / AEO / GEO QA

Verify:

- unique and accurate titles;
- useful descriptions;
- one clear H1;
- logical H2/H3 structure;
- descriptive URLs;
- canonical URLs;
- robots directives;
- sitemap;
- crawlability;
- internal links;
- structured data;
- entity consistency;
- source references;
- Open Graph/social metadata where used;
- image metadata;
- machine-readable content;
- direct answers to important citizen questions;
- truthful AI/search representation.

Do not optimise search or AI representation by introducing unsupported claims.

---

## 11. NAVIGATION QA

Verify the global navigation across all six pages.

Required destinations:

- HOME;
- HOW IT WORKS;
- RESOURCES;
- VISION;
- ABOUT;
- CONTACT / GET INVOLVED.

Verify:

- every navigation link resolves;
- active/current-page indication is understandable;
- mobile navigation works;
- keyboard navigation works;
- focus behaviour is correct;
- no navigation item points to an obsolete page;
- no important page is orphaned.

---

## 12. LINK QA

Check all internal and external links.

Verify:

- destination exists;
- destination matches anchor text;
- no broken links;
- no accidental localhost URLs;
- no development-only paths;
- no incorrect relative paths;
- external links point to intended sources;
- external references do not imply endorsement or partnership.

---

## 13. FORM QA

For every implemented form verify:

- correct labels;
- appropriate input types;
- required fields;
- validation;
- error messaging;
- success messaging;
- keyboard completion;
- mobile completion;
- privacy notice;
- data minimisation;
- failure handling;
- no accidental submission to an unverified endpoint.

Test both valid and invalid input.

---

## 14. RESPONSIVE QA

Test representative viewport sizes across:

- desktop;
- laptop;
- tablet;
- mobile;
- portrait;
- landscape.

Verify:

- no clipped content;
- no unexpected horizontal overflow;
- no overlapping controls;
- readable text;
- usable navigation;
- usable buttons;
- usable forms;
- stable images;
- no fixed element obstruction;
- translations fit;
- long headings remain usable.

---

## 15. MULTILINGUAL QA

For every implemented language verify:

- correct language declaration;
- translated navigation;
- translated headings;
- translated labels;
- translated errors;
- translated status messages;
- translated metadata where applicable;
- appropriate typography;
- text expansion handling;
- correct direction where applicable;
- no accidental untranslated critical safety/privacy text;
- meaning remains consistent with the approved source language.

Translation must not silently change current/building/future status or official-determination boundaries.

---

## 16. VISUAL REGRESSION QA

Compare implementation against approved design references.

Verify:

- logo;
- navigation;
- hero area;
- typography;
- spacing;
- cards;
- buttons;
- icons;
- images;
- footer;
- responsive states.

Visual differences should be classified as:

1. intentional approved change;
2. implementation defect;
3. source/design mismatch;
4. asset issue.

Do not treat every visual difference as a defect automatically.

---

## 17. ASSET QA

Verify:

- correct asset is used;
- file path is correct;
- asset exists in repository;
- filename is correct;
- image dimensions are appropriate;
- alt strategy is appropriate;
- no broken asset references;
- no accidental duplicate or obsolete asset is used.

Do not substitute an unverified asset merely because it looks similar.

---

## 18. HTML / CSS / JAVASCRIPT QA

### HTML

Check:

- valid structure where practical;
- semantic elements;
- heading hierarchy;
- landmarks;
- labels;
- links and buttons;
- duplicate IDs;
- missing required attributes.

### CSS

Check:

- responsive behaviour;
- focus states;
- contrast;
- overflow;
- stacking;
- layout stability;
- reduced-motion behaviour;
- unintended global leakage.

### JavaScript

Check:

- console errors;
- event failures;
- keyboard interaction;
- dynamic content;
- navigation;
- forms;
- language controls;
- asynchronous states;
- graceful failure.

---

## 19. BROWSER AND DEVICE QA

Test representative current browsers and devices where practical.

At minimum consider:

- Chromium-based desktop browser;
- Firefox;
- Safari where available;
- Android browser environment;
- iOS browser environment where available.

Record material browser-specific defects rather than assuming one browser represents all citizens.

---

## 20. PERFORMANCE QA

Verify:

- page loads;
- asset loading;
- layout stability;
- unnecessary blocking resources;
- image optimisation;
- script behaviour;
- mobile performance;
- usable loading states.

Performance results should be treated as evidence and trends rather than absolute proof of citizen value.

---

## 21. SECURITY / PRIVACY QA

Verify:

- no secrets are exposed in public source;
- no sensitive data appears in URLs;
- forms submit only to verified destinations;
- public/private boundaries are correct;
- third-party integrations are identified;
- security wording matches evidence;
- error messages do not expose unnecessary internal information.

Do not publish credentials, tokens, passwords, or private keys.

---

## 22. INTEGRATION QA

For every claimed integration, verify:

1. implementation exists;
2. configuration exists where required;
3. supporting infrastructure exists;
4. endpoint or channel is valid;
5. user-accessible pathway works where applicable;
6. error handling exists;
7. privacy/security implications are addressed;
8. documentation reflects the actual state.

If any required evidence is absent, classify the integration as unverified rather than current.

---

## 23. DOCUMENTATION QA

Verify documentation:

- has the correct filename;
- is stored in the correct repository location;
- uses valid UTF-8;
- contains the required structure;
- has no accidental terminal text;
- has no accidental replacement characters;
- has an approved final principle;
- does not certify implementation without evidence;
- remains consistent with other approved masters.

Documentation is a source of authority for implementation, not proof that implementation has occurred.

---

## 24. AUTOMATED QA

Automated checks may cover:

- file existence;
- UTF-8 validity;
- replacement characters;
- required headings;
- required markers;
- broken internal references where detectable;
- duplicate IDs;
- asset existence;
- metadata presence;
- basic HTML/CSS/JS errors;
- link checks;
- accessibility rules detectable by tooling.

Automated QA must be supplemented by human review where the issue requires judgement.

---

## 25. MANUAL QA

Manual review should verify:

- citizen understanding;
- visual hierarchy;
- page purpose;
- interaction flow;
- accessibility;
- content accuracy;
- multilingual meaning;
- claim safety;
- current/building/future status;
- AI/search representation;
- real-world usability.

A page can pass automated checks and still fail manual QA.

---

## 26. END-TO-END CITIZEN JOURNEY QA

Test the journey as a citizen would experience it.

Verify:

1. citizen arrives;
2. understands Janavani;
3. understands the available pathway;
4. navigates to relevant information;
5. reviews information or assistance;
6. makes their own decision;
7. takes an available action;
8. understands what Janavani has and has not determined.

The journey should not depend on hidden implementation knowledge.

---

## 27. FAILURE / EDGE-CASE QA

Test representative failures including:

- broken network;
- missing resource;
- invalid form input;
- empty search/filter result where applicable;
- unavailable integration;
- translation failure;
- slow response;
- JavaScript failure where practical;
- unexpected screen size;
- long text;
- missing image;
- unavailable external source.

Failure states must remain understandable and accessible.

---

## 28. CLAIM / REPRESENTATION QA

Search all public-facing surfaces for unsupported statements involving:

- government affiliation;
- government endorsement;
- institutional partnership;
- official determination;
- legal correctness;
- guaranteed response;
- guaranteed problem resolution;
- live functionality;
- AI capability;
- privacy guarantees;
- security guarantees;
- future capabilities presented as current.

Check not only page body text but also:

- title tags;
- meta descriptions;
- structured data;
- social metadata;
- image text;
- navigation;
- tooltips;
- error messages;
- AI-readable content.

---

## 29. QA SEVERITY CLASSIFICATION

Classify defects consistently.

### P0 — CRITICAL

Blocks publication or creates a severe citizen, privacy, security, accessibility, or integrity risk.

### P1 — HIGH

Major functionality, content, accessibility, or claim defect that should be fixed before publication.

### P2 — MEDIUM

Meaningful defect with a workaround or limited impact.

### P3 — LOW

Minor polish, consistency, or non-blocking issue.

Severity must reflect citizen impact, not developer convenience.

---

## 30. DEFECT DISPOSITION

Every material defect should receive:

- description;
- affected page/component;
- severity;
- evidence;
- probable cause where known;
- owner where applicable;
- status;
- resolution;
- retest result.

Do not close a defect merely because the visual symptom disappeared. Verify the underlying requirement.

---

## 31. RELEASE GATE

A public release should not proceed until:

- critical defects are resolved;
- high-severity publication blockers are resolved or explicitly accepted by the appropriate authority;
- approved content is verified;
- accessibility review is complete to the intended level;
- SEO/AEO/GEO review is complete;
- privacy/security review is complete;
- navigation and core interactions work;
- current/building/future claims are verified;
- deployment evidence exists for capabilities described as current;
- documentation is aligned with implementation.

---

## 32. CURRENT / BUILDING / FUTURE QA BOUNDARY

QA must distinguish:

**CURRENT**

Verified implemented and user-accessible where applicable.

**BUILDING**

Actively under development or integration and clearly labelled as such.

**FUTURE / RESEARCH**

Prospective or experimental and clearly labelled as such.

QA itself does not promote a capability from BUILDING or FUTURE to CURRENT.

Only verified evidence may change status.

---

## 33. SIX-PAGE FINAL QA MATRIX

Before release, each of the six pages should be checked against:

- content;
- design;
- accessibility;
- responsive behaviour;
- navigation;
- links;
- metadata;
- SEO;
- AEO;
- GEO;
- multilingual behaviour;
- privacy;
- claim control;
- performance;
- browser/device behaviour;
- current/building/future status.

The six pages should be tested individually before shared infrastructure is standardised.

---

## 34. SHARED INFRASTRUCTURE QA BOUNDARY

Shared files such as:

- styles.css;
- script.js;
- gtranslation.js;

must be standardised only after the six HTML pages have been individually upgraded and verified.

After shared changes, all six pages require regression testing.

A shared-file change is not complete until its effect across all six pages is checked.

---

## 35. DOCUMENTATION / SOURCE AUTHORITY

QA should use, in appropriate order:

1. approved content masters;
2. approved design system;
3. verified asset inventory;
4. verified privacy and citizen-agency standards;
5. verified NOW / BUILDING / FUTURE status;
6. approved SEO/AEO/GEO standards;
7. approved accessibility standards;
8. actual repository evidence;
9. actual runtime/deployment evidence where required.

Conflicting evidence should be surfaced rather than silently reconciled.

---

## 36. QA CHECKLIST

Before final publication, verify:

- [ ] all six pages tested individually;
- [ ] content masters matched;
- [ ] page boundaries preserved;
- [ ] navigation works;
- [ ] internal links work;
- [ ] external links verified;
- [ ] forms work where implemented;
- [ ] accessibility reviewed;
- [ ] multilingual behaviour reviewed;
- [ ] responsive behaviour reviewed;
- [ ] visual regression reviewed;
- [ ] assets verified;
- [ ] HTML reviewed;
- [ ] CSS reviewed;
- [ ] JavaScript reviewed;
- [ ] browser/device testing completed where practical;
- [ ] performance reviewed;
- [ ] privacy reviewed;
- [ ] security reviewed;
- [ ] integrations independently verified where claimed;
- [ ] SEO reviewed;
- [ ] AEO reviewed;
- [ ] GEO reviewed;
- [ ] structured data reviewed;
- [ ] metadata reviewed;
- [ ] current/building/future claims verified;
- [ ] unsupported claims removed or corrected;
- [ ] documentation aligned;
- [ ] release blockers resolved;
- [ ] regression testing completed after shared changes;
- [ ] current public website remained untouched during rebuild until the appropriate gate.

---

## 37. CONTENT STATUS

**Status:** Quality-assurance checklist and release-gate master specification established.

This document defines the QA framework.

It does not certify that the current Janavani implementation has passed QA.

Actual QA status must be based on evidence from the repository, implementation, testing, and deployment where applicable.

---

## 38. FINAL QA PRINCIPLE

Janavani is ready only when the evidence supports the claim.

A page that looks finished is not necessarily finished.

A feature that is coded is not necessarily deployed.

A feature that is deployed is not necessarily accessible.

A search result is not proof of implementation.

A screenshot is not proof of implementation.

A checklist is not proof of implementation.

QA exists to close the gap between **what Janavani says**, **what Janavani shows**, and **what Janavani actually does**.

**JANAVANI ASSISTS**

**CITIZEN REVIEWS**

**CITIZEN DECIDES**

**CITIZEN ACTS**

**Technology is not the purpose of Janavani.**
