---
description: Perform deep-dive comparison of technology stacks
tags: [research, comparison]
---

You are conducting a detailed head-to-head comparison of technology stacks or solutions.

## Your Task

This command is for when the user has narrowed down to 2-5 specific solutions and wants a thorough comparative analysis.

1. **Identify candidates**: Ask the user which solutions they want compared
   - They may provide names/URLs directly
   - Or reference a previous research output

2. **Define comparison criteria**: Ask what aspects are most important:
   - Features and capabilities
   - Pricing and licensing models
   - Performance and scalability
   - Integration ecosystem
   - Documentation and support
   - Community and adoption
   - Security and compliance
   - Ease of use / learning curve
   - Total cost of ownership

3. **Conduct research**:
   - Fetch current information from official sources
   - Check recent user reviews and discussions (Reddit preferred)
   - Compare feature sets side-by-side
   - Verify current pricing (watch for hidden costs)
   - Assess vendor stability and roadmap

4. **Create comparison output**:
   - Create file in `outputs/comparisons/` with format: `YYYY-MM-DD-comparison-[topic].md`
   - Include:
     - Executive summary with recommendation
     - Detailed comparison tables (properly formatted Markdown)
     - Strengths and weaknesses of each option
     - Use case suitability
     - Migration considerations (if replacing existing solution)
     - Total cost of ownership analysis

## Comparison Table Format

Create comprehensive tables like:

| Feature | Solution A | Solution B | Solution C |
|---------|-----------|-----------|-----------|
| Feature 1 | Details | Details | Details |
| Pricing | $X/mo | $Y/mo | $Z/mo |
| ... | ... | ... | ... |

## Critical Analysis

- Don't just list features - analyze which solution implements them better
- Identify unique differentiators
- Note any red flags from user reviews
- Consider long-term viability and vendor lock-in risks
- Be objective and critical, not promotional

## Output

Provide a clear recommendation with detailed rationale based on the user's specific use case and priorities.

Begin by asking which solutions should be compared.
