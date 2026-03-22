# /plan-launch

> Build a comprehensive, day-by-day launch plan for any of the 5 launch types.

## Usage
```
/plan-launch <type> [--date <launch-date>] [--duration 7|14|21]
```

## Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| `type` | Yes | Launch type: `live`, `evergreen`, `rolling`, `flash-sale`, `beta` |
| `--date` | No | Cart open date (defaults to 4 weeks from today) |
| `--duration` | No | Launch window length in days: `7`, `14`, or `21` (defaults vary by type) |

## What It Does

Produces a complete launch plan document with day-by-day timeline, asset checklist, email schedule, social media schedule, ad schedule, milestone targets, and contingency plans. The plan is calibrated to the selected launch type and reverse-engineers from the revenue target through conversion rates and traffic volumes to daily activity requirements.

### Launch Types

| Type | Default Duration | Pre-Launch Runway | Best For |
|------|-----------------|-------------------|----------|
| `live` | 14 days | 4 weeks | Proven offers, engaged audience, maximum revenue spike |
| `evergreen` | Always-on | 2-3 week setup | Scalable offers, paid traffic, steady conversion |
| `rolling` | Continuous | Ongoing | Cohort programs, memberships, periodic enrollment |
| `flash-sale` | 3 days | 1-2 weeks | Existing customer base, seasonal promotions |
| `beta` | 7 days | 2-3 weeks | New offers, market validation, feedback collection |

## Agent

**launch-manager** — Launch Planning & Execution Specialist

## Prerequisites

Before running this skill, ensure the following exist and are current:

- `reference/icp.md` — ICP Document (who the launch targets)
- `reference/offer.md` — Offer Document (what is being launched)
- `reference/positioning.md` — Positioning Document (how the offer is differentiated)
- Sales assets ready or in production: VSL, funnel pages, email sequences

If prerequisites are missing, the agent will flag them and halt until resolved.

## Implementation

1. **Validate prerequisites** — confirm ICP, offer, and positioning documents exist and are current. Check asset readiness status.
2. **Select launch type parameters** — apply type-specific defaults for duration, runway, email cadence, and urgency mechanics.
3. **Build the pre-launch timeline** — audience warming, waitlist capture, content blitz, early access, technical dry run.
4. **Build the launch window timeline** — day-by-day schedule with email subjects, social content angles, ad campaigns, DM outreach targets.
5. **Build the close sequence** — hour-by-hour plan for the final 48 hours with urgency escalation.
6. **Set milestone targets** — waitlist size, Day 1 sales, mid-launch cumulative, final 48-hour targets with contingency triggers.
7. **Compile asset checklist** — every asset needed with status (ready/in-progress/not-started) and deadline.
8. **Define contingency plans** — specific actions for underperformance at each milestone and technical failure scenarios.
9. **Plan post-launch handoff** — data requirements, debrief schedule, handoff to post-launch analyst.

## Destination

```
output/launches/launch-plan-[type]-[date].md
```

## Quality Gates

- [ ] Day-by-day timeline covers pre-launch through post-launch handoff
- [ ] Asset checklist is complete — every required asset is listed with status and deadline
- [ ] Email schedule includes subject line, angle, and CTA for every launch email
- [ ] Milestone targets are set at minimum 4 checkpoints with specific numbers
- [ ] Contingency triggers define specific actions when targets are missed
- [ ] Technical dry run is scheduled 48 hours before cart open
- [ ] Post-launch handoff is planned with data requirements and debrief date
- [ ] All scarcity elements are real (limited spots, genuine deadlines, actual bonus expiration)

## Examples

```bash
# Plan a 14-day live launch opening April 15
/plan-launch live --date 2026-04-15 --duration 14

# Plan an evergreen funnel (always-on)
/plan-launch evergreen

# Plan a 3-day flash sale for Black Friday
/plan-launch flash-sale --date 2026-11-27 --duration 3

# Plan a beta launch for a new offer
/plan-launch beta --date 2026-05-01

# Plan a rolling launch with monthly cohort starts
/plan-launch rolling --duration 30
```
