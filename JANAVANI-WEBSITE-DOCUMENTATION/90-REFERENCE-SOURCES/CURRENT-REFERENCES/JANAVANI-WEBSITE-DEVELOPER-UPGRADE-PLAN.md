# Janavani Website — Future Developer Upgrade & Maintenance Plan

Version: 1.0
Status: Developer Reference
Repository: https://github.com/netzen-abm/janavani-website
Live site: https://netzen-abm.github.io/janavani-website/

## Purpose

This repository is the public Janavani brochure/showcase website. It explains what Janavani is, who it serves, how the current workflow works, the civic/legal participation philosophy, future directions, resources, and ways to contribute.

The actual Janavani application/platform is a separate project. Do not turn this brochure website into the application.

## Current architecture

Static HTML + shared CSS + small JavaScript files.

Current pages:
- index.html — public overview/home
- about.html — identity, mission, philosophy and project context
- how-it-works.html — workflow and examples
- resources.html — civic/legal pathways and references
- vision.html — future governance/accountability direction
- contact.html — contribution, collaboration and contact

Shared assets:
- styles.css — shared visual system and responsive layout
- gtranslation.js — shared multilingual configuration
- script.js — reserved for future website interactions
- .github/workflows/ — GitHub automation/security workflows

## Locked principles

1. Keep the brochure website lightweight.
2. Do not introduce a framework unless there is a clear maintenance benefit.
3. Prefer shared CSS and small reusable JavaScript over page-specific duplication.
4. Do not move the actual Janavani application into this repository.
5. Preserve existing public links unless explicitly approved.
6. Do not replace the current GTranslate architecture without testing and approval.
7. Clearly distinguish CURRENT, BEING DEVELOPED and FUTURE capabilities.
8. Legal and constitutional information is informational and must not be presented as professional legal advice.
9. External organisations are references only. Listing them does not mean Janavani recommends or endorses them.
10. Avoid collecting unnecessary personal information through the brochure website.

## Translation

Current configuration supports:
English, Malayalam, Hindi, Kannada, Telugu, Tamil, Marathi, Bengali, Gujarati, Punjabi, Sindhi, Urdu and Nepali.

The current shared pattern is:

<div class="gtranslate_wrapper"></div>
<script>
window.gtranslateSettings = {
    default_language: "en",
    languages: [
        "en", "ml", "hi", "kn", "te", "ta", "mr",
        "bn", "gu", "pa", "sd", "ur", "ne"
    ],
    wrapper_selector: ".gtranslate_wrapper"
};
</script>
<script src="https://cdn.gtranslate.net/widgets/latest/uswds.js" defer></script>

Do not duplicate configuration unnecessarily across every page. Prefer gtranslation.js as the single configuration source, while retaining the required loader pattern supported by the chosen GTranslate setup.

Machine translation is an accessibility layer. Important legal, constitutional and procedural information must be independently verified.

## Recommended future SEO work

For every page:
- unique title
- unique meta description
- viewport declaration
- canonical URL
- theme-color
- Open Graph title/description/type/url
- optional Twitter/X card metadata
- meaningful link text
- one clear H1
- logical H2/H3 hierarchy

Do not add an OG image until a confirmed social-sharing image exists.

## Recommended accessibility work

- Keep semantic HTML.
- Preserve heading hierarchy.
- Add accessible names only where controls require them.
- Add visible focus states.
- Ensure keyboard navigation works.
- Check color contrast.
- Ensure mobile navigation, if later introduced, is keyboard accessible.
- Respect prefers-reduced-motion.
- Do not add ARIA attributes merely for decoration.

## Responsive/mobile work

Current CSS already contains responsive breakpoints. Future work should test:
- 320px
- 375px
- 430px
- 768px
- 1024px
- desktop widths

Check:
- navigation
- cards
- buttons
- long URLs
- social links
- translation selector
- footer wrapping
- text size and line length

Do not redesign the site solely to solve a theoretical issue; test first.

## script.js — reserved integration plan

script.js currently remains a future integration point.

Possible future uses:
- accessible mobile navigation
- menu open/close state
- scroll-to-top control
- progressive enhancement
- small interaction enhancements
- form validation if a real form is introduced
- analytics only if privacy policy and consent requirements are addressed

Avoid:
- large client-side frameworks
- unnecessary animation
- storing citizen case data in browser localStorage
- collecting sensitive information
- embedding application logic from the main Janavani platform

Any future script must fail gracefully if JavaScript is disabled.

## Contribution pathway

The website should make contribution possible for:
- citizens
- developers
- legal researchers
- governance researchers
- designers
- writers/communicators
- students
- journalists
- civil-society organisations
- volunteers

Preferred technical contribution pathway:
GitHub repository → Issues → Pull Requests → review → merge.

Community/volunteer contribution can use the Get Involved / Contact page.

Do not claim that a contribution program exists beyond what the repository actually supports.

## External references

TNRM and Awaken India Movement may appear as examples/reference resources where appropriate.

Required wording principle:
“Reference only — no endorsement.”

Do NOT use wording such as:
- “Janavani recommends them”
- “Janavani endorses them”
- “Janavani partners with them”

unless there is an actual formally verified relationship.

Users should independently evaluate external organisations.

## Social/contact links

Preserve the approved existing links:
- Email: janavani@atomicmail.io
- GitHub: https://github.com/netzen-abm/janavani
- Instagram: https://www.instagram.com/janavani700
- Facebook: https://www.facebook.com/janavani700/
- Bluesky: https://bsky.app/profile/janavani.bsky.social
- Primal: existing approved Janavani profile URL
- Nostr/njump: https://njump.me/janavani@zaps.lol
- Nostria: existing approved invitation URL

Do not change these URLs without explicit approval.

## Content governance

When updating content:
- preserve factual accuracy
- mark future features as future
- avoid promising functionality that does not exist
- avoid political-party advocacy
- avoid defamatory or unverified allegations
- distinguish civic information from legal advice
- avoid language implying government authority
- keep the citizen-first philosophy

## Future technical upgrades — priority order

Priority 1:
- SEO/meta consistency
- accessibility testing
- mobile visual testing
- link checking
- translation consistency
- footer/navigation consistency

Priority 2:
- shared reusable components if duplication becomes difficult to maintain
- lightweight mobile navigation
- structured contribution workflow
- sitemap.xml
- robots.txt
- favicon/site icon
- verified social sharing image

Priority 3:
- richer interactive examples
- searchable resources
- structured civic-resource data
- optional privacy-preserving analytics
- progressive web capabilities only if justified

Priority 4:
- multilingual human-reviewed pages for high-value content
- stronger structured data/schema
- documentation site if the project grows significantly

## Content expansion candidates

Only create additional pages when they materially improve the brochure.

Possible future pages:
- Governance & Constitution
- Privacy & Security
- Contribute
- FAQ
- Project Updates / Changelog
- Research / Evidence

Do not create pages simply to increase the page count.

## Testing checklist before release

Run:
- git diff --check
- git status
- internal-link check
- external-link review
- translation configuration check
- title/meta check
- viewport check
- heading check
- mobile browser test
- desktop browser test
- GitHub Pages deployment check

## Backup and Git discipline

Temporary files such as index.html.backup must not be committed.

Before modifying a major page:
1. verify current Git status
2. create a temporary backup if needed
3. make one controlled change
4. run validation
5. review diff
6. commit only after verification

## Important maintenance rule

Do not repeatedly “improve” completed pages without a defined reason.

Use the master project checklist to record:
- completed
- current
- next
- deferred

This prevents duplicated work and uncontrolled scope growth.

END
