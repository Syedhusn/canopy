# Standard Handoff Template

> Used for all phase transitions in the Foundation Onboarding FSM.
> Each handoff captures the complete context needed for the receiving agent
> to begin work without re-reading upstream artifacts in full.

## Handoff: {type}

**From:** {agent_id}  **To:** {agent_id}  **Phase:** {current} -> {next}
**Business:** {company name}  **Niche:** {niche}  **Date:** {date}

### Work Completed
- {Specific outputs produced in this phase}
- {Key activities and their outcomes}
- {Data sources consulted and signal quality}

### Decisions Made
- {Decision} -- rationale: {why this decision was made}
- {Alternative considered} -- rejected because: {reason}

### Artifacts Produced
- {File path}: {brief description of contents and completeness}

Example:
- `reference/market-research.md`: 9-section market research brief, viability score 74/100, 12 data sources consulted
- `reference/icp.md`: 13-section ICP document, completeness score 86/100, Limiting Belief pattern: Helpless

### Quality Score
- S/N score: {0.0-1.0}
- Signal: S=({M}, {G}, {T}, {F}, {W})
  - M (Mode match): {how well output matches creator context}
  - G (Genre match): {how well output matches document type conventions}
  - T (Technical accuracy): {factual correctness of claims and data}
  - F (Framework application): {correct use of FIOVA frameworks}
  - W (Whole coherence): {internal consistency across sections}
- Completeness: {score}/100

### Context for Next Agent
{What the receiving agent needs to know to do its job, including:}
- Key findings that should inform the next phase
- Audience language patterns discovered (verbatim phrases)
- Market dynamics that affect positioning or offer design
- Framework outputs (Limiting Belief diagnosis, Awareness Level, Market Maturity stage)

### Dependencies
- {File that must exist before the next agent can start}
- {Minimum quality threshold that must be met}
- {User input still needed, if any}

Example:
- `reference/market-research.md` must exist with S/N >= 0.5
- `reference/icp.md` must exist with completeness >= 80/100
- User must confirm niche selection before ICP build proceeds

### Open Items
- {Anything unresolved or requiring user input}
- {Sections flagged as weak by quality gate}
- {Data gaps that could not be filled from available sources}

---

## Phase-Specific Handoff Notes

### :market_research -> :build_icp
Key context to pass:
- Market maturity stage (Naive / Aware / Skeptical / Exhausted)
- Top 3 pain signals with source citations
- Demand velocity (growing / stable / declining) with evidence
- Competitive landscape summary (who occupies which positions)
- Voice of customer phrases (minimum 10 verbatim)

### :build_icp -> :build_positioning
Key context to pass:
- ICP completeness score breakdown (which sections scored highest/lowest)
- Dominant Limiting Belief pattern (Worthless / Helpless / Hopeless)
- Awareness Level of primary audience segment
- Transformation type (Status / Capability / Safety)
- Top objections with underlying real objection identified

### :build_positioning -> :build_offer
Key context to pass:
- Positioning angle selected and why
- Competitive differentiation (what gap this positioning fills)
- Market maturity implications for offer design
- Belief stack requirements (which beliefs need installing)
- Pricing signals from research (willingness to pay, competitor pricing)

### :build_offer -> :foundations_complete
Key context to pass:
- Offer tier structure with economics for each tier
- LTV:CAC ratio and margin analysis
- Guarantee design and risk assessment
- One-pager summary (loaded into company.yaml for all downstream agents)
- Belief stack mapped to content requirements
