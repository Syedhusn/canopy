# /hiring-brief

> Generate a comprehensive hiring brief for any of the 8 core roles in a creator/coaching business.

## Usage
```
/hiring-brief <role>
```

## Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| `role` | Yes | Role to hire: `setter`, `closer`, `sdr`, `content-manager`, `video-editor`, `customer-success`, `va-admin`, `marketing-manager` |

## What It Does

Produces a complete hiring brief with role description, key responsibilities, required and nice-to-have skills, compensation structure, KPIs, 30/60/90 day onboarding plan, behavioral and situational interview questions with scoring rubrics, red flags to watch for, and a full onboarding checklist. The brief is a complete hiring toolkit that takes a manager from "I need to hire" to "I've made the right hire."

### Roles

| Role | Function | Typical Compensation |
|------|----------|---------------------|
| `setter` | Appointment setting, first contact qualification | $2K-4K/mo base + $50-150 per qualified booking |
| `closer` | Sales calls, deal closing | $3K-5K/mo base + 5-10% commission on closed revenue |
| `sdr` | Outbound cold calling, lead generation | $2K-3K/mo base + $25-75 per qualified lead |
| `content-manager` | Content calendar execution, creator coordination | $3K-5K/mo salary + quarterly performance bonus |
| `video-editor` | YouTube, reels, VSL editing | $2K-4K/mo salary or per-project rates |
| `customer-success` | Client onboarding, retention, results tracking | $3K-5K/mo salary + retention bonus |
| `va-admin` | Operations support, scheduling, inbox management | $1.5K-3K/mo salary + quarterly bonus |
| `marketing-manager` | Campaign execution, ad management, analytics | $4K-7K/mo salary + growth bonus |

## Agent

**team-builder** — Hiring Brief & Team Structure Specialist

## Prerequisites

No strict prerequisites, but higher quality briefs result when the following context is available:

- Current team structure (who already exists, reporting lines)
- Business revenue stage (determines compensation ranges and role scope)
- Tools and systems in use (for onboarding checklist specificity)
- Creator preferences on work style, communication, and culture

## Implementation

1. **Define the role architecture** — description, reporting line, department, employment type, and location.
2. **Write "A Day in the Life"** — narrative description of what a typical day looks like to set realistic expectations.
3. **List key responsibilities** — 5-7 specific, outcome-oriented responsibilities with deliverables.
4. **Define KPIs** — specific metrics the role owns, with targets, measurement tools, and reporting cadence.
5. **Specify skills** — required skills with proficiency levels, plus nice-to-have differentiators.
6. **Build compensation structure** — base, variable, OTE, with clear explanation of how variable compensation is earned.
7. **Write "Who This Is NOT For"** — anti-patterns that help candidates and recruiters self-select.
8. **Create 30/60/90 day plan** — specific milestones, deliverables, and evaluation criteria for each phase.
9. **Draft interview questions** — 5 behavioral (past behavior) + 5 situational (problem-solving) with scoring rubrics.
10. **Document red flags** — patterns observed during interviews that predict poor performance or cultural misfit.
11. **Build onboarding checklist** — tools access, training materials, introduction calls, and first project brief.

## Destination

```
output/sops/hiring-brief-[role]-[date].md
```

## Quality Gates

- [ ] Compensation structure is specific — base, variable, OTE, with earning mechanics explained
- [ ] 30/60/90 day plan has measurable milestones at each phase, not generic goals
- [ ] Interview questions cannot be answered with rehearsed responses
- [ ] Behavioral questions include "looking for" guidance so interviewers know what a good answer sounds like
- [ ] KPIs are specific with target numbers, not vague outcomes
- [ ] Red flags section includes at least 3 role-specific warning signs
- [ ] Onboarding checklist covers tools, training, introductions, and first deliverable
- [ ] "Who This Is NOT For" section provides genuine filtering criteria
- [ ] First deliverable is defined — what the hire must produce in weeks 1-2

## Examples

```bash
# Create a hiring brief for an appointment setter
/hiring-brief setter

# Create a hiring brief for a sales closer
/hiring-brief closer

# Create a hiring brief for an SDR/cold caller
/hiring-brief sdr

# Create a hiring brief for a content manager
/hiring-brief content-manager

# Create a hiring brief for a video editor
/hiring-brief video-editor

# Create a hiring brief for customer success
/hiring-brief customer-success

# Create a hiring brief for a virtual assistant
/hiring-brief va-admin

# Create a hiring brief for a marketing manager
/hiring-brief marketing-manager
```
