# JANAVANI — SHARED INFRASTRUCTURE REBUILD SPECIFICATION

**Step:** 4A-6  
**Status:** DOCUMENTED / BUILD GATE  
**Scope:** New six-page rebuild only  
**Production files:** Protected and untouched

## 1. Purpose

This document establishes the canonical shared infrastructure for the Janavani website rebuild.

The rebuild uses fresh page files (`*-new.html`) and does not patch the existing production pages. The old pages remain the known-good reference until the final release gate. The approved architecture already establishes shared infrastructure boundaries and requires individual page verification followed by six-page regression testing. fileciteturn22file15L1-L24

## 2. Shared Infrastructure — Canonical Scope

The following are shared across all six new pages:

1. **Header**
   - Janavani identity / logo
   - consistent primary navigation
   - language control
   - accessible responsive behaviour

2. **Persistent Navigation**
   - visible while scrolling
   - desktop navigation
   - mobile navigation
   - current-page indication
   - keyboard and Escape handling

3. **Footer**
   - shared identity
   - navigation
   - verified contact/get-involved pathways
   - verified social/community links
   - dynamic copyright year

4. **Social Infrastructure**
   - one consistent presentation system
   - verified destinations only
   - shared icons, spacing, hover and focus states

5. **Back-to-Top**
   - shared ↑ control
   - progressive visibility after scrolling
   - keyboard accessible
   - reduced-motion compatible

6. **Translation**
   - `gtranslation.js`
   - one shared translator mechanism
   - independently auditable
   - must not be duplicated in page scripts

7. **Accessibility**
   - skip link
   - semantic HTML
   - ARIA states
   - visible focus
   - reduced-motion support
   - accessible controls

8. **Shared CSS / JS**
   - `styles-rebuild.css`
   - `script-rebuild.js`
   - page-agnostic shared behaviour only

The existing shared-infrastructure specification explicitly includes header, navigation, footer, language controls, responsive behaviour, accessibility, social links, and reusable components. fileciteturn22file10L1-L8 fileciteturn22file11L1-L11

## 3. Page-Specific Boundary

Shared infrastructure must NOT contain page-specific civic content.

The six canonical page responsibilities remain:

- **Home:** constitutional premise, purpose and citizen agency
- **How It Works:** citizen journey and operational explanation
- **Resources:** civic knowledge, references and deeper material
- **Vision:** long-term destination and current/building/future distinction
- **About:** identity, principles, privacy and architecture
- **Contact / Get Involved:** communication, participation, contribution and collaboration

This preserves the established six-page information architecture. fileciteturn22file2L1-L18

## 4. Asset Policy

The approved asset inventory is the source for rebuild assets.

Current taxonomy includes:

- `brand/logos`
- `brand/favicon`
- `home/*`
- `diagrams/*`
- `constitutional`
- `social/icons`
- `social/qr`
- `screenshots`
- `source/*`
- `_review`

No asset is deleted merely because it is a duplicate or variant. Selection is based on visual quality, suitability, dimensions, performance and page purpose.

## 5. Premium / World-Class Design Objective

The rebuild is not a patch exercise.

The target is a coherent, premium civic-information experience with:

- strong visual hierarchy
- restrained and intentional typography
- generous spacing
- excellent readability
- high-quality imagery
- consistent component geometry
- subtle elevation and interaction states
- polished responsive behaviour
- fast perceived performance
- accessibility without sacrificing visual quality
- clear citizen-agency messaging

“Premium” means clarity, confidence, restraint and craftsmanship—not decorative excess.

## 6. Sticky Header Behaviour

The shared header should remain available during page scrolling.

Requirements:

- `position: sticky` or an equivalent robust implementation
- `top: 0`
- sufficiently high stacking context
- no content obstruction
- stable desktop behaviour
- stable mobile behaviour
- translator must not cause layout collapse
- current navigation must remain understandable
- focus must remain visible

The rebuild shell already demonstrates a sticky-header direction and the rebuild JavaScript already contains mobile-navigation and Back-to-Top functions. These are treated as infrastructure candidates to stabilize, not production patches. fileciteturn22file0L1-L12 fileciteturn22file16L1-L15

## 7. Back-to-Top Behaviour

Every long page should use the same shared ↑ control.

Expected behaviour:

- hidden or unobtrusive near the top
- appears after meaningful scrolling
- returns to page top
- keyboard accessible
- has an accessible name
- respects reduced-motion preferences

The existing rebuild JS already defines `initBackToTop`; this will be verified as shared infrastructure. fileciteturn22file16L1-L15

## 8. Social Infrastructure

Social links are shared infrastructure because the same verified community destinations may appear across the site.

Rules:

- use only verified destinations
- do not invent channels
- use one canonical component
- preserve accessible link names
- external links receive appropriate security handling
- visual treatment remains consistent across pages

The existing shell contains verified external social destinations including Telegram, GitHub, Facebook, Instagram and decentralized-social destinations; these remain subject to final link verification before release. fileciteturn22file5L12-L17

## 9. Translation Boundary

`gtranslation.js` remains a separate shared infrastructure asset.

Rules:

- do not duplicate translator loading in `script-rebuild.js`
- do not replace it merely because it differs from rebuild JS
- maintain one translator wrapper per page
- preserve access to source-language content
- verify translated navigation and layout
- treat translation availability as infrastructure availability, not proof that every translation is independently verified

The architecture explicitly requires translation to preserve the six-page hierarchy and not break navigation or critical content. fileciteturn22file15L1-L18

## 10. File Strategy

During rebuild:

```text
OLD / PRODUCTION
index.html
about.html
how-it-works.html
resources.html
vision.html
contact.html

NEW / REBUILD
index-new.html
about-new.html
how-it-works-new.html
resources-new.html
vision-new.html
contact-new.html
```

Shared rebuild infrastructure remains separate:

```text
styles-rebuild.css
script-rebuild.js
gtranslation.js
```

No old production file is modified during page construction.

## 11. Verification Sequence

```text
Shared infrastructure stabilization
        ↓
index-new.html
        ↓
Home verification
        ↓
how-it-works-new.html
        ↓
How It Works verification
        ↓
resources-new.html
        ↓
Resources verification
        ↓
vision-new.html
        ↓
Vision verification
        ↓
about-new.html
        ↓
About verification
        ↓
contact-new.html
        ↓
Contact verification
        ↓
Six-page regression
        ↓
Release QA
        ↓
Archive old production pages
        ↓
Promote verified new pages
        ↓
Post-deployment verification
```

This is consistent with the documented rebuild sequence and the rule that production remains protected until the release gate. fileciteturn22file15L15-L24 fileciteturn22file9L1-L20

## 12. Release / Archive Rule

Old files are **not deleted**.

Only after:

- all six new pages are individually verified;
- shared infrastructure is verified;
- six-page regression passes;
- SEO/accessibility checks pass;
- links and translation are verified;
- release approval is granted;

will the old production pages be moved to an archive location.

Rollback must remain possible.

## 13. Non-Negotiable Rules

- No patchwork on old pages.
- No copying page-specific CSS into shared infrastructure merely to solve one page.
- No duplicated shared header/footer implementations with divergent behaviour.
- No duplicated translator loaders.
- No invented functionality.
- No invented social destinations.
- No future capability presented as current.
- No deletion of old files.
- No deployment before final QA.
- No visual compromise merely to satisfy brittle audit strings.

The existing documentation explicitly separates content preservation from code preservation and prohibits preserving obsolete implementation debt merely because it exists. fileciteturn22file15L20-L24

## 14. Current Status

**DONE**
- Six-page content architecture established.
- Shared infrastructure scope established.
- Rebuild assets inventoried and classified.
- Rebuild CSS, JS, translation and shell identified.
- Production files protected.
- Asset taxonomy created.
- New-file strategy confirmed.

**IN PROGRESS**
- Stabilization of shared rebuild infrastructure.
- Final shared header/navigation/footer/social/translation/accessibility contract.

**NEXT 2 STEPS**
1. Complete shared infrastructure stabilization and verification.
2. Build `index-new.html` as the first complete fresh page using the stabilized shared layer.

## 15. Governing Principle

The six pages are one coherent civic information system.

Shared infrastructure should make the system feel like **one exceptional Janavani experience**, while each page retains a distinct civic purpose.

Technology serves the citizen journey; it does not become the content.
