# /revenue-report

> Produce a financial analysis report with unit economics, forecasting, and budget recommendations.

## Usage
```
/revenue-report [--period monthly|quarterly|annual]
```

## Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| `--period` | No | Reporting period: `monthly` (default), `quarterly`, `annual` |

## What It Does

Produces a comprehensive revenue analysis report that goes beyond top-line numbers to reveal profitability by product, channel, and customer segment. Includes unit economics (LTV, CAC, LTV:CAC, payback period), financial health scorecard (green/yellow/red), revenue forecasts using three models (linear, cohort, seasonal), channel ROI analysis, and budget allocation recommendations.

### Report Sections

| Section | What It Covers |
|---------|---------------|
| Financial Health Scorecard | 6-dimension green/yellow/red assessment at a glance |
| Revenue Summary | Gross, net, costs, profit with period-over-period comparison |
| Revenue by Product | Breakdown by product/tier with ARPC and contribution percentage |
| Unit Economics | LTV, CAC, LTV:CAC, payback period, gross margin with benchmarks |
| Channel ROI | Spend, revenue, ROI, CAC by channel with allocation recommendations |
| Forecast | 3-month forward projection: conservative, likely, optimistic |
| Budget Recommendations | Where to increase, maintain, decrease, or cut spend |
| Financial Risks | Identified risks with likelihood, impact, and mitigation |

## Agent

**financial** — Revenue Analysis & Financial Forecasting Specialist

## Prerequisites

The following data improves report quality:

- Revenue data: transaction records, payment processor exports, or summary figures
- Cost data: ad spend by channel, tool subscriptions, team costs, affiliate commissions
- Customer data: new customers, churned customers, upgrades/downgrades
- Historical data: previous revenue reports or raw data for trend analysis

If data is incomplete, the agent will work with available information and note gaps.

## Implementation

1. **Compile revenue data** — aggregate revenue by product, tier, and channel for the reporting period.
2. **Calculate financial health scorecard** — assess revenue growth, profit margin, LTV:CAC, churn, cash reserves, and refund rate.
3. **Build revenue summary** — gross revenue, refunds, net revenue, total costs, net profit, and margin with period comparison.
4. **Break down by product/tier** — revenue, units, ARPC, and percentage of total for each product or pricing tier.
5. **Calculate unit economics** — LTV (accounting for churn), CAC (all-in costs), LTV:CAC ratio, payback period, and gross margin.
6. **Analyze channel ROI** — spend, attributed revenue, ROI percentage, and CAC per acquisition channel.
7. **Build forecasts** — conservative (80% confidence), likely (50%), and optimistic (20%) projections for the next 3 months.
8. **Formulate budget recommendations** — increase/maintain/decrease/cut for each channel based on ROI data.
9. **Identify financial risks** — declining metrics, rising costs, or unsustainable trends flagged with mitigation actions.
10. **Synthesize key takeaways** — the 3 most important financial insights for decision-making.

## Destination

```
output/reports/revenue-report-[period]-[date].md
```

## Quality Gates

- [ ] Unit economics calculated with all-in CAC (not just ad spend)
- [ ] LTV accounts for churn rate (not infinite-LTV assumptions)
- [ ] Forecast includes three scenarios (conservative, likely, optimistic) — never a single number
- [ ] Budget recommendations are evidence-based with ROI data per channel
- [ ] Revenue and profit separated — no vanity metrics (gross revenue without costs)
- [ ] One-time revenue (launches) separated from recurring revenue (subscriptions)
- [ ] Period-over-period comparison included for trend context
- [ ] Financial health scorecard has clear green/yellow/red status per dimension
- [ ] Refund rate included in revenue calculations
- [ ] At least 3 specific financial action items recommended

## Examples

```bash
# Generate a monthly revenue report
/revenue-report

# Generate a quarterly revenue report
/revenue-report --period quarterly

# Generate an annual revenue report
/revenue-report --period annual
```
