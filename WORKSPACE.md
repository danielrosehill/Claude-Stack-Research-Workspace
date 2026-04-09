# WORKSPACE — Path Map

Quick reference for where things live in this stack-research workspace. For the full contract, see `CLAUDE.md`.

## Inputs (human → agent)

| Path | Purpose |
|---|---|
| `context/from-human/` | Spec, requirements, constraints, deal-breakers |
| `context/from-internet/` | Vendor docs, review threads, reference material |
| `prompts/drafting/` | Evaluation requests under development |
| `prompts/queue/` | Prompts ready to run, in order |
| `private/` | Gitignored — client info, budget details, unshared drafts |

## Agent surfaces

| Path | Purpose |
|---|---|
| `context/from-history/` | Compacted summaries of prior evaluation rounds |
| `prompts/run/initial/` | First-pass evaluation prompts that have been executed |
| `prompts/run/subsequent/` | Follow-up prompts (deeper dives, spec changes) |
| `outputs/individual/` | Raw output from each prompt run (`YYYY-MM-DD-{slug}.md`) |
| `outputs/aggregated/markdown/` | Daily digests and multi-output synthesis |
| `outputs/aggregated/pdf/` | PDF exports |
| `outputs/final/` | Polished recommendation reports |
| `notes/` | Working notes, methodology, hunches |
| `slash-commands/` | Custom commands for this workspace |

## Root orientation files

| File | Role |
|---|---|
| `SCOPE.md` | What this template is and isn't |
| `CONTEXT.md` | Always-on background — what's being evaluated, budget, constraints |
| `MEMORY.md` | Persistent memory policy (default store: `context/from-history/`) |
| `WORKSPACE.md` | This file — path map |
| `CLAUDE.md` | Full agent instructions and evaluation style |
