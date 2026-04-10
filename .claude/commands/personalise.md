---
description: Interview the user about their standing software preferences and update general-prefs.md
tags: [setup, preferences]
---

You are personalising this stack research workspace to the user's standing software preferences. These preferences apply across ALL stack searches done in workspaces cloned from this template — they're the defaults, not per-search overrides.

## Instructions

Read `context/general-prefs.md` first. If it already has substantial content, show the user what's there and ask: **"Want to update any of this, or add to it?"** Then jump to whichever sections need updating.

If it's empty or template-default, run the full interview below. Ask the listed questions — do not improvise new ones.

---

## Section 1: Pricing Stance

1. **"When you're shopping for tools, what's your typical budget comfort zone — free/OSS, cheap SaaS, mid-range, or it depends?"**
2. **"How do you feel about vendors that say 'contact us for pricing'?"**
3. **"Is there a monthly spend ceiling above which you'd basically never go for a personal/business tool?"**
4. **"Do you prefer monthly billing, annual commitments, or one-time purchases?"**

## Section 2: SaaS vs Self-Hosted

5. **"General preference — SaaS, self-hosted, or case-by-case?"**
6. **"If self-hosted is an option, what's your hosting setup? Home server, VPS, cloud?"**
7. **"How much ops overhead are you willing to take on for self-hosted tools — minimal Docker deploys, or comfortable managing full stacks?"**
8. **"Do you have a preference for paid self-hosted / open-core over pure free OSS?"**

## Section 3: Data Portability

9. **"How important is data export and backup to you, on a scale from 'not really' to 'absolute deal-breaker'?"**
10. **"Do you require API-based automated backup, or is periodic manual export acceptable?"**
11. **"Any specific backup destinations you target — S3, B2, local, Google Drive?"**

## Section 4: UI/UX Preferences

12. **"Power user tools with steep learning curves — fine, or do you prefer polished and intuitive?"**
13. **"Web UI vs native desktop app vs CLI — rank your preference."**
14. **"How do you feel about tools that change their UI frequently?"**

## Section 5: Platforms

15. **"What's your desktop OS?"**
16. **"Mobile OS?"**
17. **"Server OS for self-hosted deployments?"**
18. **"Any cloud provider you're already invested in — AWS, GCP, Azure, other?"**

## Section 6: Integrations

19. **"What tools and services do you use daily that new tools usually need to work with?"**
20. **"Is Google Workspace integration important?"**
21. **"Is GitHub integration important?"**
22. **"How much do you value a well-documented API for building your own integrations?"**

## Section 7: Open Source

23. **"How do you weigh open source vs commercial — strong preference, slight preference, or not a factor?"**
24. **"When evaluating OSS projects, what matters most — project maturity, active maintenance, ease of deployment, or community size?"**
25. **"Are you comfortable contributing to or forking an OSS project if it's close but not quite right?"**

## Section 8: AI Features

26. **"Are AI features a meaningful differentiator when comparing tools, or mostly marketing noise?"**
27. **"Do you distinguish between genuine AI integration and 'we added a ChatGPT wrapper' AI?"**

## Section 9: Recurring Deal-Breakers

28. **"Are there deal-breakers that apply to almost every search — things you always require regardless of the specific tool?"**
29. **"Are there categories of tools you always avoid — e.g., enterprise-only, Windows-only, no-API, walled-garden?"**
30. **"Any vendor red flags that would make you skip a tool regardless of features?"**

---

## After the Interview

Write the updated preferences to `context/general-prefs.md` in clear prose, organised by theme. Write it as if briefing a research assistant — not a checklist, but a narrative:

> "The user prefers SaaS over self-hosted but is comfortable with Docker deploys when the SaaS options are too expensive. Budget ceiling is typically $X/mo for personal tools. Transparent pricing is strongly preferred — 'contact sales' vendors are usually excluded..."

Show the user what was written and ask: **"Anything I got wrong or want to add?"**

Make edits as requested.
