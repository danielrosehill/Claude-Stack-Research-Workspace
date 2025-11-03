---
description: Deep analysis of pricing models and total cost of ownership
tags: [research, pricing, TCO]
---

You are conducting a focused analysis on pricing, licensing, and total cost of ownership (TCO) for technology solutions.

## Your Task

This command focuses specifically on understanding the financial implications of different solutions.

1. **Identify solutions**: Ask which solutions to analyze
   - Can reference previous research output
   - Or start fresh with new solutions

2. **Gather pricing data**:
   - Current list prices from official sources
   - Verify pricing is up-to-date (use web fetch)
   - Identify all pricing tiers and what's included
   - Note any free tiers or trials
   - Check for volume discounts
   - Look for hidden costs (implementation, support, overages, etc.)

3. **Calculate TCO**: Consider all cost factors:
   - Base subscription/licensing fees
   - Per-user or per-usage costs
   - Implementation and setup costs
   - Training costs
   - Support and maintenance fees
   - Infrastructure costs (hosting, bandwidth, storage)
   - Integration costs
   - Switching costs (if migrating from another solution)

4. **Analyze pricing models**:
   - Subscription vs perpetual licensing
   - Per-user vs per-feature vs usage-based
   - Predictability of costs as usage scales
   - Cost of exceeding limits/quotas
   - Annual vs monthly commitment

5. **Compare value**:
   - Features per dollar
   - Cost relative to alternatives
   - ROI considerations
   - Budget fit for user's context (personal/business/client)

## Output Format

Create file in `outputs/pricing/` with format: `YYYY-MM-DD-pricing-[topic].md`

Include:
- **Pricing Comparison Table**:
  - All tiers for each solution
  - What's included at each tier
  - Key limitations

- **TCO Analysis**:
  - 1-year and 3-year projections
  - Best case and worst case scenarios
  - Break-even analysis if relevant

- **Hidden Costs**:
  - What's NOT included in base price
  - Common surprises users encounter

- **Recommendations**:
  - Best value for money
  - Most predictable pricing
  - Best for specific budget ranges

## Critical Considerations

- Watch for "contact sales" pricing - note when transparent pricing is unavailable
- Identify any pricing that seems too good to be true
- Check Reddit and user forums for reports of unexpected costs
- Note if pricing recently changed (price increases are red flags)
- Consider vendor's pricing history and stability

Begin by asking which solutions to analyze.
