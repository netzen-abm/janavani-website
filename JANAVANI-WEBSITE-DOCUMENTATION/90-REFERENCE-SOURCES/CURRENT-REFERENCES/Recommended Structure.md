Recommended structure

One website:

janavani-website/
│
├── index.html
├── about.html
├── how-it-works.html
├── get-involved.html
├── contact.html
│
├── languages/
│   ├── ml/
│   ├── hi/
│   ├── mr/
│   ├── ta/
│   ├── kn/
│   └── te/
│
├── assets/
│   ├── css/
│   ├── images/
│   └── icons/
│
└── ...

But I would make one improvement to that structure.

Don't duplicate every page seven times unnecessarily.

Instead, we can eventually use a language structure like:

/en/
    index.html
    about.html

/ml/
    index.html
    about.html

/hi/
    index.html
    about.html

/mr/
    index.html
    about.html

/ta/
    index.html
    about.html

/kn/
    index.html
    about.html

/te/
    index.html
    about.html

The shared CSS, images and JavaScript remain common.

That makes maintenance much easier.

Languages

The initial language set should be:

Code	Language
en	English
ml	Malayalam
hi	Hindi
mr	Marathi
ta	Tamil
kn	Kannada
te	Telugu

And we should not hard-code the language selector to only these seven forever.

Later we can add:

Bengali
Gujarati
Punjabi
Odia
Assamese
Urdu
other Indian languages

without redesigning the website.

But there is a more important point

I don't think Janavani should remain a three-page website.

Your North Star is much larger.

The website should be a public-facing brochure and gateway into the Janavani ecosystem.

I would therefore use approximately 6–8 pages, not dozens.

1. Home

The simplest explanation:

What is Janavani?

Current capability + future direction.

2. How Janavani Works

Explain the citizen journey:

Problem
 ↓
Understand
 ↓
Authority
 ↓
Document
 ↓
Evidence
 ↓
Submission
 ↓
Tracking
 ↓
Follow-up
 ↓
Escalation

This becomes particularly important as the platform grows.

3. About Janavani

Explain:

Why Janavani exists
Meaning of Janavani
Mission
Principles
Privacy-first philosophy
Open-source philosophy
Citizen participation
4. Janavani Vision

A public-friendly version of the North Star.

Not the entire 1,230-line technical/strategic document.

Explain the future:

Citizen
   ↓
Government Services
   ↓
Evidence
   ↓
Accountability
   ↓
Participation
   ↓
Better Governance

This page can explain future areas such as:

Government performance
Budget and policy tracking
Manifesto tracking
MP/MLA performance
Local government performance
Government-office ratings
Public-service experience
RTI workflows
Escalation
Whistleblower protection
Public-interest information
Constitutional analysis
Citizen participation

But clearly label these as future / planned capabilities until implemented.

5. Get Involved

This is important.

Not everyone needs to write code.

We can have:

Developers

Build the platform.

Designers

Improve accessibility and citizen experience.

Legal researchers

Help verify laws, procedures and government authorities.

Governance researchers

Help build government-performance datasets.

Citizens

Test workflows, report problems and suggest improvements.

Translators

Help make Janavani accessible in Indian languages.

Civil-society organisations

Collaborate on civic empowerment and public-interest work.

Data contributors

Help verify public information.

Researchers

Study governance, accountability and civic technology.

That turns the website into the beginning of the Janavani community.

6. Resources / Knowledge

Eventually:

Resources
│
├── Citizen Rights
├── RTI
├── Government Procedures
├── Constitutional Principles
├── How Government Works
├── Civic Participation
├── Guides
└── Frequently Asked Questions

This can become a major SEO and educational asset later.

We don't need to build all of it now.

7. Project / Technology

A simple page explaining:

Open source
Architecture
Privacy
Security
Decentralisation — future direction
GitHub
Contribution
Technical documentation

This is mainly for developers and collaborators.

8. Contact

Your existing page becomes:

Contact & Collaborate

rather than simply "Contact."

Language selector

Every page should eventually have something like:

English ▾
────────────
English
മലയാളം
हिन्दी
मराठी
தமிழ்
ಕನ್ನಡ
తెలుగు

The important thing is that changing language should preserve the same page where possible.

For example:

janavani.in/en/
janavani.in/ml/
janavani.in/hi/

rather than sending the user somewhere unrelated.

One important technical recommendation

Because you want this website to remain easy to maintain, I would not introduce a large framework yet.

You currently have a static website.

That is actually an advantage.

We can keep:

HTML
CSS
small JavaScript

and build a clean multilingual structure on top of it.

No React.

No Next.js.

No database.

No unnecessary backend.

No complicated CMS.

At this stage:

Simple static website > complicated website framework.

Also: language is not just translation

This is particularly important for Janavani.

We shouldn't simply translate English sentences word-for-word.

For example, the Malayalam version should eventually use language that ordinary Malayalam-speaking citizens naturally understand.

The same applies to:

Hindi
Marathi
Tamil
Kannada
Telugu

And legal/government terminology needs special care.

So I recommend a two-layer language system:

Janavani terminology
        ↓
Verified English source text
        ↓
Human-reviewed Indian-language translation

AI can help with the first translation, but legal terminology should be reviewed, especially when we start publishing constitutional/legal information.

The website's future architecture

I would therefore establish this now:

                  JANAVANI WEBSITE
                         │
        ┌────────────────┼────────────────┐
        │                │                │
     Citizen          Community       Developers
        │                │                │
        ▼                ▼                ▼
    Use Janavani     Get Involved     Contribute
        │                │                │
        └────────────────┼────────────────┘
                         │
                    JANAVANI PLATFORM
                         │
              ┌──────────┼──────────┐
              │          │          │
            Current     Planned    Future
            MVP        Features    Ecosystem

And multilingual:

                 JANAVANI
                    │
       ┌────────────┼────────────┐
       │            │            │
      English    Malayalam     Hindi
       │
       ├── Marathi
       ├── Tamil
       ├── Kannada
       └── Telugu

All languages communicate the same Janavani identity and principles.
