---
name: "Sales Stack"
id: sales-stack
command: /sales-stack
agent: crm-automation
version: 1.0.0
---

# /sales-stack

Produce a recommended sales technology stack based on the creator's budget, team size, funnel type, and growth stage.

## Usage

```
/sales-stack [--budget <monthly-budget>] [--team-size <number>] [--funnel <funnel-type>] [--stage startup|growth|scale]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `--budget` | No | Monthly tool budget in dollars. Default: 500 |
| `--team-size` | No | Number of sales team members. Default: 1 |
| `--funnel` | No | Primary funnel type. Default: book-call |
| `--stage` | No | Growth stage of the business. Default: growth |

## Examples

```
/sales-stack
/sales-stack --budget 200 --team-size 1 --funnel vsl --stage startup
/sales-stack --budget 2000 --team-size 5 --funnel webinar --stage growth
/sales-stack --budget 5000 --team-size 15 --funnel application --stage scale
/sales-stack --budget 500 --team-size 2 --funnel challenge
```

## Prerequisites

| Document | Path | Why It's Needed |
|---|---|---|
| Offer Document | `output/foundations/offer.*` | Pricing model and fulfillment requirements inform tool selection |

No hard prerequisites — this skill can operate with minimal context. More context (funnel blueprints, CRM configurations, team structure) produces more tailored recommendations.

## Process

1. **Assess business context** — Analyze budget, team size, funnel type, and growth stage
2. **Map functional requirements** — Identify which tool categories are needed:
   - CRM & Pipeline Management
   - Calendar & Scheduling
   - Payment Processing
   - Email Marketing & Automation
   - SMS & Messaging
   - Video Hosting (if VSL/webinar)
   - Webinar Platform (if webinar funnel)
   - Analytics & Reporting
   - Proposal & Contracts
   - Dialer (if outbound team)
   - Chat/Community (if challenge funnel)
   - Revenue Intelligence (if scale stage)
3. **Select tools per category** — Choose based on budget, team sophistication, and integration compatibility
4. **Design integration map** — Document how tools connect, data flows, and any middleware needed
5. **Create setup checklist** — Step-by-step implementation guide prioritized by impact
6. **Build cost summary** — Monthly cost breakdown with total and per-seat calculations
7. **Plan migration path** — If upgrading from existing tools, provide migration steps
8. **Document alternatives** — For each recommended tool, list 1-2 alternatives with trade-offs

## Destination

```
output/scripts/sales-stack-{stage}-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| Budget Compliance | Total monthly cost within stated budget (+10% tolerance) | Within budget |
| Functional Coverage | All required tool categories have a recommendation | No gaps |
| Integration Compatibility | All recommended tools integrate with each other | Integrations verified |
| Team Fit | Tool complexity matches team's technical sophistication | Appropriate level |
| Alternatives Provided | Each primary recommendation has 1-2 alternatives | Alternatives listed |
| Cost Transparency | Per-tool pricing with monthly and annual options | All costs documented |
| Setup Priority | Implementation checklist ordered by business impact | Priority sequence clear |
| Growth Path | Recommendations include a "next upgrade" path as they grow | Growth plan present |
| Platform Consistency | Tools work on the platforms the team uses (web, mobile, etc.) | Platform compatible |
| Real Pricing | All pricing reflects current market rates (not outdated) | Pricing current |

## Output Format

The deliverable is a sales technology stack recommendation in markdown with:
- Stack meta (budget, team size, funnel type, growth stage)
- Stack tier classification (Minimal Viable / Growth / Scale)
- Tool recommendations organized by category:
  - Primary recommendation (name, cost, why it fits)
  - Alternative 1 (name, cost, trade-off)
  - Alternative 2 (name, cost, trade-off)
- Integration map (visual/text diagram of data flows between tools)
- Cost summary table (per-tool, per-seat, monthly total, annual total)
- Implementation checklist (ordered by priority):
  1. Critical path tools (CRM, payment, calendar)
  2. Engagement tools (email, SMS, video)
  3. Optimization tools (analytics, revenue intelligence)
- Migration notes (if replacing existing tools)
- Growth path (what to add/upgrade at next stage)

## Related Skills

| Skill | Relationship |
|---|---|
| crm-update | CRM configuration depends on the chosen CRM platform from the stack |
| build-funnel | Funnel architecture informs which tool categories are needed |
| sales-script | Dialer and sales engagement tools support script execution |
| dm-sequence | Messaging tools and CRM integration support DM tracking |
