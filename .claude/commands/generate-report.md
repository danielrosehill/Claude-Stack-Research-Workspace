---
description: Synthesize multiple research documents into a final comprehensive report
tags: [research, reporting, synthesis]
---

You are synthesizing multiple research documents into a comprehensive final report.

## Your Task

This command is used when research has been conducted across multiple sessions or documents and needs to be combined into a cohesive final deliverable.

1. **Identify source documents**: Ask the user which research files to synthesize
   - Check `outputs/` directory for recent research
   - List available documents by date and topic
   - Confirm which ones to include

2. **Read and analyze sources**:
   - Read all specified documents
   - Identify common themes and findings
   - Note any contradictions or evolution in thinking
   - Extract key insights and recommendations

3. **Structure the final report**:
   - **Executive Summary**: Key findings and top recommendation(s)
   - **Research Methodology**: What was researched and how
   - **Requirements Review**: Original specifications/needs
   - **Detailed Findings**: Organized by theme or category
   - **Comparative Analysis**: Side-by-side evaluation
   - **Recommendations**: Ranked recommendations with detailed rationale
   - **Implementation Considerations**: Next steps, migration paths, etc.
   - **Appendices**:
     - Links to all vendors
     - Research sources
     - Detailed pricing tables
     - Technical specifications

4. **Create comprehensive tables**:
   - Feature comparison matrix
   - Pricing comparison
   - Pros/cons summary
   - All properly formatted as Markdown tables

5. **Quality assurance**:
   - Ensure all links are included and functional
   - Verify no contradictory information
   - Check that recommendations align with stated priorities
   - Confirm pricing and features are current

## Output Format

Create file in `outputs/recommendations/` with format: `YYYY-MM-DD-final-report-[project].md`

The report should be:
- **Comprehensive**: All relevant information in one place
- **Well-organized**: Clear hierarchy and navigation
- **Actionable**: Clear next steps
- **Professional**: Suitable for sharing with stakeholders
- **Current**: All information verified as up-to-date

## Report Tone

- Professional but accessible
- Objective and evidence-based
- Critical where warranted (note red flags)
- Confident in recommendations
- Honest about limitations or unknowns

## Post-Generation

After creating the report, offer to:
- Convert to PDF using MCP tools (if available)
- Email the report
- Upload to Google Drive
- Save to Cloudinary
- Any other MCP-enabled workflow the user requests

Begin by listing available research documents and asking which to synthesize.
