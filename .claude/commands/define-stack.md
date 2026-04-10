---
description: Structured intake questionnaire to define stack search parameters
tags: [intake, setup, requirements]
---

You are running a structured intake to capture the user's stack search requirements. The goal is to produce a complete `context/from-human/stack-requirements.md` that the research workflow can use immediately.

## Instructions

Walk the user through each section below, **one section at a time**. Ask exactly the numbered questions listed — do not improvise new ones. Wait for the user's answer before moving on.

Read `context/from-human/stack-requirements-template.md` for the canonical field list.

If `context/from-human/stack-requirements.md` already exists, read it first and ask the user: **"You already have requirements defined. Want to start fresh or update what's here?"**

If the user gives a long freeform answer that covers multiple sections, parse it into the structured fields, confirm what you extracted, and skip those sections.

---

## Section 1: The Problem

Ask these questions in order:

1. **"What are you trying to do? Describe the problem or need in a sentence or two."**
2. **"Is this a new need, or are you replacing something that isn't working?"**
3. **"Have you tried any existing solutions for this? If so, which ones?"**
4. _(If they tried something)_ **"What specifically didn't work about them? What was the gap or frustration?"**

## Section 2: Deployment Model

5. **"Are you open to SaaS (vendor-hosted), self-hosted, or either?"**
6. _(If self-hosted is in scope)_ **"Preferred deployment method — Docker, native package, or no preference?"**
7. _(If self-hosted is in scope)_ **"Where would you host it — home server, VPS, cloud VM?"**

## Section 3: Budget

8. **"What's your budget band for this?"** Present the options:
   - Free / open-source only
   - Low (up to $20/mo)
   - Mid ($20-200/mo)
   - High ($200+/mo)
   - Enterprise / negotiated
9. **"Is there a one-time setup budget, or just ongoing costs?"**
10. **"Is transparent pricing important, or are you okay with 'contact sales' vendors?"**

## Section 4: Who and Scale

11. **"Who is this for — personal use, your business, a client, or a side project?"**
12. **"Any scale context I should know? Number of users, data volume, requests per second, whatever applies."**
13. _(If client project)_ **"Is the client's budget different from your usual range?"**

## Section 5: Hard Requirements (Deal-Breakers)

14. **"What are the absolute must-haves? If a tool is missing any one of these, it's out — no exceptions."**
15. **"Let me push on specifics. For each must-have, can you make it concrete?"** Prompt with examples:
    - "Must have a REST API" (not just "good integrations")
    - "Must support Linux" (not just "cross-platform")
    - "Must allow automated data export via API" (not just "data portability")
16. **"Are there any technical constraints that would rule things out — specific language, framework, protocol, or platform requirements?"**

## Section 6: Nice-to-Haves

17. **"What would be nice but isn't a deal-breaker?"**
18. **"If two tools tie on must-haves, what would make you pick one over the other?"**

## Section 7: Integrations

19. **"Does this need to integrate with anything specific? Common ones: Google Workspace, GitHub, Slack, specific APIs, webhooks."**
20. **"Is API access (REST/GraphQL) important for building your own integrations?"**

## Section 8: Data Portability

21. **"How important is data portability for this? Three levels:"**
    - Must have automated backup/export via API
    - Periodic manual export is fine
    - Not important for this use case

Read `context/general-prefs.md` — the user's standing preference is strongly pro-backup. Reference this: **"Your general prefs say you care a lot about data portability. Same here, or different for this search?"**

## Section 9: Prior Research and Known Candidates

22. **"Have you done any prior research on this? Blog posts, Reddit threads, recommendations from anyone?"**
23. **"Any specific tools you already want me to evaluate?"**
24. **"Any tools to exclude — ones you've already tried, ruled out, or just don't want?"**
25. **"Do you know of any 'category leaders' in this space, even if you're not sure they're right for you?"**

## Section 10: Wrap-Up

26. **"Anything else I should know — constraints, preferences, timeline, context that doesn't fit the above?"**
27. **"How urgent is this? Browsing vs actively need to pick something this week?"**

---

## After All Sections

1. Write the completed spec to `context/from-human/stack-requirements.md` using the template format from `context/from-human/stack-requirements-template.md`.
2. Also update `CONTEXT.md` at the repo root with a summary: what's being evaluated, budget band, key deal-breakers, and deployment model.
3. Show the user a compact summary of what was captured.
4. Ask: **"Anything I got wrong or want to add?"**
5. Tell the user: **"Requirements locked in. Run `/start-research` when you're ready."**

## Style Rules

- Be conversational, not robotic. This is an interview, not a government form.
- Ask the listed questions, but use natural phrasing — you can rephrase slightly to fit the flow.
- If the user gives a rambling answer, extract the structured fields and confirm: "So I'm capturing: SaaS preferred, budget up to $50/mo, must have API access. Sound right?"
- Don't skip sections, but if the user pre-answers something in an earlier response, acknowledge it and move on.
- If the user pastes or dictates a big block of text covering multiple sections, parse it all at once rather than forcing them through the remaining questions one by one.
- If a question is clearly not applicable (e.g., "where would you host it" when they said SaaS-only), skip it without asking.
