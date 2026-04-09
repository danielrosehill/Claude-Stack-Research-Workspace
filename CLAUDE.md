# Stack Research Workspace — Claude Code Instructions

## What This Is

A Claude Code workspace for **stack and software evaluation research** — helping the user pick tools, components, and vendors against a specific spec. It follows the same folder contract as the other Claude research templates, but the output style is tuned for vendor-selection work: ranked shortlists, comparison tables, current pricing, deal-breaker flagging, and source skepticism.

## Root orientation files (read these first)

Four short files at the repo root frame every session. Read them before doing anything non-trivial:

| File | Role |
|---|---|
| `SCOPE.md` | What this template is and isn't |
| `CONTEXT.md` | Always-on background: what's being evaluated, budget band, deal-breakers |
| `MEMORY.md` | Persistent-memory policy (default store: `context/from-history/`) |
| `WORKSPACE.md` | Quick path map of the folder contract below |

The live research state lives in `outputs/individual/` and `context/from-history/`.

## Directory Map

| Directory | Purpose |
|-----------|---------|
| `context/from-human/` | Spec, requirements, constraints, deal-breakers |
| `context/from-history/` | Compacted summaries from previous evaluation rounds |
| `context/from-internet/` | Vendor docs, reviews, reference material |
| `prompts/drafting/` | Prompts under development |
| `prompts/queue/` | Prompts ready to run (in order) |
| `prompts/run/initial/` | First-pass evaluation prompts |
| `prompts/run/subsequent/` | Follow-up prompts that build on earlier outputs |
| `outputs/individual/` | Raw output from each prompt run |
| `outputs/aggregated/markdown/` | Daily digests, multi-output synthesis |
| `outputs/aggregated/pdf/` | PDF exports |
| `outputs/final/` | Polished recommendation reports |
| `slash-commands/` | Custom slash commands for this workspace |
| `notes/` | Working notes, methodology |
| `private/` | Gitignored — client info, budget details, unshared drafts |

## Research Workflow

### Prompts given directly in chat

If the user pastes a stack-evaluation request directly in the chat rather than placing a file in `prompts/queue/`, first persist it:

1. Save the prompt verbatim to `prompts/run/initial/YYYY-MM-DD-{slug}.md` (or `prompts/run/subsequent/` if it builds on prior outputs), using today's date.
2. Then process it following the "Running a prompt" workflow below.

Every piece of research must have a corresponding dated prompt file on disk.

### Running a prompt

1. Read `CONTEXT.md` and all files in `context/from-human/`, `context/from-history/`, and `context/from-internet/` to build full context — especially the hard requirements and budget band.
2. Read the prompt file from `prompts/queue/` or `prompts/run/`.
3. Conduct the research. **Use web fetch aggressively** — pricing and feature availability change constantly, and any claim about cost or capability must be verified against a live source.
4. Save the output to `outputs/individual/YYYY-MM-DD-{slug}.md` using the Output Format below.
5. If the prompt came from `prompts/queue/`, move it to the appropriate `prompts/run/` folder.
6. **Same-day consolidation check**: if other outputs dated today already exist in `outputs/individual/`, remind the user that `/consolidate-day` is available. Do not auto-merge.
7. Report what was run, the output path, and the headline recommendation.

### Building on previous work

Before running any subsequent prompt, always read:
- All files in `context/from-history/` (compacted prior evaluation rounds)
- All files in `context/from-human/` (spec, constraints)
- The most recent outputs in `outputs/individual/` if relevant

**Re-verify before reusing.** Pricing and feature data in `context/from-history/` decays fast. If a prior compaction said "Vendor X costs $50/mo and supports feature Y", re-check both with a live fetch before letting that fact drive a new recommendation.

## Evaluation Style

This is the part that makes this template different from the general research template. Every evaluation output should reflect these principles.

### Quality over quantity

Prefer a shortlist of **5 strong candidates** over a list of 10 mediocre options. If a candidate is clearly weak, don't pad the table with it.

### Deal-breakers are binary

Read `CONTEXT.md` for hard requirements. A candidate missing a deal-breaker is **excluded from the main shortlist**, regardless of how good it looks otherwise. If a near-miss candidate is interesting, mention it in a separate "Excluded — deal-breaker" section with a one-line explanation, not in the main ranked table.

### Source skepticism

Third-party "top 10" review articles are frequently undisclosed paid promotions. Rank sources roughly like this:

1. **Primary**: official docs, pricing pages, vendor changelogs (verify directly via fetch)
2. **Strong secondary**: Reddit threads, HN discussions, GitHub issue trackers — unfiltered user discourse
3. **Weak secondary**: blog "reviews", aggregator/comparison sites, listicles — treat as leads, not evidence
4. **Cross-reference everything**. A claim that appears in one blog post and nowhere else should be flagged as unverified.

### Comparison tables

Include at least one markdown comparison table per evaluation. Columns typically: Candidate, Pricing (with date verified), Deal-breaker coverage, Key strengths, Key weaknesses, Source link. Tables supplement the prose — never replace it.

### Pricing currency

Every price mentioned must carry the date it was verified and a link to the source page. Stale pricing is worse than no pricing.

### Budget context

If the user hasn't flagged a higher budget band in `CONTEXT.md`, assume the standard personal/small-business band. If they have, adjust the candidate pool accordingly. Don't waste a turn asking "is this for a client?" — the user will proactively tell you when it matters.

## Output Format

Every output in `outputs/individual/` **must begin with a provenance block** before any content:

```
---
prompt_path: prompts/run/initial/2026-04-09-example.md
prompt_summary: One-sentence restatement of what was asked.
run_date: 2026-04-09
---
```

Then the body, in this order:

1. `> **Note**: This output was produced through AI-assisted research using Claude Code.` disclaimer
2. `## Headline Recommendation` — one paragraph: the top pick and why
3. `## Shortlist` — ranked list of up to 5 candidates with brief rationale
4. `## Comparison Table` — markdown table covering the shortlist
5. `## Detailed Evaluations` — one subsection per shortlisted candidate
6. `## Excluded — Deal-Breakers` (optional) — near-misses that failed a hard requirement
7. `## Open Questions` — anything that needs user input before a final call
8. `## Sources` — every link used, grouped by candidate where possible, each with the date it was verified

Write every output so it stands alone — a reader should be able to understand the recommendation without reading other files in the repo.

### Same-day consolidation

When several evaluation prompts are run in one day, use `/consolidate-day` to merge the individual outputs into `outputs/aggregated/markdown/YYYY-MM-DD-daily-digest.md`. The digest uses the provenance blocks from each output to build a "prompts run today" table automatically. The originals stay in place.

### Compaction

When context grows large, or at the end of an evaluation round:

- Read all files in `outputs/individual/`
- Write `context/from-history/YYYY-MM-DD-compaction.md` covering: ranked shortlists, eliminated candidates and why, unresolved deal-breakers, open questions, and dated pricing notes
- This becomes the baseline context for subsequent rounds

### Final report

When the user is ready to lock in a decision, synthesise into `outputs/final/YYYY-MM-DD-{topic}-recommendation.md` — a single polished document containing the final recommendation, the full comparison, the rationale, and the sources. This is the shareable deliverable.

## MCP Workflows

Common follow-ups after an evaluation:

- "Convert to PDF and email it to me"
- "Save that to my Google Drive"
- "Upload this to Cloudinary"

Use whichever MCP is available in the session. If none is connected, fall back to writing the export to `outputs/aggregated/pdf/` or `outputs/final/` and telling the user where it landed.
