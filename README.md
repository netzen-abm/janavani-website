# Janavani Website

Official public-facing website for **Janavani — a Privacy-First Citizen Governance Platform**.

Janavani is being developed to help citizens understand government systems, exercise civic rights, prepare appropriate documents, participate in public affairs, and pursue lawful civic action.

This repository contains the **Janavani brochure / public information website**.

It is separate from the main Janavani application and platform repository.

---

## 1. What This Website Is

The website acts as the public-facing introduction to Janavani.

It explains:

- What Janavani is
- Why Janavani is being developed
- How citizens can participate
- The principles behind the project
- Current capabilities
- Long-term direction
- Ways people can contribute
- How citizens and organisations can get involved

The website is intentionally simple so that it can be maintained easily.

---

## 2. What This Website Is Not

This repository is **not** the Janavani application.

It does not contain the main:

- Citizen workflows
- Government-office database
- Document-generation engine
- RTI workflows
- Complaint-processing system
- Governance intelligence platform
- Citizen accounts
- Future accountability infrastructure

Those capabilities belong to the main Janavani platform.

The website is the public information and introduction layer.

---

## 3. Relationship to the Janavani Platform

The long-term architecture is:

```text
Citizen
   ↓
Janavani Website / Web App / Other Interfaces
   ↓
Janavani Platform
   ↓
Workflows
   ↓
Services
   ↓
Government / Civic Action

4. Current Website Pages
Home
index.html
Introduces Janavani and explains:
•	The purpose of the project 
•	Citizen participation 
•	Civic action 
•	Current direction 
•	Long-term vision 
•	Ways to get involved 
About
about.html
Explains:
•	Janavani's mission 
•	Core philosophy 
•	Citizen agency 
•	Democratic participation 
•	Constitutional awareness 
•	Privacy by design 
•	Open-source participation 
•	Long-term direction 
Get Involved
contact.html
Provides information about:
•	General participation 
•	Technical contribution 
•	Research 
•	Legal and constitutional research 
•	Partnerships 
•	Civic participation 
•	Community involvement 
•	Ways to connect with the project 
________________________________________
5. Language Support
The website is primarily written in English.
Translation support is provided through:
gtranslation.js
The website is intended to be accessible to citizens across India.
The planned language coverage includes:
•	English 
•	Malayalam 
•	Hindi 
•	Tamil 
•	Telugu 
•	Kannada 
•	Marathi 
Translations should be reviewed for meaning and clarity before being treated as authoritative legal or governmental terminology.
Automated translation must not be presented as an official government or legal translation.
________________________________________
6. Design Principles
The website follows these principles:
Simple
The website should be easy to understand and maintain.
Citizen First
Content should be understandable to ordinary citizens rather than written only for technical audiences.
Privacy First
The website should avoid unnecessary collection of personal information.
Accurate
Current capabilities must not be presented as future capabilities.
Transparent
The distinction between the current product and long-term vision should remain clear.
Open
People should be able to understand how they can contribute to the project.
Maintainable
Prefer simple HTML, CSS and JavaScript over unnecessary frameworks and dependencies.
________________________________________
7. Repository Structure
janavani-website/
│
├── index.html
├── about.html
├── contact.html
│
├── styles.css
├── script.js
├── gtranslation.js
│
├── README.md
├── LICENSE
└── SECURITY.md
Additional files may be added when genuinely necessary.
Do not add complexity merely for the sake of adding features.
________________________________________
8. How to Contribute
Janavani is intended to be an open and participatory project.
People can contribute in different ways.
Citizens
Share:
•	Real-world civic problems 
•	User-experience observations 
•	Suggestions 
•	Ideas for improving citizen access to government systems 
Developers
Contribute:
•	HTML 
•	CSS 
•	JavaScript 
•	Accessibility improvements 
•	Testing 
•	Performance improvements 
•	Security improvements 
•	Documentation 
Designers
Help improve:
•	Visual clarity 
•	Accessibility 
•	Information architecture 
•	Mobile usability 
•	Citizen understanding 
Researchers
Contribute research relating to:
•	Governance 
•	Public administration 
•	Constitutional principles 
•	Civic technology 
•	Privacy 
•	Digital rights 
•	Democracy 
•	Public participation 
Legal Researchers
Help review:
•	Legal references 
•	Government procedures 
•	Civic documents 
•	Constitutional resources 
•	Terminology 
Legal contributions should be carefully sourced and should not be presented as professional legal advice.
Organisations
Civil-society organisations, community groups, researchers and other public-interest organisations may explore appropriate collaboration with Janavani.
________________________________________
9. Contributing Through GitHub
The main Janavani platform and its related repositories are developed openly where practical.
A typical contribution process is:
Find an issue or improvement
        ↓
Discuss the proposed change
        ↓
Create or modify the relevant file
        ↓
Test the website
        ↓
Review the change
        ↓
Commit
        ↓
Submit a Pull Request
Small, focused contributions are preferred.
Avoid unrelated changes in the same commit.
________________________________________
10. Website Maintenance
The website is intentionally designed to be maintainable without a large development stack.
For normal content changes:
1.	Open the relevant .html file. 
2.	Edit the content. 
3.	Save the file. 
4.	Check the page locally when possible. 
5.	Commit the change. 
6.	Push to GitHub. 
7.	Verify the GitHub Pages deployment. 
For visual changes:
styles.css
For interactive behaviour:
script.js
For translation configuration:
gtranslation.js
Avoid modifying several files when one file is sufficient.
________________________________________
11. Content Rule
The website must clearly distinguish between:
Current
Capabilities that actually exist and are available.
In Development
Capabilities actively being built.
Future
Long-term capabilities described in Janavani's strategic documents.
Future ideas must not be presented as existing functionality.
________________________________________
12. Civic and Legal Information
Janavani supports informed and lawful civic participation.
Democratic participation is not limited to protest.
Citizens may use appropriate lawful mechanisms such as:
•	Written representations 
•	Complaints 
•	Requests for information 
•	Objections 
•	Petitions 
•	Legal communications 
•	Appropriate administrative remedies 
•	Party-in-person procedures where permitted 
The website may reference public-interest organisations and resources for educational purposes.
Listing an organisation does not constitute endorsement by Janavani.
Citizens should independently evaluate any organisation, service or legal resource before relying on it.
Janavani does not provide legal representation through this website.
________________________________________
13. Privacy
The website should follow data-minimisation principles.
Do not collect personal information unless it is necessary for a clearly stated purpose.
Any future form, analytics system, third-party service or embedded tool should be reviewed for:
•	Privacy 
•	Security 
•	Data collection 
•	Third-party sharing 
•	Retention 
•	User transparency 
Privacy should be considered before convenience.
________________________________________
14. Accessibility
The website should progressively improve accessibility.
Contributors should consider:
•	Clear headings 
•	Readable text 
•	Keyboard navigation 
•	Sufficient contrast 
•	Mobile usability 
•	Meaningful link text 
•	Alternative text for images 
•	Language accessibility 
•	Simple navigation 
Accessibility improvements are welcome.
________________________________________
15. Deployment
The website is designed to be deployable through GitHub Pages.
The deployment source is the repository's configured GitHub Pages branch/workflow.
After publishing a change, verify:
1.	The deployment succeeds. 
2.	The website loads. 
3.	Navigation works. 
4.	Translation works. 
5.	Mobile layout remains usable. 
6.	External links work. 
7.	No unintended content was introduced. 
________________________________________
16. Main Janavani Project
The main Janavani application is maintained separately.
The website should not duplicate the application's business logic.
The website's role is:
Explain
   ↓
Inform
   ↓
Invite Participation
   ↓
Connect Citizens
   ↓
Direct Citizens to Janavani
The main platform's role is to provide the actual citizen-governance workflows.
________________________________________
17. Long-Term Direction
The website may eventually introduce citizens to broader Janavani capabilities such as:
•	Citizen issue assistance 
•	Government-service workflows 
•	Evidence-based civic action 
•	RTI and information workflows 
•	Petition and representation workflows 
•	Government-performance information 
•	Public programme and budget information 
•	Elected-representative information 
•	Citizen feedback 
•	Public accountability systems 
•	Constitutional awareness 
•	Participatory governance 
•	Privacy-preserving civic infrastructure 
These remain subject to the main Janavani project's development, verification and governance standards.
________________________________________
18. Important Notice
Janavani is a civic-technology initiative.
Information provided through this website is intended to support citizen understanding and participation.
The website does not replace:
•	Government authorities 
•	Courts 
•	Lawyers 
•	Legal professionals 
•	Official government information 
•	Professional advice 
Citizens should independently verify applicable laws, procedures, deadlines and official requirements before taking legal or administrative action.
________________________________________
19. License
This website is released under the license specified in:
LICENSE
Contributors should review the license before submitting code or other material.
________________________________________
20. Project Principle
Janavani is being built with a simple long-term principle:
Citizens should be able to understand the system, participate in it, and hold it accountable.
The website exists to help make that vision understandable and accessible.
________________________________________
Janavani
From citizen voice to informed civic participation.
