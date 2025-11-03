---
description: Initialize a new stack research project
tags: [research, setup]
---

You are initiating a new technology stack research project.

## Your Task

1. **Check for prompt file**: Ask the user if they have a research specification ready in the `prompts/queue/` or `prompts/drafting/` directory
   - If yes, ask for the filename and read it
   - If no, help them create one interactively

2. **Understand requirements**: Extract key information from the prompt:
   - What type of solution are they looking for?
   - What are the must-have features (deal-breakers)?
   - What are nice-to-have features?
   - What's the budget context (personal, business, client)?
   - Any specific platform/technology preferences or constraints?

3. **Confirm research scope**:
   - How many top candidates should you focus on? (default: 5)
   - Are there any specific vendors/solutions to include or exclude?
   - Should you prioritize open-source, commercial, or both?

4. **Set up output structure**:
   - Create a timestamped output file in `outputs/`
   - Use format: `YYYY-MM-DD-[project-name].md`

5. **Begin research**:
   - Use web search to find current solutions
   - Validate pricing and features are up-to-date
   - Cross-reference multiple sources (official docs, Reddit, reviews)
   - Focus on quality candidates that match the specifications

## Research Methodology

- Prioritize solutions that meet ALL deal-breaker requirements
- Verify current pricing and feature availability
- Look for real-world user feedback (Reddit is preferred)
- Consider total cost of ownership, not just licensing
- Evaluate vendor stability and support quality

## Output Format

Your research output should include:
- Executive summary
- Detailed analysis of top 5 candidates
- Comparison table
- Recommendations with rationale
- Links to all vendors and sources
- Notes on near-misses (excluded due to deal-breakers)

Begin by asking the user about their prompt file.
