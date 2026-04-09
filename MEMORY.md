# MEMORY — Persistence Policy

Where durable knowledge about this stack-research project lives.

## Default store

`context/from-history/` is the canonical persistent-memory store. Compacted summaries of prior evaluation rounds are written here as `YYYY-MM-DD-compaction.md` and read at the start of subsequent runs.

## What goes where

| Kind of memory | Location |
|---|---|
| Compacted findings from prior evaluation rounds | `context/from-history/` |
| Human-authored spec, requirements, constraints | `context/from-human/` |
| Web sources, vendor docs, review threads | `context/from-internet/` |
| Working notes, hunches, methodology | `notes/` |
| Private/unshared thinking, client info, budget details | `private/` (gitignored) |

## Pricing is time-sensitive

Stack research decays fast — pricing pages, feature lists, and vendor status change. When compacting, always record the **date** a price or feature was last verified. Before reusing a prior compaction in a new evaluation round, re-verify anything load-bearing (price, feature availability, vendor solvency) via web fetch rather than trusting the frozen memory.

## Compaction

When context grows large, run a compaction pass: read `outputs/individual/`, distill ranked shortlists, eliminated candidates, open questions, and unresolved deal-breakers into a dated file in `context/from-history/`. See `CLAUDE.md` → *Compaction* for the full procedure.
