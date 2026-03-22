# Quality Revision Handoff Template

> Used when an artifact fails the quality gate and needs revision by the originating agent.
> Maximum 2 revision attempts before escalation to user.
> The goal is to give the agent precise, actionable feedback -- not vague "do better" instructions.

## Handoff: quality_revision

**From:** quality-gate  **To:** {originating_agent}  **Revision:** {attempt}/2
**Artifact:** {file path or artifact name}  **Phase:** {current FSM state}
**Date:** {date}

### What Failed
- {Specific quality check that failed}
- {Threshold required vs. score achieved}
- {Section(s) that caused the failure}

Example:
- S/N score: 0.32 (threshold: 0.5)
- ICP completeness: 62/100 (threshold: 80)
- Market research viability score missing methodology section

### Failure Category
- [ ] Formal (missing sections, wrong structure, incomplete template)
- [ ] Semantic (doesn't match creator context, wrong language register, misidentified audience)
- [ ] Information-theoretic (no new insight, just restated user input, no evidence from sources)
- [ ] Framework (incorrect application of FIOVA frameworks, wrong Limiting Belief diagnosis, misidentified Awareness Level)
- [ ] Economics (LTV:CAC below threshold, unrealistic pricing, missing margin analysis)

### Score Breakdown
| Dimension | Score | Threshold | Status |
|-----------|-------|-----------|--------|
| Mode match (M) | {0.0-1.0} | {threshold} | {PASS/FAIL} |
| Genre match (G) | {0.0-1.0} | {threshold} | {PASS/FAIL} |
| Technical accuracy (T) | {0.0-1.0} | {threshold} | {PASS/FAIL} |
| Framework application (F) | {0.0-1.0} | {threshold} | {PASS/FAIL} |
| Whole coherence (W) | {0.0-1.0} | {threshold} | {PASS/FAIL} |

### Specific Feedback
{Exactly what needs to change, citing specific sections:}

- Section {N}: {section name} -- {what is wrong and what it should contain}
- Section {N}: {section name} -- {what is missing or incorrect}
- Data gap: {specific data point needed but not present}

Example:
- Section 3 (Demand Signals): Only 1 source cited. Need corroboration from 3+ independent sources per Cross-Validation Rule.
- Section 6 (Voice of Customer): Contains paraphrased language, not verbatim. Pull exact phrases from Reddit/review sources.
- Section 8 (Opportunity Assessment): Viability score present but scoring methodology not shown. Show how each factor was weighted.

### What Passed
{Sections that are good -- do NOT rewrite these:}

- Section {N}: {section name} -- {why it passed, what's good about it}
- Section {N}: {section name} -- {quality note}

Example:
- Section 2 (Market Definition & Sizing): TAM/SAM/SOM properly sourced with clear methodology. Keep as-is.
- Section 5 (Competitive Landscape): 5 direct competitors identified with pricing and positioning. Solid.

### Revision Instructions
{Clear, actionable instructions for the rewrite:}

1. {First priority fix -- most impactful change}
2. {Second priority fix}
3. {Third priority fix}

Constraints:
- Do NOT rewrite sections listed under "What Passed"
- Do NOT change the document structure or template
- Focus revisions on the specific sections cited in "Specific Feedback"
- If new data is needed, consult {specific sources} first
- Target score after revision: {target} (current: {current})

### Escalation Warning
{Only shown on attempt 2/2:}

> This is revision attempt 2 of 2. If this revision does not pass the quality gate,
> the artifact will be escalated to the user with the current score and specific
> gaps identified. The user will be asked to provide additional context or approve
> the artifact at its current quality level.

### Revision History
| Attempt | Score | Primary Issue | What Changed |
|---------|-------|---------------|-------------|
| Original | {score} | {issue} | -- |
| Revision 1 | {score} | {issue} | {what was fixed} |
| Revision 2 | {score} | {issue} | {what was fixed} |
