# /retention-check

> Analyze client health, identify at-risk clients, and recommend intervention strategies.

## Usage
```
/retention-check [--segment <segment>]
```

## Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| `--segment` | No | Client segment to analyze: specific cohort name, pricing tier, acquisition channel, or `all` (default) |

## What It Does

Produces a retention analysis report with client health score distribution, at-risk client identification, churn analysis by reason and cohort, intervention effectiveness tracking, and specific retention strategy recommendations. The report serves as a triage document that tells the team exactly who needs attention, what kind of intervention to use, and the revenue impact of action vs inaction.

### Analysis Dimensions

| Dimension | What It Reveals |
|-----------|----------------|
| Health Distribution | How many clients are green/yellow/orange/red and the revenue at risk in each tier |
| At-Risk Identification | Specific clients flagged by trigger type with recommended intervention |
| Churn Analysis | Churn rates by reason (financial, results, fit, competition, life), by cohort, and by segment |
| Intervention Tracking | Which retention interventions are working and which are not, with save rates |
| Retention Forecast | Projected retention rate under current trajectory vs with recommended improvements |

### Health Score Dimensions

| Dimension | Weight | What It Measures |
|-----------|--------|-----------------|
| Engagement Frequency | 25% | Login frequency, content consumption, session duration |
| Milestone Progress | 20% | Module completion, assignment submission, goal tracking |
| Support Sentiment | 15% | Support ticket tone, satisfaction ratings, escalation frequency |
| Payment Status | 15% | Payment success rate, failed payment recovery, upgrade/downgrade |
| Satisfaction Score | 15% | NPS, survey responses, direct feedback |
| Community Participation | 10% | Community posts, comments, event attendance |

## Agent

**retention** — Client Retention & Health Monitoring Specialist

## Prerequisites

The following data improves analysis quality:

- Client activity data: login frequency, content consumption, milestone progress
- Support data: ticket history, sentiment, resolution rates
- Payment data: payment status, failed payments, recovery rates
- Survey data: NPS scores, satisfaction surveys, feedback
- Community data: participation metrics, post/comment activity
- Historical churn data: who churned, when, and stated reasons

If data is incomplete, the agent will analyze available dimensions and note gaps.

## Implementation

1. **Calculate health scores** — score each client across all six dimensions, compute weighted composite score, assign tier (green/yellow/orange/red).
2. **Map health distribution** — count clients in each tier with total revenue at risk per tier.
3. **Identify at-risk clients** — list all orange and red clients with their primary trigger, days in tier, and current intervention status.
4. **Analyze churn** — break down churned clients by reason, cohort, segment, and timeline to identify systemic patterns.
5. **Evaluate interventions** — calculate save rate for each intervention type (automated, human hybrid, high-touch rescue) with revenue saved.
6. **Detect churn triggers** — flag clients showing early warning signals (engagement decline, missed milestones, negative support, payment failure, community withdrawal).
7. **Recommend interventions** — match each at-risk client to the appropriate intervention tier and provide specific action instructions.
8. **Calculate revenue impact** — quantify the cost of inaction (expected churn revenue loss) vs the cost of intervention (team time, offers).
9. **Forecast retention** — project 90-day retention rate under current trajectory, with recommendations implemented, and worst case.
10. **Produce priority actions** — top 3-5 retention priorities ranked by revenue impact and urgency.

## Destination

```
output/reports/retention-check-[segment]-[date].md
```

## Quality Gates

- [ ] Health scores calculated across multiple dimensions (not single-metric assessment)
- [ ] At-risk clients listed individually with specific trigger and recommended intervention
- [ ] Churn analyzed by reason category (financial, results, fit, competition, life)
- [ ] Cohort analysis included — retention curves by signup cohort
- [ ] Intervention effectiveness measured with save rates where historical data exists
- [ ] Revenue at risk quantified in dollar terms per health tier
- [ ] Specific intervention recommendations provided (not generic "reach out to at-risk clients")
- [ ] 90-day retention forecast included with multiple scenarios
- [ ] Both automated and human intervention recommendations included
- [ ] Data quality gaps explicitly noted

## Examples

```bash
# Run a full client base retention check
/retention-check

# Check retention for a specific cohort
/retention-check --segment january-2026-cohort

# Check retention for premium tier clients
/retention-check --segment premium

# Check retention for clients acquired via paid ads
/retention-check --segment paid-acquisition
```
