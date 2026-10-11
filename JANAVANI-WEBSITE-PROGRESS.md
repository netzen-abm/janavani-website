JANAVANI WEBSITE --- MASTER PROGRESS TRACKER

Date: 2026-08-14
Current redesign identity: Janavani --- The Infrastructure of
Citizen Voice

CURRENT STATUS

DONE

Git repository/state audit completed

Existing website architecture reviewed

Existing content and new content reviewed

C identity direction selected

Website ecosystem architecture defined

NOW / BUILDING / FUTURE discipline defined

Telegram treated as an interface, not the identity

Web App identified as a major building direction

Freenet included as future/research infrastructure

AI positioned as a capability, not the identity

SEO + AI-search architecture defined

Visual/infographic strategy defined

Contact/social ecosystem direction defined

Existing developer plan reviewed

Need for permanent website archive identified

Need for permanent developer guide identified

Master content-map document created

Developer guide document created

Progress tracker created

CURRENT TASK

STEP 4 --- MASTER CONTENT MAP + PROJECT DOCUMENTATION

Status: IN PROGRESS

Objective:

Create the definitive map for merging existing and new content into the
redesigned six-page website, while preserving the current website and
documenting future maintenance rules.

ARCHIVE GATE

Before modifying the website implementation:

Verify current Git commit

Create pre-redesign Git tag

Create permanent archive copy

Record archive location

Verify archive is unchanged

Commit documentation

Recommended tag:

website-pre-redesign-2026-08-14

Recommended archive:

archive/website-pre-redesign-2026-08-14/

CONTENT MAP GATE

Home purpose defined

About purpose defined

How It Works purpose defined

Vision purpose defined

Resources purpose defined

Contact/Get Involved purpose defined

Visual strategy defined

SEO/AI-search structure defined

Freenet placement defined

Telegram/Web App status language defined

Final content wording approved

Page-by-page content drafted

NEXT 2 STEPS

1. Archive current website

Create the Git checkpoint and permanent pre-redesign archive before
editing the six pages.

2. Approve/lock the Master Content Map

After approval, draft the six page contents one page at a time.

FUTURE IMPLEMENTATION ORDER

Archive current website

Lock master content map

Draft Home

Draft How It Works

Draft About

Draft Vision

Draft Resources

Redesign Contact/Get Involved

Create/confirm visual assets

Rebuild shared CSS design system

Apply page HTML one page at a time

Verify translation

Verify navigation/internal links

Verify mobile/responsive behaviour

Verify accessibility

Verify SEO/metadata

Verify structured data

Final structural audit

Remove temporary backups

Git validation

Commit

Push

Deploy

Live verification

DO NOT REPEAT

Do not restart: - identity selection; - website architecture
discussion; - NOW/BUILDING/FUTURE definition; - Freenet placement
decision; - AI positioning decision; - general visual-system discussion;

unless new evidence requires a documented change.

CURRENT CHECKLIST SNAPSHOT

Area                   Status

Repository/state       DONE
Architecture audit     DONE
Content audit          DONE
Identity               DONE
Ecosystem blueprint    DONE
Master content map     DONE --- awaiting lock
Archive                NEXT
Developer guide        DONE
Home content           NOT STARTED
How It Works content   NOT STARTED
About content          NOT STARTED
Vision content         NOT STARTED
Resources content      NOT STARTED
Contact content        NOT STARTED
Visual assets          NOT STARTED
CSS redesign           NOT STARTED
Final QA               NOT STARTED
Deploy                 NOT STARTED

RULE

One task at a time. One controlled change at a time. Verify before
moving forward.


LATEST EXECUTION UPDATE — 2026-10-11

Verified source and publishing findings:
- A successful Pages deployment reports the public URL as https://netzen-abm.github.io/janavani-website/.
- The user-provided https://netzen-abm.github.io/janavani/ path is not the URL reported by this repository's canonical Pages deployment.
- The six production HTML pages were snapshotted before remediation in archive/website-seo-baseline-2026-10-11/ at commit 5d8494ac574bc497b4a43014cae11f821de697b5.
- The pre-remediation audit found missing canonical/OG/Twitter/structured-data metadata on five pages, a missing UTF-8 declaration on the homepage, and mojibake punctuation in the HTML.
- The previous Pages workflow copied the full assets directory; staging is being narrowed to referenced assets and validated before deployment.
- Shared CSS and JavaScript behavior files remain unchanged in this remediation. The current work focuses on page metadata, encoding, deploy artifact scope, and validation.

Current phase: SEO/AI discoverability and deployment automation are validated; manual browser QA and Pages source confirmation remain.

Next:
1. Browser-check the canonical site and all six routes, navigation, translation, mobile behavior, and the custom 404 page.
2. Verify Settings → Pages → Build and deployment → Source is GitHub Actions, then confirm the environment URL.


DEPLOYMENT VALIDATION RESULT — 2026-10-11

- Website commit `52765b1481594f55a42e877cfd1e0fb0a69f1440`: public-site validation passed.
- Validation covered all six public pages, 14 local references/assets, metadata, JSON-LD, local links, sitemap, manifest, encoding, and the public-artifact allowlist.
- The uploaded site artifact is 1,033,625 bytes (about 1.03 MB), replacing the earlier full-assets copy that produced a much larger artifact.
- The custom GitHub Pages deployment passed on `6c515eb73fd58c885068cfd742694e6caf61f0c1`.
- The advanced CodeQL workflow that conflicted with GitHub's enabled default setup was archived at `archive/github-workflows/2026-10-11/codeql.yml`, verified, and then removed from the active workflow folder. GitHub's default CodeQL setup remains the scanning source.
- The generated `dynamic/pages/pages-build-deployment` run was reported with event `dynamic` and succeeded after the custom workflow; treat it as the Pages deployment stage, not proof of a second branch publisher. A repository admin can optionally verify Settings → Pages → Build and deployment → Source is **GitHub Actions**.
