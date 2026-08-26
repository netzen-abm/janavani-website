# JANAVANI — 10-DESIGN-SYSTEM

## 1. PURPOSE

This document defines the master design-system specification for the Janavani website.

It establishes the visual language, layout rules, typography, spacing, colour usage, components, interaction states, responsive behaviour, accessibility requirements, and implementation boundaries that should guide the six-page website rebuild.

The design system exists to create consistency without making unsupported claims about the current implementation.

---

## 2. DESIGN SYSTEM PRINCIPLE

The Janavani design system should be:

- clear;
- civic and trustworthy;
- readable;
- accessible;
- restrained;
- responsive;
- consistent across pages;
- easy to maintain;
- compatible with verified content and assets.

Visual design must support understanding and citizen agency rather than distract from them.

---

## 3. DESIGN LANGUAGE

The visual language should communicate:

- civic seriousness without institutional imitation;
- accessibility without visual clutter;
- modern technology without implying technological authority;
- transparency without unnecessary complexity;
- citizen agency rather than platform dominance.

The interface should feel calm, direct, useful, and trustworthy.

---

## 4. DESIGN TOKENS

Design tokens should be treated as the single source of truth for recurring visual decisions.

### 4.1 Colour Tokens

Define reusable tokens for:

- primary brand colour;
- secondary/supporting colour;
- page background;
- surface/background panels;
- primary text;
- secondary text;
- borders/dividers;
- links;
- focus states;
- success;
- warning;
- error.

Exact production values must be verified against the approved Janavani visual direction before implementation.

Do not invent final brand values merely to satisfy this document.

### 4.2 Typography Tokens

Define tokens for:

- primary font family;
- fallback font family;
- body text size;
- body line height;
- small text;
- H1;
- H2;
- H3;
- navigation text;
- button text;
- metadata/helper text.

Typography must prioritize readability and multilingual compatibility where required.

### 4.3 Spacing Tokens

Use a consistent spacing scale for:

- page sections;
- containers;
- cards;
- navigation;
- buttons;
- forms;
- text blocks;
- mobile layouts.

### 4.4 Radius and Border Tokens

Define reusable values for:

- small component radius;
- card radius;
- larger panel radius;
- border thickness;
- divider treatment.

### 4.5 Elevation Tokens

Use restrained elevation for surfaces that require separation.

Avoid excessive shadows or decorative effects.

---

## 5. LAYOUT SYSTEM

The layout system should define:

- page container width;
- content column width;
- full-width sections;
- grid behaviour;
- card layouts;
- section spacing;
- navigation structure;
- footer structure.

Layouts must preserve readable line lengths and adequate whitespace.

---

## 6. RESPONSIVE DESIGN

The system must support:

- desktop;
- tablet;
- mobile;
- narrow mobile screens.

Responsive behaviour should be based on content needs rather than arbitrary device assumptions.

Check:

- navigation;
- typography;
- cards;
- buttons;
- images;
- tables;
- forms;
- diagrams;
- footer;
- spacing.

No important content or action should become inaccessible on smaller screens.

---

## 7. TYPOGRAPHY SYSTEM

Typography hierarchy should clearly distinguish:

### H1

One clear primary page heading.

### H2

Major page sections.

### H3

Supporting subsections.

### Body

Readable paragraphs with appropriate line height.

### Supporting text

Metadata, helper text, labels, and secondary information.

Avoid overly decorative typography.

---

## 8. COLOUR AND CONTRAST

Colour must support:

- hierarchy;
- readability;
- interaction;
- status communication;
- accessibility.

Do not communicate essential information through colour alone.

Text and interactive controls must maintain sufficient contrast.

Focus indicators must remain visible.

---

## 9. COMPONENT SYSTEM

Shared components should include, where applicable:

- header;
- navigation;
- logo;
- language selector;
- buttons;
- links;
- cards;
- content sections;
- callouts;
- forms;
- input fields;
- alerts;
- badges;
- breadcrumbs;
- footer;
- social icons;
- resource cards;
- action panels.

Components should have predictable structure and reusable styles.

---

## 10. INTERACTION STATES

Interactive components should define:

- default;
- hover;
- focus;
- active;
- disabled;
- loading;
- error;
- success where applicable.

Keyboard focus must be clearly visible.

Interactive controls must communicate their state without relying only on colour.

---

## 11. BUTTON AND LINK SYSTEM

Buttons should be reserved for actions.

Links should be used for navigation or references.

Button and link styles must be visually distinguishable.

Link text should be descriptive rather than generic where possible.

Avoid styling ordinary text as a control when no interaction exists.

---

## 12. FORM DESIGN

Forms should provide:

- clear labels;
- useful instructions;
- appropriate input types;
- validation feedback;
- accessible error messages;
- visible focus states;
- keyboard operation;
- mobile-friendly controls.

Forms must not request sensitive personal information unnecessarily.

---

## 13. CARDS AND CONTENT BLOCKS

Cards should be used when grouping related information improves comprehension.

Avoid excessive cardification.

Each card should have:

- clear hierarchy;
- meaningful heading;
- appropriate spacing;
- readable content;
- predictable interaction where interactive.

---

## 14. IMAGES, ICONS, AND VISUAL ASSETS

Visual assets must follow `09-ASSET-INVENTORY.md`.

The design system must not independently approve:

- logos;
- images;
- screenshots;
- social accounts;
- government marks;
- institutional marks;
- partnerships.

Asset source, rights, accessibility, and implementation status must be verified through the asset inventory.

---

## 15. PAGE-SPECIFIC DESIGN APPLICATION

### 15.1 HOME

Prioritize:

- clear value proposition;
- immediate orientation;
- primary citizen action;
- readable hierarchy;
- restrained hero treatment.

### 15.2 HOW IT WORKS

Prioritize:

- process clarity;
- sequential flow;
- readable steps;
- explanatory visuals;
- accessible diagrams.

### 15.3 RESOURCES

Prioritize:

- findability;
- category clarity;
- readable resource cards;
- search/filter interfaces where verified;
- strong internal linking.

### 15.4 VISION

Prioritize:

- long-term direction;
- conceptual clarity;
- distinction between current and future;
- restrained technology visuals.

### 15.5 ABOUT

Prioritize:

- origin;
- mission;
- values;
- citizen agency;
- trust and transparency.

### 15.6 CONTACT / GET INVOLVED

Prioritize:

- verified contact pathways;
- contribution clarity;
- participation boundaries;
- privacy and contact safety;
- accessible action controls.

---

## 16. NAVIGATION SYSTEM

Navigation must be:

- consistent;
- predictable;
- keyboard accessible;
- mobile accessible;
- clearly labelled.

The active page should be visually identifiable without relying solely on colour.

Navigation should not obscure or replace meaningful page content.

---

## 17. HEADER AND FOOTER

### Header

The header should provide:

- Janavani identity;
- primary navigation;
- language controls where implemented;
- accessible mobile navigation.

### Footer

The footer should provide appropriate:

- navigation links;
- resource links;
- contact/get-involved pathways;
- legal/privacy links where applicable;
- social links only when verified.

---

## 18. ACCESSIBILITY SYSTEM

The design system must support accessible implementation, including:

- semantic HTML;
- logical heading hierarchy;
- keyboard accessibility;
- visible focus states;
- sufficient contrast;
- descriptive links;
- meaningful alternative text;
- accessible form controls;
- responsive text;
- mobile usability;
- reduced-motion consideration where appropriate.

Accessibility is a design requirement, not a final cosmetic check.

---

## 19. MOTION AND ANIMATION

Motion should be purposeful and restrained.

Use animation only when it improves:

- orientation;
- feedback;
- understanding;
- continuity.

Avoid unnecessary decorative motion.

Respect user preferences such as reduced motion where supported.

---

## 20. MULTILINGUAL DESIGN

The design system should accommodate multilingual content.

Layouts must tolerate:

- longer translated text;
- different word lengths;
- different line breaks;
- script-specific typography;
- language selector states;
- translated navigation labels.

Do not assume that English text length represents all supported languages.

---

## 21. SEO AND CONTENT PRESENTATION

The visual system must support:

- one clear H1 per page;
- logical H2/H3 hierarchy;
- crawlable text content;
- meaningful internal links;
- descriptive link text;
- readable content structure;
- mobile usability.

Visual styling must never hide important content from users or search engines.

---

## 22. CLAIM AND STATUS CONTROL

The design system must preserve the distinction between:

- CURRENT;
- BUILDING;
- FUTURE / RESEARCH.

Visual treatments must not make a future capability appear operational.

A polished interface, diagram, mock-up, screenshot, or animation is not proof of deployment.

Only verified capabilities may be presented as current.

---

## 23. IMPLEMENTATION BOUNDARY

The design system is a specification.

It does not by itself confirm that every component or token has been implemented.

Implementation should occur only after:

- content masters are verified;
- asset inventory is verified;
- current website structure is understood;
- page-specific requirements are approved;
- accessibility requirements are understood.

The current public website must remain untouched during the rebuild until the appropriate implementation gate is passed.

---

## 24. DESIGN QA CHECKLIST

Before a page is considered visually ready, verify:

- layout consistency;
- typography;
- spacing;
- responsive behaviour;
- navigation;
- component states;
- contrast;
- focus visibility;
- keyboard operation;
- mobile usability;
- asset correctness;
- content hierarchy;
- claim/status accuracy;
- multilingual resilience;
- documentation consistency.

---

## 25. DESIGN SYSTEM STATUS

**Status:** Design-system specification established.

Exact visual token values, final assets, and production implementation remain subject to verification and the approved implementation workflow.

---

## 26. FINAL DESIGN PRINCIPLE

Janavani's design should make civic information easier to understand, actions easier to find, and participation easier to access—without allowing visual polish to substitute for truth, verification, accessibility, or citizen agency.

**Technology is not the purpose of Janavani.**
