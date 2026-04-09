# Consolidate Same-Day Outputs

Merge multiple individual outputs from the same day into a single daily digest. Use this when several prompts were run in one session and the results belong together as one coherent document.

## When to use

- 2+ files in `outputs/individual/` share the same `YYYY-MM-DD` prefix
- The user ran a batch of related prompts and wants one readable document instead of scattered files
- Before `/compact` or `/aggregate` at the end of a research session

## Steps

1. Determine the target date. Default: today. If the user names a date, use that.
2. List all files in `outputs/individual/` whose filename starts with `YYYY-MM-DD-`. If fewer than 2 match, tell the user there is nothing to consolidate and stop.
3. Read each matched file in full, including the provenance block at the top.
4. Create `outputs/aggregated/markdown/YYYY-MM-DD-daily-digest.md` with this structure:

   ```
   # Daily Research Digest — YYYY-MM-DD

   > **Note**: This digest was produced through AI-assisted research using Claude Code. It consolidates N individual outputs from the same day.

   ## Overview

   One paragraph: what was investigated today and why these pieces belong together.

   ## Prompts run today

   | # | Prompt summary | Prompt path | Output path |
   |---|---|---|---|
   | 1 | ... | prompts/run/initial/... | outputs/individual/... |
   | 2 | ... | ... | ... |

   ## Consolidated findings

   Reorganise the key findings thematically — not chronologically by prompt. Merge overlapping points, flag contradictions between runs explicitly.

   ## Per-prompt detail

   ### 1. {prompt summary}

   Full body of the first individual output (minus its provenance block — that's already in the table above).

   ### 2. {prompt summary}

   ...

   ## Consolidated sources

   Deduplicated union of every `## Sources` section from the merged outputs.
   ```

5. Do **not** delete the original files in `outputs/individual/`. The digest is a view on top of them, not a replacement — they remain the source of record.
6. Report the path to the new digest and the number of outputs merged.

## Notes

- If the outputs clearly belong to unrelated topics, say so and ask the user whether to still force a single digest or split into multiple digests by theme.
- The provenance block requirement from `/run-prompt` is what makes this command cheap — every individual output already carries its own prompt path and summary, so the digest table is mechanical to build.
