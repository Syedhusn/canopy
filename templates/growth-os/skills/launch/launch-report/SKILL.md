# /launch-report

> Produce a comprehensive post-launch performance analysis with actionable recommendations.

## Usage
```
/launch-report [--launch-id <id>]
```

## Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| `--launch-id` | No | Identifier for the launch to analyze (defaults to most recent launch in `output/launches/`) |

## What It Does

Produces a detailed post-launch performance report analyzing every dimension of the launch — revenue vs target, funnel stage conversion rates, email metrics, ad performance, show rates, close rates, refund rates, and customer feedback. The report diagnoses root causes for under or overperformance and delivers prioritized, data-backed recommendations for the next launch.

### Analysis Dimensions

| Dimension | Metrics Analyzed |
|-----------|-----------------|
| Revenue | Gross revenue, net revenue (after refunds), revenue vs target, revenue by product/tier |
| Funnel | Conversion rate at each stage, drop-off identification, revenue impact of each leak |
| Email | Open rate, click rate, conversion rate, unsubscribe rate — per individual email |
| Ads | Spend, ROAS, CPA, CTR, conversions — per creative and audience |
| Live Events | Registrations, show rate, stay rate, CTA engagement, conversions |
| Sales Calls | Calls booked, show rate, close rate, average deal size, objections |
| DMs | Messages sent, response rate, conversations to calls/sales conversion |
| Customer Profile | Who bought vs ICP match, objections overcome vs not overcome |
| Financial | Total costs, profit margin, unit economics, channel ROI |

## Agent

**post-launch** — Post-Launch Analysis & Optimization Specialist

## Prerequisites

Before running this skill, ensure the following are available:

- Launch plan document from `output/launches/` (to compare targets vs actuals)
- Raw launch data: revenue numbers, email platform metrics, ad platform data, call/booking data
- Ideally: client feedback, DM conversation summaries, refund reasons

If data is incomplete, the agent will note data quality gaps and analyze what is available.

## Implementation

1. **Collect launch data** — pull or receive metrics from all channels (email, ads, social, calls, DMs, funnel analytics).
2. **Build the executive summary** — hit/miss/exceeded with headline numbers and single biggest win and opportunity.
3. **Analyze funnel performance** — stage-by-stage conversion waterfall with benchmark comparison and revenue impact calculation.
4. **Evaluate email sequence** — rank each email by conversion effectiveness, identify best and worst performing angles.
5. **Assess ad performance** — rank creatives and audiences by ROAS, identify winning and losing combinations.
6. **Analyze customer profile** — compare actual buyers to ICP, identify which objections were and were not overcome.
7. **Calculate financial summary** — true profitability including all costs, unit economics, channel ROI.
8. **Score and prioritize recommendations** — each recommendation scored on Impact x Confidence / Effort, presented in priority order.
9. **Document lessons learned** — specific, evidence-based takeaways for future launches.
10. **Note A/B test results** if applicable, with statistical significance assessment.

## Destination

```
output/reports/launch-report-[launch-id]-[date].md
```

## Quality Gates

- [ ] All available metrics analyzed — no channel or funnel stage skipped
- [ ] Funnel stage breakdown shows conversion rate, benchmark comparison, and revenue impact per stage
- [ ] Email performance analyzed at the individual email level (not just aggregate)
- [ ] Financial summary includes ALL costs (ads, tools, team, affiliates) for true profitability
- [ ] Recommendations are specific, data-backed, and prioritized by estimated revenue impact
- [ ] Customer profile analysis compares actual buyers to ICP document
- [ ] Lessons learned are evidence-based (not generic best practices)
- [ ] Data quality issues explicitly noted if tracking was incomplete or broken

## Examples

```bash
# Analyze the most recent launch
/launch-report

# Analyze a specific launch by ID
/launch-report --launch-id spring-2026-live

# Analyze a specific launch
/launch-report --launch-id beta-v1
```
