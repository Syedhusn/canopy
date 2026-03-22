# /competitor-intel

> Produce a competitive intelligence report with market landscape analysis and actionable recommendations.

## Usage
```
/competitor-intel [--focus pricing|messaging|launches|all]
```

## Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| `--focus` | No | Analysis focus area: `pricing` (pricing shifts and tier analysis), `messaging` (positioning and content evolution), `launches` (launch activity and timing), `all` (comprehensive report, default) |

## What It Does

Produces an ongoing competitive intelligence report that tracks competitor movements, pricing shifts, messaging evolution, launch activity, and market dynamics. Unlike the one-time `/analyze-competitor` skill in foundations (which produces a point-in-time snapshot), this skill produces continuous monitoring reports with change detection, vulnerability window identification, and differentiation gap analysis.

### Focus Areas

| Focus | What It Analyzes | Key Output |
|-------|-----------------|-----------|
| `pricing` | Price changes, new tiers, bundling shifts, promotional patterns, competitor pricing strategy signals | Pricing comparison matrix, pricing shift alerts, pricing strategy recommendations |
| `messaging` | Content themes, ad messaging, email angles, social positioning, ICP targeting changes | Messaging comparison matrix, differentiation gap analysis, angle opportunities |
| `launches` | Launch timing, launch types, launch tactics, promotional cadence, seasonal patterns | Launch calendar, collision detection, timing recommendations |
| `all` | Comprehensive across all dimensions | Full competitive intelligence report with battlecard updates |

### Data Sources Monitored

| Source | Intelligence Value | Monitoring Method |
|--------|-------------------|------------------|
| Competitor websites | Pricing, positioning, offer structure | Direct observation, wayback comparison |
| Meta/Google ad libraries | Creative themes, targeting signals, spend patterns | Platform ad library tools |
| Social media profiles | Content strategy, engagement, audience growth | Profile monitoring |
| Email lists (subscribed) | Launch sequences, nurture cadence, promotional frequency | Email collection |
| YouTube/podcast | Content topics, guest appearances, audience engagement | Channel monitoring |
| Reviews/testimonials | Client sentiment, results claimed, complaints | Review platform monitoring |
| Job postings | Strategic priorities (hiring = investing) | Job board monitoring |
| Community/forums | Brand sentiment, competitor mentions | Community monitoring |

## Agent

**competitor** — Competitive Intelligence Specialist

## Prerequisites

The following context improves analysis quality:

- `reference/positioning.md` — to evaluate differentiation gaps
- `reference/icp.md` — to assess competitive landscape through the ICP's eyes
- Previous competitive intelligence reports (for change detection)
- List of known direct and indirect competitors

## Implementation

1. **Identify competitive set** — confirm direct competitors (same offer, same audience) and indirect competitors (different offer, same audience).
2. **Collect current data** — gather latest observable data from all monitored sources, noting dates for each data point.
3. **Detect changes** — compare current data to previous report (if available) to identify what has shifted.
4. **Analyze by focus area** — deep dive into pricing, messaging, launches, or all dimensions based on the focus parameter.
5. **Map the market landscape** — plot competitors on positioning matrices (price vs specificity, mechanism vs proof).
6. **Identify vulnerability windows** — detect moments of competitor weakness (post-launch fatigue, negative PR, team changes, gaps).
7. **Conduct differentiation gap analysis** — evaluate whether the creator's positioning remains genuinely differentiated from each competitor.
8. **Update battlecards** — refresh one-page competitive sales enablement documents for each major competitor.
9. **Formulate recommendations** — specific, prioritized actions based on competitive findings.
10. **Document confidence levels** — mark each finding as verified fact, reasonable inference, or speculation.

## Destination

```
output/research/competitor-intel-[focus]-[date].md
```

## Quality Gates

- [ ] All intelligence data points include source and date (no undated claims)
- [ ] Findings categorized as verified fact, reasonable inference, or speculation
- [ ] Both direct and indirect competitors analyzed
- [ ] Actionable insights included — not just observations, but "so what" and "now what"
- [ ] Differentiation gap analysis confirms or flags positioning overlap
- [ ] Vulnerability windows identified with specific recommended actions and timing
- [ ] Battlecards updated (or flagged for update) for any competitor with significant changes
- [ ] Recommendations prioritized by urgency and impact
- [ ] Competitive landscape assessed through the ICP's perspective (what matters to the buyer)
- [ ] No recommendations to copy competitors — focus is on differentiation

## Examples

```bash
# Full competitive intelligence report
/competitor-intel

# Focus on pricing changes and strategy
/competitor-intel --focus pricing

# Focus on messaging and positioning evolution
/competitor-intel --focus messaging

# Focus on launch activity and timing intelligence
/competitor-intel --focus launches
```
