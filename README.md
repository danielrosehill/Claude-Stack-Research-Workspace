# Claude Stack Research Workspace

A dedicated workspace for researching and evaluating software components, technology stacks, and solutions using Claude Code.

## Purpose

This repository provides a structured environment for conducting thorough technical research and stack evaluations. It's designed to help identify, compare, and recommend software solutions for various projects - whether personal, business, or client work.

## Directory Structure

```
├── prompts/           # Research requests and specifications
│   ├── drafting/     # Work-in-progress prompts
│   ├── queue/        # Prompts ready to be processed
│   └── run/          # Completed/archived prompts
├── outputs/          # Research findings and analyses
│   └── recommendations/  # Final recommendation reports
├── context/          # Additional context files for research projects
└── .claude/          # Claude Code configuration
    ├── commands/     # Custom slash commands for research workflows
    └── agents/       # Specialized subagents for research tasks
```

## Workflow

### Typical Research Flow

1. **Define requirements**: Run `/define-stack` (interactive interview) or `/voice-intake` (from audio) to capture what you need, budget, deal-breakers, and preferences into a structured spec
2. **Personalise** (first time only): Run `/personalise` to set your standing software preferences
3. **Research**: Run `/start-research` — it reads your spec and begins evaluating candidates
4. **Compare**: Use `/compare-stacks` for head-to-head analysis of shortlisted candidates
5. **Price check**: Use `/pricing-analysis` for deep cost/TCO analysis
6. **Finalize**: Use `/generate-report` to synthesize everything into a shareable recommendation

### Research Methodology

Research outputs follow these principles:

- **Quality over Quantity**: Focus on 5 strong candidates rather than 10 mediocre options
- **Current Information**: Use web fetch to ensure pricing and features are up-to-date
- **Critical Evaluation**: Analyze features against specifications with deal-breaker awareness
- **Multi-source Validation**: Cross-reference information from multiple sources (Reddit, official docs, reviews)
- **Practical Recommendations**: Rank solutions based on fit with use case and priorities

## Output Formats

Research deliverables typically include:

- **Detailed Analysis**: Comprehensive evaluation of each solution
- **Comparison Tables**: Side-by-side feature comparisons in Markdown format
- **Recommendations**: Ranked list with rationale
- **Links**: Direct links to vendors, documentation, and relevant resources
- **Edge Cases**: Near-miss solutions that fell short on deal-breakers (noted separately)

## Multi-Run Research

For sequential research questions:

1. Individual markdown files are created for each question
2. A final synthesized report combines all findings
3. Files are organized chronologically or by topic

## Custom Commands

### Intake Commands
- `/define-stack` - Structured interview (27 questions) to capture stack search requirements
- `/voice-intake` - Transcribe a voice note and parse it into structured requirements
- `/personalise` - Set your standing software preferences (run once per template clone)

### Research Commands
- `/start-research` - Initialize research — reads your requirements and begins evaluation
- `/compare-stacks` - Deep-dive comparison of technology stacks
- `/pricing-analysis` - Focused analysis on pricing models and cost comparison
- `/generate-report` - Synthesize findings into final report

## Custom Subagents

Specialized AI agents for research tasks:

- **stack-researcher** - Primary research agent for technology evaluation
- **pricing-analyzer** - Focused on cost analysis and TCO comparison
- **report-synthesizer** - Combines multiple research documents into cohesive reports

## Getting Started

1. Clone this template and open Claude Code in the new repo
2. Run `/personalise` to set your standing software preferences
3. Run `/define-stack` to describe what you're looking for (or `/voice-intake` with an audio note)
4. Run `/start-research` to begin the evaluation

## Integration with MCP Tools

Common MCP workflows after research completion:

```
Can you convert to PDF and email to me?
Can you save that to my Google Drive?
Can you upload this to Cloudinary?
```

## Template Usage

This repository serves as a template. The `.gitkeep` files ensure the full directory structure is preserved when cloning.

To initialize a new research workspace:

```bash
git clone <this-repo> new-research-project
cd new-research-project
rm -rf .git
git init
```

## Maintenance

- Run `./scripts/add-gitkeep.sh` to add `.gitkeep` files to any new empty directories
- Keep prompts organized by moving completed ones to `prompts/run/`
- Archive old research to maintain workspace clarity

---

**Note**: This workspace is optimized for use with Claude Code CLI and follows the conventions outlined in `CLAUDE.md`.
