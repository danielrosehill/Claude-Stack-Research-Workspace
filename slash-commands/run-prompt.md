# Run Next Prompt

Execute the next research prompt in the workflow.

## Steps

1. Check `prompts/queue/` for any queued prompts. If found, take the first one (alphabetically).
2. If no queued prompts, check `prompts/run/initial/` for unexecuted initial prompts.
3. If no initial prompts remain, check `prompts/run/subsequent/` for follow-up prompts.
4. Before running, read all files in `context/from-human/`, `context/from-history/`, and `context/from-internet/` to build full context.
5. Execute the prompt: conduct the research, use web search and reasoning as needed.
6. Save output to `outputs/individual/YYYY-MM-DD-{descriptive-slug}.md`. Every output MUST begin with a YAML-ish provenance block before any content:

   ```
   ---
   prompt_path: prompts/run/initial/2026-04-09-example.md
   prompt_summary: One-sentence restatement of what was asked.
   run_date: 2026-04-09
   ---
   ```

   Then the body, with:
   - `## Key Findings` as the opening section
   - `## Sources` as the closing section
   - Clear markdown structure throughout

   The provenance block is non-negotiable — it lets a reader (and future compaction passes) link any output back to the exact prompt that generated it without hunting through the repo.

7. If the prompt came from `prompts/queue/`, move it to `prompts/run/initial/` or `prompts/run/subsequent/` as appropriate.
8. **Same-day consolidation check**: after saving, look at `outputs/individual/` for other files dated today. If there are now 2+ outputs from today on related topics, remind the user they can run `/consolidate-day` to merge them into a single daily digest. Do not auto-merge — wait for the user.
9. Report what was run and a brief summary of findings, including the path to the new output file.
