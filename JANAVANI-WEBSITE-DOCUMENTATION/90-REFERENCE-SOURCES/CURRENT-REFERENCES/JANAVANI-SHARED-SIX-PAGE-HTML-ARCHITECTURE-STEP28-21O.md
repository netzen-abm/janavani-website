# JANAVANI — STEP 28-21O
# SHARED SIX-PAGE HTML ARCHITECTURE LOCK

Status: ARCHITECTURE LOCK
Date: 2026-08-19

---

## 1. GLOBAL SITE ARCHITECTURE

Every Janavani page uses the same global structural language:

HEADER
→ PAGE INTRO / HERO
→ PAGE-SPECIFIC CONTENT
→ VISUAL SYSTEM EXPLANATION
→ ACTION / PARTICIPATION
→ FOOTER

The six pages remain distinct in purpose.

---

# 2. GLOBAL HEADER

Every page MUST contain:

- Janavani logo
- Home
- How It Works
- Resources
- Vision
- About
- Contact / Get Involved
- Language control
- Mobile navigation control

Requirements:

- Logo visible on every page
- Active page clearly indicated
- Navigation remains available while scrolling
- Desktop navigation is horizontally organised
- Mobile navigation is accessible
- Keyboard accessible
- No dependency on the old CSS
- No dependency on the old script.js

The future implementation will use:

janavani-new.css
janavani-new.js

Existing styles.css and script.js remain untouched.

---

# 3. STICKY NAVIGATION

Navigation MUST remain visible while the visitor scrolls down.

Initial state:

NORMAL HEADER

Scrolled state:

STICKY HEADER

Requirements:

- remains visible during page reading
- does not obscure important content
- subtle separation from page content
- responsive
- keyboard accessible
- reduced-motion compatible

---

# 4. SCROLL-TO-TOP

A small floating control will appear after meaningful scrolling.

Suggested visual:

↑
TOP

Behaviour:

- hidden near top of page
- appears after scrolling
- fixed position
- returns visitor to page top
- keyboard accessible
- smooth scrolling where supported
- respects prefers-reduced-motion

Implementation belongs ONLY in janavani-new.js.

---

# 5. LANGUAGE / TRANSLATION CONTROL

The existing translation architecture is preserved for now.

Do NOT modify:

gtranslation.js

The visual language control will be reviewed during the later interface phase.

The current Canada-flag presentation is NOT considered final.

Preferred future direction:

- neutral language/globe control, OR
- visually appropriate language selector

Do not imply that translation is restricted to one country merely through the icon.

---

# 6. HOME — index.html

Purpose:

Introduce Janavani, establish the constitutional premise, explain the citizen problem, explain the current system, and invite participation.

Structure:

1. Constitutional Premise
2. Janavani Hero
3. What Is Janavani?
4. Citizen Problem
5. How Janavani Helps
6. Citizen Journey
7. Current Capability
8. NOW / BUILDING / FUTURE
9. Technology and Citizen Agency
10. What Janavani Is Not
11. Citizen Vigilance
12. Civic Infrastructure
13. Participation CTA
14. Footer

Locked opening:

WE, THE PEOPLE OF INDIA

The constitutional premise remains foundational.

---

# 7. ABOUT — about.html

Purpose:

Explain why Janavani exists, its principles, boundaries and philosophy.

Structure:

1. Page Hero
2. Origin / Purpose
3. Citizen Problem
4. Janavani Principles
5. Citizen Agency
6. What Janavani Is
7. What Janavani Is Not
8. Design Principles
9. Current State
10. Future Possibility
11. Participation
12. Footer

---

# 8. HOW IT WORKS — how-it-works.html

Purpose:

Become the clearest operational explanation of Janavani.

Primary visual journey:

CITIZEN CONCERN
↓
DESCRIBE
↓
UNDERSTAND
↓
IDENTIFY
↓
PREPARE
↓
ACT
↓
FOLLOW UP / PARTICIPATE

This page should rely heavily on meaningful visual explanation.

Use diagrams/process architecture where they improve comprehension.

Avoid decorative graphics.

---

# 9. RESOURCES — resources.html

Purpose:

Become the citizen knowledge and practical-resource centre.

Structure:

1. Hero
2. What Citizens Can Learn
3. Civic Knowledge
4. Practical Guidance
5. Templates / Tools
6. Process Understanding
7. Accountability Resources
8. Learning Pathways
9. Contribution / Participation
10. Footer

Resources should be organised visually as a knowledge architecture rather than simply a long collection of cards.

---

# 10. VISION — vision.html

Purpose:

Explain Janavani's larger civic-infrastructure direction.

Structure:

1. Hero
2. Why Civic Infrastructure Matters
3. Citizen Agency
4. Participation
5. Accountability
6. Civic Intelligence
7. Future Infrastructure
8. NOW
9. BUILDING
10. FUTURE
11. Collaboration
12. Contribution
13. Footer

This page should carry the strongest conceptual diagrams.

Avoid excessive card density.

---

# 11. CONTACT / GET INVOLVED — contact.html

Purpose:

Convert interest into meaningful participation.

Structure:

1. Hero
2. Ways to Connect
3. Citizen Participation
4. Contribution Pathways
5. Civic Tools
6. Social / Community Channels
7. Contact Information
8. Participation CTA
9. Footer

The page should feel like an invitation to participate, not merely a contact form.

---

# 12. VISUAL DESIGN PRINCIPLE

Locked principle:

VISUALS MUST EXPLAIN SYSTEMS,
NOT MERELY DECORATE.

Use:

- process diagrams
- flow diagrams
- system architecture
- timelines where legitimate
- relationship maps
- conceptual infographics
- meaningful illustrations

Use charts ONLY when legitimate data exists.

Do NOT invent statistics for visual impact.

---

# 13. CONTENT PRINCIPLE

Existing useful content should be preserved.

The redesign should:

- reorganise
- clarify
- consolidate
- improve hierarchy
- improve readability
- improve visual storytelling

Do not arbitrarily delete useful civic content.

---

# 14. PRODUCT MATURITY LANGUAGE

The distinction remains explicit:

NOW
What exists and works today.

BUILDING
What is currently being developed.

FUTURE
What Janavani may become.

Never present planned functionality as already operational.

---

# 15. NEW CSS / JS STRATEGY

Existing files remain untouched:

styles.css
script.js

After all six HTML pages are structurally redesigned:

NEW FILES:

janavani-new.css
janavani-new.js

These will provide:

- complete visual system
- responsive layout
- typography
- navigation behaviour
- sticky navigation
- mobile menu
- scroll-to-top
- interaction states
- accessibility behaviour
- reduced-motion behaviour

gtranslation.js remains separate.

---

# 16. ACCESSIBILITY REQUIREMENTS

All six pages:

- one meaningful H1
- logical heading hierarchy
- meaningful image alt text
- keyboard-accessible navigation
- visible focus states
- adequate contrast
- semantic landmarks
- accessible mobile menu
- accessible buttons
- reduced-motion consideration
- no information conveyed by colour alone

Inline SVGs must receive appropriate accessibility treatment.

---

# 17. RESPONSIVE REQUIREMENTS

Design for:

- desktop
- tablet
- mobile

Navigation must remain usable on narrow screens.

Content must never require horizontal scrolling.

Touch targets must remain practical.

---

# 18. SEO / AEO

SEO/AEO is a later controlled phase.

Do not optimise metadata blindly before final content architecture.

Final QA will include:

- title
- meta description
- canonical
- Open Graph
- structured data
- semantic headings
- answer-oriented sections
- internal linking
- page-specific search intent

---

# 19. GIT / DEPLOYMENT SAFETY

This architecture step performs:

NO HTML CHANGES
NO CSS CHANGES
NO JS CHANGES
NO GIT COMMIT
NO DEPLOYMENT

Backups already created:

index.html.step28-21K-before-home-redesign
index.html.step28-21O-before-home-architecture
styles.css.step28-21M-before-constitutional-redesign

Archive already verified.

---

# 20. NEXT EXECUTION ORDER

STEP 28-21O
Shared architecture lock
CURRENT

↓

STEP 28-21P
Home HTML redesign

↓

STEP 28-21Q
About HTML redesign

↓

STEP 28-21R
How It Works HTML redesign

↓

STEP 28-21S
Resources HTML redesign

↓

STEP 28-21T
Vision HTML redesign

↓

STEP 28-21U
Contact / Get Involved HTML redesign

↓

STEP 28-21V
Cross-page HTML consistency audit

↓

STEP 28-21W
Create janavani-new.css

↓

STEP 28-21X
Create janavani-new.js

↓

STEP 28-21Y
Translation UI refinement

↓

STEP 28-21Z
Responsive + accessibility QA

↓

STEP 28-22A
SEO / AEO final audit

↓

STEP 28-22B
Git commit

↓

STEP 28-22C
Deployment verification

---

## MASTER PRINCIPLE

Janavani should feel like:

A CIVIC INFRASTRUCTURE PLATFORM

not merely:

A CIVIC INFORMATION WEBSITE.

The visitor should understand:

WHAT JANAVANI IS
→
HOW IT WORKS
→
WHAT EXISTS NOW
→
WHAT IS BEING BUILT
→
WHAT MAY BECOME POSSIBLE
→
HOW THE CITIZEN CAN PARTICIPATE

---

# STEP 28-21O STATUS

ARCHITECTURE: LOCKED
HTML: NOT MODIFIED
CSS: NOT MODIFIED
JS: NOT MODIFIED
GIT: NOT COMMITTED
DEPLOYMENT: NOT PERFORMED

NEXT:
STEP 28-21P — HOME HTML REDESIGN
