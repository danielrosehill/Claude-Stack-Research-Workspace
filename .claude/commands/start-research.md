---
description: Initialize a new stack research project
tags: [research, setup]
---

You are initiating a new technology stack research project.

## Your Task

### Step 1: Check for existing requirements

Look for `context/from-human/stack-requirements.md`. This file is produced by `/define-stack` (interactive) or `/voice-intake` (from audio).

**If it exists**: read it, summarize the key parameters to the user, and ask "Ready to start researching, or do you want to adjust anything first?"

**If it does NOT exist**: check if the user has a prompt file in `prompts/queue/` or `prompts/drafting/`.
- If yes, read it and extract requirements from it.
- If no, tell the user: "No stack requirements defined yet. You can either:
  - Run `/define-stack` for a guided interview
  - Run `/voice-intake` to transcribe a voice note
  - Or describe what you're looking for right now and I'll capture it."

If the user describes their needs inline, extract structured parameters and write `context/from-human/stack-requirements.md` before proceeding — follow the same field structure as the template.

### Step 2: Validate requirements are complete

Check that these critical fields are populated:
- What is being evaluated (the core need)
- Budget band
- At least one deal-breaker OR explicit "no deal-breakers"
- Deployment model preference

If any are missing, ask specifically for those — don't re-run the full interview, just fill the gaps.

### Step 3: Confirm research scope

From the requirements, confirm:
- How many top candidates to focus on (default: 5)
- Any specific vendors/solutions to include or exclude
- Open-source, commercial, or both

### Step 4: Set up output structure

Create a timestamped output file in `outputs/individual/` using format: `YYYY-MM-DD-{slug}.md`

### Step 5: Begin research

Read all context files:
- `context/from-human/stack-requirements.md` — the spec
- `context/from-human/` — any other human-provided context
- `context/general-prefs.md` — standing preferences
- `context/from-history/` — prior evaluation rounds (if any)
- `context/from-internet/` — saved vendor docs (if any)
- `CONTEXT.md` — root orientation

Then conduct the research:
- Use web search to find current solutions
- Validate pricing and features are up-to-date
- Cross-reference multiple sources (official docs, Reddit, reviews)
- Apply deal-breakers as binary filters
- Focus on quality candidates that match the specification

## Research Methodology

- Prioritize solutions that meet ALL deal-breaker requirements
- Verify current pricing and feature availability via web fetch
- Look for real-world user feedback (Reddit preferred)
- Consider total cost of ownership, not just licensing
- Evaluate vendor stability and support quality
- Apply source skepticism (see CLAUDE.md for the hierarchy)

## Output Format

Follow the standard output format from CLAUDE.md:
1. Provenance block (YAML frontmatter)
2. AI-assisted research disclaimer
3. Headline Recommendation
4. Shortlist (ranked, up to 5)
5. Comparison Table
6. Detailed Evaluations
7. Excluded — Deal-Breakers
8. Open Questions
9. Sources (dated, linked)

Begin by checking for existing requirements.
