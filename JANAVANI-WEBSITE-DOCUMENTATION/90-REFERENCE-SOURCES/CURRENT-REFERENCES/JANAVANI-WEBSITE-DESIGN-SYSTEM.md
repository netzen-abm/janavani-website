# JANAVANI — WEBSITE DESIGN SYSTEM

Status: MASTER DESIGN FOUNDATION
Version: 1.0
Identity: Janavani — The Infrastructure of Citizen Voice

---

# 1. DESIGN OBJECTIVE

The Janavani website must communicate:

- constitutional seriousness;
- civic credibility;
- human accessibility;
- technological competence;
- institutional independence;
- transparency;
- citizen agency.

The visual experience is part of the communication system.

The website must look as serious as the ideas it presents.

---

# 2. VISUAL CHARACTER

Primary character:

CONSTITUTIONAL
+
EDITORIAL
+
CIVIC
+
INTELLIGENT
+
HUMAN
+
RESTRAINED

Avoid:

- generic government portal;
- political campaign aesthetic;
- corporate SaaS aesthetic;
- generic AI startup aesthetic;
- excessive card grids;
- excessive rounded containers;
- decorative technology imagery;
- fake statistics;
- visual noise;
- unnecessary animation.

---

# 3. CORE COLOUR SYSTEM

Primary Navy:

#0D3B66

Deep Slate:

#334155

Warm Ivory:

#F7F4EC

White:

#FFFFFF

Muted Gold:

#D9A441

Soft Border:

#D9DEE5

Primary Text:

#172033

Secondary Text:

#526174

Success / Current:

#356859

Building:

#8A6A1F

Future:

#64748B

Colour must be used hierarchically.

Gold is an accent, not a dominant colour.

---

# 4. TYPOGRAPHY PRINCIPLE

Typography must feel editorial and institutional.

Use:

- strong display heading;
- highly readable body text;
- restrained uppercase labels;
- clear hierarchy;
- generous line-height.

Avoid:

- oversized decorative typography;
- excessive font weights;
- long paragraphs with narrow line height;
- all-caps body text.

Recommended hierarchy:

H1:
Large editorial statement.

H2:
Major conceptual section.

H3:
Supporting idea.

Eyebrow:
Small uppercase contextual label.

Body:
Readable, calm, high-contrast text.

---

# 5. PAGE RHYTHM

Every major page should follow a deliberate rhythm:

NAVIGATION
↓
HERO
↓
KEY PROPOSITION
↓
VISUAL IDEA
↓
DETAILED CONTENT
↓
CITIZEN TAKEAWAY
↓
CTA
↓
FOOTER

Do not make every section look like a card.

---

# 6. HERO PRINCIPLE

The hero should immediately communicate:

WHAT IS THIS PAGE?
WHY SHOULD I CARE?

Hero design should use:

- strong heading;
- short supporting statement;
- restrained visual element;
- primary CTA where appropriate.

Avoid oversized empty hero areas.

---

# 7. CARD PRINCIPLE

Cards are for:

- distinct concepts;
- capabilities;
- status;
- pathways;
- resources.

Cards are NOT the default container for every paragraph.

Prefer:

- editorial sections;
- split layouts;
- numbered pathways;
- timelines;
- diagrams;
- bordered callouts;
- typographic hierarchy.

---

# 8. VISUAL INFORMATION ARCHITECTURE

Use visual forms according to meaning.

PROCESS
→ numbered flow

PHILOSOPHY
→ statement / editorial block

VALUES
→ compact structured list

MANIFESTO
→ numbered principles

NOW / BUILDING / FUTURE
→ three-state progression

ARCHITECTURE
→ system diagram

CITIZEN VIGILANCE
→ cycle diagram

CITIZEN TRANSFORMATION
→ progression diagram

ACCOUNTABILITY
→ evidence/pathway diagram

---

# 9. JANAVANI SIGNATURE VISUAL LANGUAGE

Approved conceptual motifs:

Voice
→ waveform

Citizen
→ human figure / silhouette

Participation
→ connected nodes

Governance
→ institutional architecture

Evidence
→ document / record

Accountability
→ trace / pathway

Decentralisation
→ distributed network

These visuals must communicate information.

They must not become decorative technology imagery.

---

# 10. CONSTITUTIONAL CONTENT

Constitutional material must receive exceptional visual treatment.

The Preamble should feel:

- respectful;
- calm;
- authoritative;
- readable;
- centred;
- visually separated from ordinary content.

Do not treat the Preamble as an ordinary card.

---

# 11. JANAVANI STATUS LANGUAGE

NOW

Verified current capability.

BUILDING

Actively being developed.

FUTURE

Research, roadmap or long-term direction.

Never visually imply that FUTURE is currently operational.

Status badges should be subtle and consistent.

---

# 12. NAVIGATION

Primary navigation:

Home
How It Works
Resources
Why Janavani
About
Get Involved

The filename may remain:

vision.html

while the visible navigation label becomes:

Why Janavani

Do not create a new page merely to rename the concept.

---

# 13. BUTTONS

Primary button:

High contrast navy.

Secondary button:

Outline / restrained.

Buttons should:

- have clear action language;
- have accessible touch targets;
- remain visually consistent across pages.

Avoid excessive CTA buttons.

---

# 14. WHITESPACE

Whitespace must create hierarchy.

Avoid:

- huge empty vertical gaps;
- cramped sections;
- arbitrary padding overrides;
- repeated emergency spacing rules.

Spacing should come from a consistent scale.

---

# 15. RESPONSIVE DESIGN

Design mobile-first in principle.

Required testing widths:

320px
375px
430px
768px
1024px
Desktop

Navigation must never allow the translation control to obscure navigation.

No horizontal overflow.

---

# 16. ACCESSIBILITY

Maintain:

- semantic HTML;
- visible focus;
- adequate colour contrast;
- readable text;
- keyboard accessibility;
- accessible navigation;
- accessible buttons;
- reduced-motion support;
- descriptive image alt text.

Accessibility is part of Janavani's civic purpose.

---

# 17. IMAGES

Images should either:

1. communicate Janavani identity;
2. explain a concept;
3. support constitutional/civic context;
4. demonstrate an actual interface.

Avoid generic stock imagery whenever a meaningful vector or diagram can communicate the idea better.

Prefer original SVG diagrams for:

- citizen journey;
- architecture;
- citizen vigilance;
- citizen transformation;
- NOW / BUILDING / FUTURE.

---

# 18. ANIMATION

Animation must be restrained.

Use only where it improves:

- orientation;
- interaction;
- hierarchy;
- understanding.

Never use animation merely to make the page look active.

Respect:

prefers-reduced-motion

---

# 19. DESIGN SYSTEM ARCHITECTURE

styles.css should eventually be rebuilt around:

1. Design tokens
2. Base typography
3. Layout primitives
4. Navigation
5. Hero
6. Sections
7. Buttons
8. Cards
9. Status badges
10. Diagrams
11. Callouts
12. Footer
13. Responsive rules
14. Accessibility states

Do not continue indefinitely appending emergency overrides.

---

# 20. CSS REBUILD RULE

The current CSS is treated as transitional.

Do not repeatedly patch it while content architecture is changing.

After all six pages have completed their content architecture:

1. preserve current CSS;
2. create a CSS backup;
3. rebuild the shared design system;
4. remove obsolete rules deliberately;
5. test every page;
6. test desktop and mobile;
7. verify translation/navigation;
8. then finalize CSS.

---

# 21. JAVASCRIPT PRINCIPLE

JavaScript remains minimal.

Use it only for:

- navigation interaction;
- progressive enhancement;
- accessibility;
- lightweight UI behaviour;
- translation configuration.

Do not put application business logic into the website.

---

# 22. TRANSLATION PRINCIPLE

Translation is an accessibility layer.

It must never:

- obscure navigation;
- cover buttons;
- break layout;
- change page architecture.

Translation UI must be treated as part of the responsive navigation system.

---

# 23. PREMIUM DESIGN TEST

Before approving a page ask:

1. Does it look credible?
2. Does it look intentional?
3. Does the hierarchy make sense?
4. Can a visitor understand the page quickly?
5. Is there too much card repetition?
6. Is whitespace controlled?
7. Does the visual language communicate civic seriousness?
8. Does anything look decorative without purpose?
9. Does mobile remain elegant?
10. Does the page look like one part of Janavani rather than an isolated webpage?

---

# 24. MASTER DESIGN PRINCIPLE

Janavani should not look like a website that happens to contain civic information.

It should look like:

A serious civic infrastructure project
with a coherent visual language,
clear institutional principles,
and a human-centred interface.

---

# STATUS

This document defines the design foundation.

No production CSS is modified by creation of this document.

