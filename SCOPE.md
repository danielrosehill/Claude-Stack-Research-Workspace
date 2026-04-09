# SCOPE — Claude-Stack-Research-Workspace

## What this repo is

A Claude Code workspace template specialised for **software/stack evaluation research** — picking tools, components, and vendors against a spec. It follows the same folder contract as the other Claude research templates (`context/`, `prompts/`, `outputs/`, orientation files at the root) but the research style is tuned for stack-selection work.

## How it differs from the general research template

- **Output style is opinionated.** Every evaluation ends with a ranked shortlist (prefer 5 strong candidates over 10 weak ones), comparison tables, deal-breaker flagging, and current pricing with links.
- **Source skepticism is baked in.** Treat third-party "reviews" as potentially promotional. Prefer primary docs, Reddit discourse, and cross-referenced sources.
- **Multi-run workflows are expected.** A single stack question often spawns several sub-questions — each answered in its own `outputs/individual/` file, then consolidated.

## When to use this one

Use this template when the research task is "help me pick a tool/stack/vendor". Examples: picking a vector DB, choosing between SaaS email APIs, evaluating self-hosted note apps, comparing LLM inference runtimes.

## When to use a different template instead

- General investigative research (not vendor selection) → `Claude-Research-Workspace-General-Template`
- Research that will be **published** publicly with voice-note capture and export pipelines → `Claude-Research-Space-Public-Template`
