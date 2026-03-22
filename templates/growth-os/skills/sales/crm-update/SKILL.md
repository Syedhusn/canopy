---
name: "CRM Update"
id: crm-update
command: /crm-update
agent: crm-automation
version: 1.0.0
---

# /crm-update

Produce pipeline configurations, automation rules, lead scoring models, and reporting templates for CRM systems.

## Usage

```
/crm-update [--platform ghl|hubspot|salesforce|close] [--team-size <number>] [--funnel <funnel-type>]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `--platform` | No | CRM platform. Default: ghl (GoHighLevel) |
| `--team-size` | No | Number of sales team members. Default: 1 |
| `--funnel` | No | Primary funnel type in use. Default: book-call |

## Examples

```
/crm-update
/crm-update --platform hubspot --team-size 5 --funnel webinar
/crm-update --platform ghl --team-size 1 --funnel vsl
/crm-update --platform salesforce --team-size 10 --funnel application
/crm-update --platform close --team-size 3
```

## Prerequisites

| Document | Path | Why It's Needed |
|---|---|---|
| ICP Document | `output/foundations/icp.*` | Lead scoring demographic criteria |
| Offer Document | `output/foundations/offer.*` | Pricing tiers for pipeline value tracking |

Ideally, a funnel blueprint should exist so the pipeline stages mirror the actual funnel flow. If no funnel exists, the standard pipeline architecture is used.

## Process

1. **Assess context** — Read team size, platform, funnel type, and available foundation documents
2. **Design pipeline stages** — Define stages that mirror actual conversion events with SLAs and required fields
3. **Build automation rules** — Speed-to-lead, stage-based, time-based, and engagement-based triggers
4. **Create lead scoring model** — Demographic, behavioral, and engagement scoring with threshold classifications
5. **Design notification system** — Who gets notified of what, when, and through which channel
6. **Configure reporting dashboards** — Daily (operational), weekly (tactical), and monthly (strategic) metrics
7. **Map integrations** — Connect CRM to calendar, payment, email, and analytics tools
8. **Define data hygiene rules** — Required fields, format validation, and duplicate detection
9. **Set up team permissions** — User roles, lead assignment rules, and access levels
10. **Build implementation checklist** — Step-by-step setup guide for the chosen platform

## Destination

```
output/scripts/crm-config-{platform}-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| Stage-to-Reality Match | Pipeline stages correspond to real conversion events | No phantom stages |
| SLA Coverage | Every stage has a maximum time-in-stage with escalation | All stages covered |
| Speed-to-Lead | Sub-5-minute first response automation configured | Automation present |
| Required Fields | Every stage has defined required fields | Fields documented |
| Automation Logic | All triggers have clear conditions, actions, and timing | No ambiguity |
| Lead Scoring | Scoring model includes demographic + behavioral + engagement signals | All categories present |
| Reporting | Daily, weekly, and monthly metrics defined with targets | All timeframes covered |
| Integration Map | All tool connections documented with data flow direction | Map complete |
| Platform Specific | Configuration uses terminology and capabilities of the selected platform | Platform-appropriate |
| Implementation Ready | Step-by-step setup checklist included | Actionable checklist |

## Output Format

The deliverable is a CRM configuration document in markdown with:
- Configuration meta (platform, team size, funnel type, lead volume estimate)
- Pipeline architecture (stages, definitions, required fields, SLAs, exit criteria)
- Automation rules organized by category (speed-to-lead, stage-based, time-based, engagement-based)
- Lead scoring model (categories, signals, points, thresholds, actions)
- Notification system (recipients, triggers, channels)
- Reporting dashboards (daily, weekly, monthly metrics with targets)
- Integration map (tools, data flows, connections)
- Data hygiene rules (required fields, validation, duplicates)
- Team setup (roles, permissions, assignment rules)
- Implementation checklist (step-by-step with verification steps)

## Related Skills

| Skill | Relationship |
|---|---|
| build-funnel | Funnel architecture informs pipeline stage design |
| sales-script | Sales process determines stage transitions and required data |
| call-prep | CRM data feeds into pre-call intelligence gathering |
| sales-stack | Technology recommendations complement CRM configuration |
