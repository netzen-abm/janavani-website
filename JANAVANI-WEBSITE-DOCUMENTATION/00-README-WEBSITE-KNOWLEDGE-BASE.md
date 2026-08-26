# JANAVANI — WEBSITE KNOWLEDGE BASE

**Status:** ACTIVE — PERMANENT WEBSITE BUILD REFERENCE  
**Version:** 1.0  
**Date:** 26 August 2026  
**Repository:** `netzen-abm/janavani-website`

---

# 1. PURPOSE

This directory is the permanent knowledge base for the Janavani public website.

It exists so that future development, redesign, maintenance, accessibility work, SEO work, content upgrades, visual upgrades, and deployment can continue from documented decisions rather than from conversation history.

A future developer should be able to enter the repository and understand:

- what Janavani is;
- what the website is intended to communicate;
- what each of the six pages is responsible for;
- what content belongs on each page;
- what Janavani currently does;
- what Janavani is building;
- what belongs to the future ecosystem;
- what privacy and citizen-agency principles must be preserved;
- which assets are available;
- how the visual system should behave;
- how shared infrastructure should work;
- how the website should be tested;
- how a new six-page rebuild should be verified;
- how the rebuilt website should replace the existing public site;
- and which historical materials must not be treated as current authority.

---

# 2. THIS KNOWLEDGE BASE IS PERMANENT

The website must not depend on undocumented conversation history.

If an important decision is made during development, the relevant documentation must be updated.

The rule is:

```text
DECISION
   ↓
DOCUMENTATION
   ↓
IMPLEMENTATION
   ↓
VERIFICATION
   ↓
CHANGELOG

Important decisions must not exist only in:

ChatGPT conversation;
terminal history;
VS Code history;
screenshots;
temporary files;
personal memory;
or undocumented verbal agreements.

# 3. WEBSITE REBUILD PRINCIPLE

The current website is being treated as a legacy implementation for the purpose of the new rebuild.

The new website will be rebuilt as a fresh implementation of all six primary pages.

The six pages are:

Home
How It Works
Resources
Vision
About
Get Involved / Contact

The new pages are not to be produced by repeatedly patching the existing HTML.

The intended process is:

DOCUMENTATION
      ↓
CONTENT ARCHITECTURE
      ↓
PAGE CONTENT MASTER
      ↓
DESIGN SYSTEM
      ↓
FRESH HTML
      ↓
SHARED CSS / JS / TRANSLATION INFRASTRUCTURE
      ↓
LOCAL TESTING
      ↓
CONTENT / VISUAL / FUNCTIONAL QA
      ↓
FINAL SNAPSHOT
      ↓
REPLACE EXISTING SITE

The existing public website must remain untouched until the replacement website has been locally verified.

# 4. WEBSITE IS NOT THE JANAVANI ECOSYSTEM

The website is one public interface to the broader Janavani ecosystem.

Janavani is a full citizen-governance ecosystem.

The website must therefore explain Janavani without falsely implying that every ecosystem capability is already implemented.

The distinction is:

JANAVANI ECOSYSTEM
        ↓
Multiple interfaces and capabilities
        ↓
WEBSITE
One public communication surface

The website must never become the architectural definition of the entire ecosystem.

# 5. CURRENT / BUILDING / FUTURE DISTINCTION

Every public statement about a Janavani capability must be classified.

CURRENT

A capability that is implemented, verified in the repository, and available to users.

Public language may describe it as current.

BUILDING

A capability actively being developed.

It must not be presented as already available.

Appropriate language includes:

"Janavani is building..."
"Currently being developed..."
"The current build is focused on..."
"This capability is under development."
FUTURE / RESEARCH

A strategic, exploratory, or long-term capability.

Examples may include:

decentralised identity;
verifiable credentials;
zero-knowledge proofs;
Nostr;
Nym;
Reticulum;
Freenet;
blockchain;
decentralised storage;
community-owned infrastructure;
resilient communications;
mesh or satellite-supported communication;
advanced AI infrastructure;
governance intelligence;
Bhu-Janavani;
government performance analytics.

These must never be presented as existing implementation unless independently verified.

# 6. WEBSITE CONTENT AUTHORITY

The website knowledge base is organized around three levels of authority.

## 6.1 ECOSYSTEM AUTHORITY

The broader Janavani ecosystem repository and its canonical documents establish:

Janavani identity;
ecosystem scope;
constitutional and civic principles;
architecture;
capability boundaries;
current versus future status;
privacy and safety principles.

## 6.2 WEBSITE AUTHORITY

This directory establishes:

website content architecture;
page responsibilities;
public wording;
design principles;
asset usage;
SEO standards;
accessibility requirements;
QA requirements;
deployment procedures.

## 6.3 IMPLEMENTATION AUTHORITY

The actual GitHub repository remains the authority for whether a technical capability is implemented.

Planning material must never turn an unimplemented feature into a public claim.

# 7. SIX-PAGE WEBSITE

The six pages form one coherent editorial system.

Each page has a distinct responsibility.

Page	Primary Question	Responsibility
Home	What is Janavani and why does it matter?	Constitutional premise, identity, citizen agency and overall civic journey
How It Works	How does the citizen journey work?	Operational civic workflow
Resources	What can I learn or use?	Civic knowledge, explanations, guides, FAQ and references
Vision	Where is Janavani going?	Long-term civic, institutional and technological direction
About	What is Janavani founded on?	Mission, identity, principles, boundaries and institutional character
Get Involved	How can I participate?	Participation, collaboration, contribution and contact pathways

A concept should have one primary home.

Cross-page links may continue a concept, but pages should not become duplicates of one another.

# 8. HOME PAGE PRINCIPLE

The Home page begins from the constitutional idea that the Republic belongs to its people.

The opening direction is:

THE REPUBLIC BEGINS WITH THE PEOPLE

The constitutional premise follows:

We, the People of India

The presentation should connect this constitutional foundation to Janavani's purpose.

Citizens are not spectators of governance.

They are participants in the Republic.

Janavani exists to help citizens understand public problems, find the appropriate civic pathway, make informed decisions, communicate lawfully with public institutions, and participate in accountable governance.

The Home page should establish:

CONSTITUTIONAL PREMISE
        ↓
CITIZEN AGENCY
        ↓
PUBLIC PROBLEM
        ↓
UNDERSTANDING
        ↓
ACTION
        ↓
ACCOUNTABILITY

The Home page should introduce the journey without attempting to explain every operational detail.

Detailed workflow belongs primarily to How It Works.

# 9. HOME AND HOW IT WORKS BOUNDARY

Home answers:

Why does Janavani exist, and what does it mean for a citizen?

How It Works answers:

What actually happens when a citizen uses Janavani?

Home may provide a concise overview of the civic journey.

How It Works provides the deeper operational explanation.

The permanent boundary is documented in:

14-HOME-HOW-IT-WORKS-BOUNDARY.md

# 10. CITIZEN AGENCY

Janavani assists citizens.

It does not become the citizen's authority.

The fundamental model is:

JANAVANI ASSISTS
       ↓
CITIZEN REVIEWS
       ↓
CITIZEN DECIDES
       ↓
CITIZEN ACTS

The website must not imply that:

an AI model is the final authority;
Janavani makes governmental decisions;
Janavani guarantees a government response;
Janavani replaces lawful institutions;
Janavani replaces qualified legal representation;
a generated document is automatically legally correct;
an attempted communication is automatically delivered.

# 11. PRIVACY AND SAFETY

Privacy and safety are part of Janavani's architectural identity.

They are not decorative website features or optional marketing language.

The website should explain why privacy matters for citizen agency, especially where citizens may provide:

personal information;
evidence;
documents;
photographs;
location information;
communications;
identity-related information;
information concerning other people.

Permanent principles include:

Privacy by Design;
Privacy by Default;
Safety by Design;
Safety by Default;
data minimisation;
purpose limitation;
identity minimisation;
user control;
evidence protection;
provenance;
access control;
retention discipline;
auditability;
abuse prevention.

The detailed public explanation belongs primarily in:

12-PRIVACY-AND-CITIZEN-AGENCY.md

# 12. CONSTITUTIONAL POSITION

Janavani operates within India's constitutional and legal environment.

The website may use constitutional principles relevant to its citizen-centered purpose, including the Preamble and appropriate discussion of:

equality;
freedoms;
life and personal liberty;
privacy;
civic participation;
Fundamental Duties where relevant.

Constitutional text, statutory law, judicial decisions, authoritative government information, system-derived information, citizen-provided information, expert analysis and AI assistance must remain distinguishable.

Janavani is not:

a court;
a government authority;
an election authority;
a law-enforcement body;
or a substitute for qualified legal representation.

# 13. AI POSITION

AI is optional, purpose-bound and replaceable infrastructure.

AI may assist with capabilities such as:

understanding;
classification;
document processing;
retrieval;
translation;
multimodal analysis;
drafting;
structured workflows.

However:

AI ASSISTANCE
      ≠
OFFICIAL DETERMINATION

No individual AI model or provider should be treated as the sole source of truth.

Where appropriate, critical workflows must have deterministic, human-review, manual, or degraded paths.

The website must be truthful about what AI can and cannot guarantee.

# 14. VISUAL DESIGN PRINCIPLE

The website should feel:

civic;
premium;
intelligent;
trustworthy;
human;
modern;
restrained;
editorial;
purposeful.

It should not feel like:

a generic startup landing page;
a government portal clone;
an AI product advertisement;
a collection of decorative cards;
a technology showcase without civic meaning.

Visual elements must serve communication.

Diagrams should be used where they explain systems, journeys, or relationships.

Decorative statistics and invented numbers must not be used.

# 15. ASSET PRINCIPLE

Existing verified assets should be preserved and evaluated before creating replacements.

The asset inventory is maintained in:

09-ASSET-INVENTORY.md

Assets may be:

retained;
optimized;
reused;
repositioned;
converted where appropriate;
or marked unsuitable.

An asset must not be used merely because it exists.

Its purpose and placement must be documented.

# 16. SEO AND ACCESSIBILITY

SEO is part of information architecture, not an afterthought.

Each page should have:

a unique title;
useful metadata;
canonical URL where appropriate;
meaningful semantic headings;
useful internal links;
meaningful image ALT text;
clear Janavani entity description;
appropriate structured data where justified.

Accessibility is a first-class requirement.

The site should support:

semantic HTML;
keyboard navigation;
readable contrast;
meaningful focus states;
useful labels;
appropriate ARIA only where necessary;
reduced-motion considerations;
responsive layouts;
meaningful text alternatives.

# 17. ENCODING STANDARD

All website documentation and source files must use valid UTF-8.

Mojibake such as:

Ã
Â
â
ð
�

must not be introduced into the new implementation.

Unicode content such as:

constitutional quotations;
em dashes;
arrows;
copyright symbols;
Indian-language text;
multilingual content

must be intentionally encoded and verified.

# 18. DOCUMENTATION CHANGE RULE

When a significant decision changes:

Update the relevant knowledge-base document.
Update the implementation.
Verify the implementation.
Record the change in 19-CHANGELOG.md.

Do not leave an important architectural or content decision undocumented.

# 19. REFERENCE SOURCES

Supporting reference material is stored under:

90-REFERENCE-SOURCES/

Current supporting references are under:

90-REFERENCE-SOURCES/CURRENT-REFERENCES/

Historical material belongs under:

90-REFERENCE-SOURCES/HISTORICAL-REFERENCES/

Verified documentation backups belong under:

90-REFERENCE-SOURCES/BACKUPS/

Reference material informs development but does not automatically override the current knowledge base.

# 20. HISTORICAL MATERIAL

Historical website files, previous redesigns, backups and old planning documents may contain valuable reasoning.

They must not automatically be treated as current requirements.

The current documentation determines the new rebuild.

Historical material exists to preserve project memory, not to force old implementation decisions into the new website.

# 21. REBUILD SAFETY RULE

The new website must be developed separately from the current public implementation.

During rebuilding:

CURRENT SITE
     │
     │ remains untouched
     ▼
FRESH SIX-PAGE BUILD
     │
     ▼
LOCAL VERIFICATION
     │
     ├── Content QA
     ├── Visual QA
     ├── Responsive QA
     ├── Accessibility QA
     ├── SEO QA
     ├── Encoding QA
     └── Functional QA
     │
     ▼
FINAL VERIFIED BUILD
     │
     ▼
REPLACEMENT OF EXISTING SITE

No partially rebuilt page should replace the existing public page.

# 22. FUTURE DEVELOPER ENTRY POINT

A future developer should begin here:

Read this README.
Read 01-PROJECT-PRINCIPLES.md.
Read 02-SIX-PAGE-CONTENT-ARCHITECTURE.md.
Read the relevant page content master.
Read 10-DESIGN-SYSTEM.md.
Read 11-SHARED-INFRASTRUCTURE.md.
Read 12-PRIVACY-AND-CITIZEN-AGENCY.md.
Read 13-NOW-BUILDING-FUTURE.md.
Read 14-HOME-HOW-IT-WORKS-BOUNDARY.md.
Check 09-ASSET-INVENTORY.md.
Check the current repository implementation.
Check 17-QUALITY-ASSURANCE-CHECKLIST.md.
Check 18-DEPLOYMENT-AND-REPLACEMENT-PROTOCOL.md.
Check 19-CHANGELOG.md.

Do not begin by reverse-engineering old HTML.

# 23. GOLDEN RULE

The Janavani website should always communicate the following relationship clearly:

THE REPUBLIC
      ↓
THE PEOPLE
      ↓
CITIZEN AGENCY
      ↓
UNDERSTANDING
      ↓
LAWFUL ACTION
      ↓
ACCOUNTABILITY

Technology exists to strengthen this relationship.

Technology is not the purpose of Janavani.

# 24. DOCUMENTATION STATUS

This knowledge base is a living project record.

Documents may be marked:

Draft
Foundation
Active
Locked
Superseded

Only current, Active, or Locked documents should be treated as authoritative for the corresponding decision.

Historical documents must remain clearly separated from current authority.

The knowledge base itself must be updated whenever a significant website decision is made.

# 25. CURRENT BUILD STATUS

The website rebuild is currently in the documentation and architecture phase.

Completed:

asset inventory;
reference-source organization;
reference verification;
six-page architecture foundation;
knowledge-base structure;
README foundation.

In progress:

permanent project principles;
privacy and citizen-agency specification;
current/building/future capability boundary;
Home / How It Works editorial boundary;
page-specific content masters;
design and shared infrastructure standards.

Not yet authorized:

replacement of the current public website;
treating the legacy HTML as the new implementation;
presenting future ecosystem capabilities as current;
finalizing page implementation before content architecture is locked.

The rebuild proceeds only after the relevant documentation has been established and verified.