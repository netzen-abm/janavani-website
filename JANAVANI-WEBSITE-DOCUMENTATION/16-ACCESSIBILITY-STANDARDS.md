# JANAVANI — 16-ACCESSIBILITY-STANDARDS

## 1. PURPOSE

This document defines the master accessibility standards for the Janavani website.

The purpose is to ensure that Janavani remains usable, understandable, navigable, and operable across devices, input methods, languages, abilities, and assistive technologies.

Accessibility is a core product requirement, not a final visual polish step.

These standards apply across:

- all six public pages;
- shared navigation, header, footer, and controls;
- forms and user input;
- multilingual interfaces;
- responsive layouts;
- interactive states;
- media and imagery;
- AI-assisted interfaces where implemented;
- future interfaces only when they are actually implemented.

This document defines standards. It does not certify current implementation.

---

## 2. CORE ACCESSIBILITY PRINCIPLE

Janavani should be usable by as many citizens as reasonably possible without requiring a particular device, browser, input method, language, vision capability, hearing capability, motor capability, or cognitive strategy.

Accessibility must support the citizen journey:

**JANAVANI ASSISTS**

**CITIZEN REVIEWS**

**CITIZEN DECIDES**

**CITIZEN ACTS**

An inaccessible interface can undermine citizen agency even when the underlying information is correct.

---

## 3. ACCESSIBILITY CONFORMANCE FRAMEWORK

Implementation should use the Web Content Accessibility Guidelines (WCAG) as the primary reference framework.

Where practical, the project should target WCAG 2.2 Level AA as the baseline for public-facing implementation.

Accessibility review should consider:

- perceivable information;
- operable controls;
- understandable content;
- robust technical implementation.

Conformance claims must not be made unless the relevant implementation has actually been tested.

---

## 4. SEMANTIC HTML

Use semantic HTML wherever the element has a meaningful semantic equivalent.

Preferred elements include:

- header;
- nav;
- main;
- section;
- article;
- aside where appropriate;
- footer;
- h1 through h6;
- p;
- ul / ol / li;
- button;
- a;
- form;
- label;
- fieldset;
- legend.

Do not use generic div or span elements as substitutes for semantic controls when an appropriate native element exists.

Semantic structure supports accessibility, SEO, AEO, GEO, and machine interpretation simultaneously.

---

## 5. PAGE LANDMARKS

Each public page should provide a predictable landmark structure.

At minimum, verify:

- one primary main landmark;
- identifiable navigation;
- identifiable header where appropriate;
- identifiable footer;
- logical sectioning;
- no competing or unnecessary main landmarks.

Landmarks should help users of assistive technologies understand where they are and move efficiently through the page.

---

## 6. HEADING HIERARCHY

Each page should have:

- one clear primary H1;
- logical H2 sections;
- H3 headings only where they represent meaningful subsections;
- no heading levels selected solely for visual size;
- no skipped hierarchy where avoidable.

Heading text should describe the content that follows.

The visual appearance of a heading must not determine its semantic level.

---

## 7. KEYBOARD ACCESSIBILITY

All functionality must be operable using a keyboard where applicable.

Verify:

- links can receive focus;
- buttons can receive focus;
- menus can be operated;
- forms can be completed;
- dialogs can be entered and exited;
- custom controls have appropriate keyboard behaviour;
- focus is not trapped unexpectedly;
- no essential action requires a pointer-only interaction.

Do not remove browser focus indicators without providing an equally visible alternative.

---

## 8. FOCUS VISIBILITY AND FOCUS ORDER

Interactive elements must have clearly visible focus states.

Focus order should follow the logical reading and interaction order.

Verify:

- focus is visible against the surrounding background;
- focus is not hidden behind fixed headers or overlays;
- keyboard navigation does not jump unpredictably;
- dialogs and menus manage focus appropriately;
- focus returns logically after closing temporary interfaces.

---

## 9. LINKS AND BUTTONS

Links and buttons have different purposes.

Use:

- links for navigation to another destination;
- buttons for actions performed within the current interface.

Link text should describe its destination.

Avoid unnecessary vague labels such as:

- "click here";
- "learn more" without context;
- "read more" without identifying the subject.

Buttons should communicate their action clearly.

---

## 10. FORMS AND USER INPUT

All forms must be accessible.

Verify:

- every input has an associated label;
- labels remain understandable when fields receive focus;
- required fields are identified;
- input instructions are available where needed;
- errors are clearly communicated;
- errors are associated with the relevant field;
- keyboard users can complete the form;
- success or status messages are accessible;
- autocomplete and input types are used appropriately where relevant.

Janavani should collect only information that is necessary for the stated purpose.

Accessibility must not become a reason to collect unnecessary personal information.

---

## 11. ERROR HANDLING

Errors should help citizens understand what happened and what they can do next.

Error messages should:

- identify the affected field or action;
- use clear language;
- avoid unexplained technical codes;
- preserve entered information where practical;
- be accessible to keyboard and assistive-technology users;
- distinguish validation errors from system failures.

Do not blame the citizen for an interface or system failure.

---

## 12. COLOUR AND CONTRAST

Colour must not be the only mechanism used to communicate meaning.

Verify:

- sufficient text contrast;
- sufficient contrast for meaningful interface components;
- visible focus states;
- meaningful distinctions that remain understandable without colour;
- status indicators that include text, icons, or other accessible cues where necessary.

Do not sacrifice readability to preserve a visual aesthetic.

---

## 13. TYPOGRAPHY AND READABILITY

Typography should support comfortable reading across devices.

Consider:

- readable font sizing;
- appropriate line height;
- sufficient spacing;
- clear hierarchy;
- adequate paragraph width;
- readable link styling;
- multilingual script requirements.

Text must remain usable when users increase browser or system text size.

---

## 14. RESPONSIVE AND MOBILE ACCESSIBILITY

Accessibility must apply across:

- desktop;
- laptop;
- tablet;
- mobile;
- portrait;
- landscape.

Verify:

- no essential content is clipped;
- controls remain usable;
- touch targets have adequate size and spacing;
- navigation remains understandable;
- horizontal scrolling is not unexpectedly required;
- fixed elements do not obscure content;
- zooming does not destroy functionality.

Mobile usability is part of accessibility, not a separate concern.

---

## 15. IMAGES AND ALTERNATIVE TEXT

Images must have an appropriate alternative-text strategy.

For informative images:

- alt text should communicate the relevant information.

For decorative images:

- alt text should not unnecessarily repeat surrounding content.

For complex diagrams:

- provide an accessible textual explanation where necessary.

Do not place essential citizen information only inside an image.

Image filenames and visual metadata may support discoverability, but alt text must serve accessibility first.

---

## 16. ICONS AND ICON BUTTONS

Icons used as controls must have accessible names.

Verify:

- icon-only buttons have accessible labels;
- decorative icons are hidden from assistive technologies where appropriate;
- icons do not become the only source of essential meaning;
- tooltip text is not the sole accessibility mechanism.

If an icon communicates status, provide an accessible textual equivalent where necessary.

---

## 17. MOTION, ANIMATION, AND TRANSITIONS

Motion must never prevent access to information or controls.

Verify:

- animations are not required to understand content;
- essential information is not conveyed only through movement;
- auto-playing motion is avoided where unnecessary;
- users can access reduced-motion behaviour;
- transitions do not create disorientation;
- flashing content is avoided.

Respect the user's reduced-motion preference where applicable.

---

## 18. AUDIO AND VIDEO

If Janavani uses audio or video, accessibility must be considered from the beginning.

Where applicable:

- captions;
- transcripts;
- audio descriptions;
- accessible media controls;
- clear playback state;
- keyboard operation.

Do not assume that visual or auditory content is accessible simply because it is available.

---

## 19. MULTILINGUAL ACCESSIBILITY

Janavani's multilingual interface must preserve accessibility across languages and scripts.

Verify:

- correct language attributes;
- appropriate text direction where applicable;
- script-compatible fonts;
- adequate line height;
- longer translated text;
- translated accessible labels;
- translated error messages;
- translated status messages;
- translated navigation;
- preservation of meaning in privacy and safety language.

Translation must not silently remove accessibility information.

---

## 20. AI AND ACCESSIBILITY

Where AI-assisted functionality is implemented, accessibility must apply to the AI interaction itself.

Verify:

- input controls are accessible;
- generated responses are readable;
- response updates are communicated appropriately;
- keyboard users can operate the interface;
- status changes are perceivable;
- users can review important information before acting;
- AI output does not bypass citizen review.

AI assistance must remain subject to the citizen-agency model.

**AI ASSISTANCE ≠ OFFICIAL DETERMINATION**

---

## 21. ACCESSIBLE CITIZEN AGENCY

Accessibility must preserve the citizen's ability to:

1. understand;
2. review;
3. decide;
4. act.

No essential decision should depend on:

- inaccessible visual content;
- inaccessible colour coding;
- pointer-only interaction;
- inaccessible dynamic updates;
- untranslated safety information;
- inaccessible forms.

A citizen must be able to understand the relevant action before being expected to take it.

---

## 22. ACCESSIBLE NAVIGATION

Global navigation should be consistent across the six public pages.

Verify:

- navigation is keyboard accessible;
- current-page indication is understandable;
- menu controls have accessible names;
- mobile navigation is operable;
- focus behaviour is predictable;
- navigation does not depend solely on hover;
- skip navigation is provided where appropriate.

Primary navigation should remain stable unless a documented design decision requires otherwise.

---

## 23. SKIP LINKS AND REPETITIVE CONTENT

Where appropriate, provide a mechanism to bypass repeated navigation and reach the main content.

Skip links should:

- be keyboard accessible;
- become visible when focused;
- move focus to the intended destination;
- not be obscured by fixed interface elements.

---

## 24. DYNAMIC CONTENT AND STATUS MESSAGES

Dynamic interfaces must communicate meaningful changes accessibly.

Verify:

- loading states are understandable;
- success messages are announced appropriately where required;
- errors are perceivable;
- dynamic content does not unexpectedly move focus;
- asynchronous updates do not become invisible to assistive-technology users.

Do not rely on animation alone to indicate that something has changed.

---

## 25. DOCUMENTS, DOWNLOADS, AND EXTERNAL CONTENT

If Janavani provides documents or links to external resources:

- identify file types where useful;
- provide meaningful link text;
- ensure important information is not available only in inaccessible files;
- distinguish external destinations where appropriate;
- verify accessibility of Janavani-controlled documents.

External content should not be described as accessible unless that has been verified.

---

## 26. PRIVACY AND ACCESSIBILITY

Accessibility and privacy must be designed together.

Forms and interfaces should:

- request only necessary information;
- clearly explain sensitive-data requirements;
- avoid exposing private information through visible status messages;
- avoid placing sensitive data in URLs;
- provide accessible privacy notices where required.

Accessibility must never require unnecessary disclosure of personal information.

---

## 27. ACCESSIBLE SECURITY AND VERIFICATION

Security controls should remain accessible.

Where verification is required:

- instructions must be understandable;
- controls must be keyboard accessible;
- errors must be communicated clearly;
- alternative accessible pathways should be considered where appropriate;
- authentication or verification mechanisms must not depend unnecessarily on a single sensory ability.

Security must not be weakened to achieve accessibility; instead, both requirements should be addressed together.

---

## 28. PERFORMANCE AND ACCESSIBILITY

Performance affects accessibility.

Verify:

- usable loading behaviour;
- no unnecessary blocking scripts;
- stable layout;
- efficient assets;
- responsive behaviour;
- understandable loading states.

Slow or unstable interfaces can create practical barriers even when formal markup is correct.

---

## 29. TESTING STRATEGY

Accessibility testing should combine:

### Automated testing

Where appropriate, check:

- missing labels;
- missing alt text;
- heading structure;
- landmark issues;
- contrast issues;
- invalid ARIA;
- keyboard-focus problems detectable by tools.

### Manual testing

Verify:

- keyboard-only navigation;
- visible focus;
- logical focus order;
- zoom and text resizing;
- responsive layouts;
- forms;
- menus;
- dialogs;
- dynamic updates;
- multilingual layouts.

### Assistive-technology testing

Where practical, test representative combinations of:

- screen readers;
- browser accessibility features;
- keyboard navigation;
- mobile assistive technologies.

Automated testing is evidence of some conditions, not proof of complete accessibility.

---

## 30. ACCESSIBILITY REGRESSION CONTROL

Accessibility must be checked after material changes to:

- HTML structure;
- CSS;
- JavaScript;
- navigation;
- forms;
- translations;
- images;
- animations;
- shared components;
- third-party integrations.

A previously passing page can become inaccessible after a seemingly small shared-component change.

---

## 31. CURRENT / BUILDING / FUTURE BOUNDARY

Accessibility claims must follow the same status framework as the rest of Janavani.

### CURRENT

Only verified implemented accessibility capabilities may be described as current.

### BUILDING

Accessibility improvements under development must be identified as building.

### FUTURE / RESEARCH

Future accessibility concepts must not be presented as available functionality.

Planning material is not proof of implementation.

An accessibility checklist is not proof that the implemented website is accessible.

---

## 32. SIX-PAGE ACCESSIBILITY APPLICATION

### HOME

Verify:

- clear H1;
- understandable orientation;
- accessible primary actions;
- accessible navigation;
- meaningful imagery;
- readable status and trust information.

### HOW IT WORKS

Verify:

- process sequence is understandable;
- steps are navigable;
- citizen review and decision points are accessible;
- diagrams have accessible equivalents where necessary.

### RESOURCES

Verify:

- resources are clearly grouped;
- links identify destinations;
- external resources are distinguishable;
- search/filter controls are accessible if implemented.

### VISION

Verify:

- future concepts are clearly labelled;
- visual material has accessible alternatives;
- headings preserve conceptual hierarchy.

### ABOUT

Verify:

- project information is readable;
- images and historical material have appropriate alternatives;
- navigation remains consistent.

### CONTACT / GET INVOLVED

Verify:

- forms are fully accessible;
- contact pathways are clear;
- errors are understandable;
- privacy notices are accessible;
- sensitive information is not unnecessarily requested.

---

## 33. IMPLEMENTATION BOUNDARY

This document defines accessibility standards.

It does not certify that the current website satisfies them.

Implementation must follow:

1. verified content masters;
2. verified design system;
3. verified asset inventory;
4. verified shared infrastructure;
5. verified privacy and citizen-agency principles;
6. verified NOW / BUILDING / FUTURE status;
7. actual repository evidence.

The current public website must remain untouched during the rebuild until the appropriate implementation and review gate is passed.

---

## 34. QA CHECKLIST

Before publication, verify:

- semantic HTML;
- page landmarks;
- one clear H1;
- logical heading hierarchy;
- keyboard accessibility;
- visible focus states;
- logical focus order;
- accessible links;
- accessible buttons;
- accessible forms;
- clear error handling;
- sufficient contrast;
- colour-independent meaning;
- readable typography;
- responsive/mobile usability;
- meaningful alternative text;
- accessible icons;
- reduced-motion support;
- accessible media where applicable;
- multilingual accessibility;
- accessible dynamic content;
- accessible navigation;
- skip-link behaviour where appropriate;
- privacy/accessibility interaction;
- accessible security/verification pathways;
- performance-related accessibility;
- automated testing;
- manual testing;
- assistive-technology testing where practical;
- regression testing after shared changes;
- accurate current/building/future accessibility claims.

---

## 35. CONTENT STATUS

**Status:** Accessibility standards master specification established.

This document defines the accessibility framework for Janavani.

It does not certify current implementation, WCAG conformance, assistive-technology compatibility, or accessibility of third-party services.

---

## 36. FINAL ACCESSIBILITY PRINCIPLE

Janavani should not merely provide information.

It should make that information usable.

Every citizen should have a reasonable opportunity to:

**UNDERSTAND**

**REVIEW**

**DECIDE**

**ACT**

Accessibility is therefore part of citizen agency, not an optional layer added after implementation.

**JANAVANI ASSISTS**

**CITIZEN REVIEWS**

**CITIZEN DECIDES**

**CITIZEN ACTS**

**Technology is not the purpose of Janavani.**
