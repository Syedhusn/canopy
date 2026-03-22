# /build-sop

> Create a comprehensive Standard Operating Procedure for any core business process.

## Usage
```
/build-sop <type>
```

## Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| `type` | Yes | SOP category: `sales-process`, `content-production`, `client-onboarding`, `lead-management`, `quality-assurance`, `reporting` |

## What It Does

Produces a complete SOP document with step-by-step procedures, decision trees at every branch point, escalation triggers, quality checks, tool specifications, and KPI tracking. Each SOP is designed so that a competent new hire can follow it on day one without asking questions.

### SOP Types

| Type | Covers | Sub-Processes |
|------|--------|--------------|
| `sales-process` | Lead handling through pipeline management | Lead response, qualification, call booking, follow-up cadence, closing, pipeline hygiene |
| `content-production` | Content ideation through publishing | Calendar execution, filming, editing, publishing, cross-platform repurposing |
| `client-onboarding` | Purchase through first milestone | Welcome sequence, access setup, kickoff call, expectations, 7-day check-in |
| `lead-management` | Lead capture through sales handoff | Form capture, scoring criteria, routing rules, nurture enrollment, MQL-to-SQL transition |
| `quality-assurance` | Content and deliverable QA through satisfaction tracking | Brand voice review, deliverable validation, NPS surveys, feedback loops |
| `reporting` | Daily metrics through monthly stakeholder reports | Daily dashboards, weekly pipeline review, monthly P&L and growth report |

## Agent

**sop-builder** — Standard Operating Procedure Specialist

## Prerequisites

No strict prerequisites, but higher quality SOPs result when the following context is available:

- Current team structure and role assignments
- Tools and platforms in use (CRM, email platform, project management, etc.)
- Existing informal processes or tribal knowledge from team interviews

## Implementation

1. **Identify the process scope** — confirm which sub-processes within the category to document, and what is explicitly out of scope.
2. **Define purpose and ownership** — articulate why this process exists, who owns it, and how often it runs.
3. **List prerequisites** — what must be true before the process can begin (access, information, approvals).
4. **Write step-by-step procedure** — numbered steps, one action per step, with specific tool references (platform > feature > button).
5. **Build decision trees** — at every branch point, document if/then paths with explicit outcomes for each branch.
6. **Embed quality checks** — verification gates within the flow, not as a separate post-process step.
7. **Define escalation triggers** — specific situations that require stopping and escalating, with named recipients, channels, and SLAs.
8. **Add time estimates** — estimated duration per step for workload planning.
9. **Document common mistakes** — prevention guidance for the most frequent errors.
10. **Set KPIs** — what gets measured, target values, measurement tools, and reporting cadence.
11. **Establish review cadence** — monthly for high-change processes, quarterly for stable ones.

## Destination

```
output/sops/sop-[type]-[date].md
```

## Quality Gates

- [ ] Every step is specific enough for a new hire to follow without questions
- [ ] Zero instances of "as needed," "when appropriate," or "use your best judgment"
- [ ] Decision points are documented with explicit if/then branches
- [ ] Escalation triggers name a specific person/role, channel, and response SLA
- [ ] Quality checks are embedded within the procedure flow
- [ ] Tools and systems referenced with specific features, not just platform names
- [ ] KPIs are defined with target values and measurement method
- [ ] Common mistakes section includes at least 3 documented pitfalls with prevention
- [ ] Owner assigned and review cadence specified
- [ ] Estimated time per step is included

## Examples

```bash
# Build a sales process SOP
/build-sop sales-process

# Build a content production SOP
/build-sop content-production

# Build a client onboarding SOP
/build-sop client-onboarding

# Build a lead management SOP
/build-sop lead-management

# Build a quality assurance SOP
/build-sop quality-assurance

# Build a reporting SOP
/build-sop reporting
```
