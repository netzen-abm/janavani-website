JANAVANI WEBSITE --- DEVELOPER GUIDE

Status: Permanent Developer Reference
Version: 1.0
Repository: netzen-abm/janavani-website
Branch: main
Purpose: Prevent uncontrolled edits, repeated work, accidental
regressions and loss of project decisions.

1. PROJECT IDENTITY

JANAVANI

The Infrastructure of Citizen Voice

Civic infrastructure for meaningful citizen participation in
governance.

The website is the public-facing brochure/showcase and discovery layer.

It is not the Janavani application.

2. CURRENT WEBSITE ARCHITECTURE

Lightweight static website:

index.html --- Home

about.html --- About

how-it-works.html --- workflow

resources.html --- resources

vision.html --- vision

contact.html --- Get Involved / Contact

styles.css --- shared visual system

gtranslation.js --- translation configuration

script.js --- lightweight interactions; do not expand without a
defined requirement

.github/workflows/ --- repository automation

3. DEVELOPMENT PRINCIPLE

Operate as:

OPEN TASK
   ↓
VERIFY GIT STATE
   ↓
READ THE RELEVANT DOCUMENT
   ↓
MAKE ONE CONTROLLED CHANGE
   ↓
VALIDATE
   ↓
REVIEW DIFF
   ↓
CLOSE TASK
   ↓
UPDATE PROGRESS TRACKER

Never make multiple unrelated changes at once.

4. SOURCE DOCUMENTS

Keep the following as reference points:

JANAVANI-WEBSITE-DEVELOPER-UPGRADE-PLAN.md

docs/JANAVANI-MASTER-WEBSITE-CONTENT-MAP.md

docs/JANAVANI-WEBSITE-DEVELOPER-GUIDE.md

docs/JANAVANI-WEBSITE-PROGRESS.md

If an older instruction conflicts with the newest approved master
document, stop and resolve the conflict before coding.

5. PRESENT WEBSITE ARCHIVE POLICY

Before major redesign work:

Verify the current branch and commit.

Preserve the current production state.

Create a Git tag identifying the pre-redesign state.

Preserve a separate archive copy if practical.

Never delete the current site before the new site has been verified.

Recommended tag:

website-pre-redesign-2026-08-14

Recommended archive directory:

archive/
└── website-pre-redesign-2026-08-14/

Do not put temporary working backups such as *.step*-backup into the
permanent archive unless the archive is explicitly intended to preserve
them.

6. GIT SAFETY

Before any major change:

git status
git branch --show-current
git log -1 --oneline

Then create a backup/tag checkpoint.

After each controlled change:

git diff --check
git diff --stat
git status --short

Do not commit temporary backups.

7. ONE-FILE / ONE-TASK RULE

During redesign:

Example

Task: > Rebuild the Home page content.

Only modify: - index.html - required shared CSS if explicitly part of
that task.

Do not simultaneously redesign: - About - Contact - translation -
scripts - deployment - unrelated workflows.

8. CONTENT GOVERNANCE

Always distinguish:

NOW

Currently verified.

BUILDING

Actively being developed.

FUTURE

Planned/research direction.

Never write future features as if they are operational.

Never claim: - government affiliation; - legal authority; - guaranteed
outcomes; - AI certainty; - decentralised infrastructure that is not
actually deployed.

9. TELEGRAM

Telegram is an interface, not Janavani itself.

Current status: Working / frozen while Web development proceeds,
subject to the latest product-status verification.

Website wording should be accurate about actual public availability.

Do not imply that Telegram is the only way to use Janavani.

10. WEB APP

The Web App is a major current development direction.

Website wording:

Web App --- Building / Coming soon

Change to "available" only after verified deployment and user testing.

The website must not contain fake application screens merely to imply
functionality.

11. AI

AI is a capability, not Janavani's identity.

Potential future/current bounded uses include: - issue understanding; -
classification; - office matching assistance; - language assistance; -
document drafting assistance; - knowledge retrieval.

AI must not silently invent government-office information, legal facts
or verified data.

Where appropriate distinguish: - verified information; -
citizen-provided information; - AI-assisted inference; - unverified
information.

12. FREEnET

Use Freenet to refer to the current project at freenet.org.

Position it as a future/research direction, not a current Janavani
dependency.

Do not state: > Janavani runs on Freenet.

Unless this is actually implemented and verified.

Historical discussion may distinguish Freenet from Hyphanet.

13. EXTERNAL REFERENCES

Use:

Reference only --- no endorsement.

Do not write: - Janavani recommends; - Janavani endorses; - Janavani
partners with;

unless a formal relationship is verified.

14. SOCIAL LINKS

Preserve approved links unless explicitly changed.

Known approved references include: - Bluesky - Instagram - Facebook -
GitHub - Primal - Njump.Me - Nostria

The Contact/Get Involved page should use recognizable social icons and
accessible text labels.

15. TRANSLATION

gtranslation.js is the shared translation configuration.

Current language direction includes: - English - Malayalam - Hindi -
Kannada - Telugu - Tamil - Marathi - Bengali - Gujarati - Punjabi -
Sindhi - Urdu - Nepali

Machine translation is an accessibility layer.

Important legal, constitutional and procedural information should be
independently verified.

Do not create multiple competing translation configurations.

16. SCRIPT.JS

Do not change script.js merely because it exists.

Possible future uses: - accessible mobile navigation; - progressive
enhancement; - small interaction enhancements; - scroll-to-top; - form
validation where a real form exists.

Avoid: - frameworks; - unnecessary animations; - browser storage of
sensitive citizen information; - application business logic; -
unnecessary analytics.

17. CSS

styles.css is the shared design system.

The redesign should move toward: - reusable tokens; - consistent
spacing; - typography hierarchy; - responsive layout; - accessible
states; - reusable buttons/cards; - infographic components; - social
icon components; - status badges; - app-like interaction cues.

Do not repeatedly append emergency overrides forever.

After the redesign stabilises, obsolete rules should be removed
deliberately in a separate cleanup task.

18. VISUAL RULE

Every visual should communicate information.

Good: - process diagram; - architecture diagram; - citizen journey; -
NOW/BUILDING/FUTURE map; - civic vigilance cycle; - technology
relationship map.

Bad: - decorative fake statistics; - generic stock government photos; -
random blockchain imagery; - visual noise.

19. SEO / AI SEARCH

For every major page:

unique title;

unique meta description;

canonical URL;

one H1;

logical H2/H3 hierarchy;

meaningful internal links;

descriptive image alt text;

Open Graph metadata;

appropriate structured data;

direct-answer sections;

useful FAQ where appropriate.

Do not create pages solely to target keywords.

Do not assume llms.txt is a ranking solution.

20. ACCESSIBILITY

Test: - keyboard navigation; - focus visibility; - contrast; - heading
order; - link names; - mobile touch targets; - reduced motion; - text
scaling.

Test at: - 320px - 375px - 430px - 768px - 1024px - desktop.

21. INTERNAL LINKS

All six pages should use consistent navigation.

Current canonical navigation:

Home
How It Works
Resources
Vision
About
Get Involved

If a new page is introduced, update the master content map first.

22. CONTACT PAGE

The Contact/Get Involved page should include:

identity;

profile/logo;

Telegram;

Web App status;

social links;

GitHub;

contribution categories;

concise participation CTA.

Social icons may appear in the footer across all pages.

23. ARCHIVE RULE

The archive is for preserving the state before the redesign.

Do not use archive copies as live working files.

Do not modify archived files.

Do not confuse temporary backups with the official archive.

24. RELEASE GATE

Before deployment:

git diff --check
git status

Then perform: - internal link check; - external link review; -
translation check; - metadata check; - heading check; - accessibility
review; - responsive browser review; - image/alt review; - mobile
review; - GitHub Pages deployment check; - live site verification.

25. PROGRESS CONTROL

Update the progress document after each major task.

Record: - DONE - IN PROGRESS - NEXT 2 STEPS - DEFERRED

Never reopen a completed task without a documented reason.

This prevents duplicate work.

26. GOLDEN RULE

Do not improve what has already been completed unless there is a
defined reason.

The redesign is controlled transformation, not endless polishing.
