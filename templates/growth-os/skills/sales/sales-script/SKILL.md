---
name: "Sales Script"
id: sales-script
command: /sales-script
agent: sales-scripts
version: 1.0.0
---

# /sales-script

Build a complete sales conversation script for any stage of the sales process.

## Usage

```
/sales-script <type> [--ticket low|mid|high] [--team solo|setter-closer|full]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `type` | Yes | Script type to build (see types below) |
| `--ticket` | No | Ticket level for calibration. Default: mid |
| `--team` | No | Sales team structure. Default: solo |

## Types

| Type | Slug | Duration | Primary User |
|---|---|---|---|
| Closer Script | `closer` | 30-45 min | Sales closer (full discovery → pitch → close) |
| Setter Script | `setter` | 10-15 min | Appointment setter (qualify → book) |
| Dialer/SDR Script | `sdr` | 5-8 min | Outbound rep (cold/warm outbound) |
| Follow-Up Script | `follow-up` | 5-15 min | Closer/setter (post-call, post-webinar, post-no-show) |
| Objection Library | `objections` | Reference doc | All sales team members |
| Upgrade/Upsell Script | `upgrade` | 15-25 min | Account manager (existing customer → next tier) |
| Referral Ask Script | `referral` | 5-10 min | Account manager (post-result → ask for referral) |

## Examples

```
/sales-script closer --ticket high --team setter-closer
/sales-script setter
/sales-script sdr --ticket mid
/sales-script follow-up --ticket high
/sales-script upgrade
/sales-script referral
```

## Prerequisites

| Document | Path | Why It's Needed |
|---|---|---|
| ICP Document | `output/foundations/icp.*` | Pain points, objections, language for discovery and handling |
| Offer Document | `output/foundations/offer.*` | Value stack, pricing, guarantee for pitch and close sections |

## Process

1. **Load prerequisites** — Read ICP and Offer documents for pain points, objections, value stack, and pricing
2. **Select script type** — Map to the correct conversation framework
3. **Build the rapport section** — Opening, frame-setting, permission to lead
4. **Design discovery questions** — Situation, pain, desire, and decision questions mapped to ICP pain points
5. **Write the prescription bridge** — Summary and permission-based transition to pitch
6. **Script the presentation** — Transformation, mechanism, proof, offer components matched to prospect needs
7. **Write the close** — Investment presentation, silence protocol, enrollment logistics
8. **Build objection handling** — LAER responses for every documented ICP objection with coaching notes
9. **Add coaching notes** — [Bracketed] notes throughout explaining the psychology behind each section
10. **Create pre/post-call checklists** — Preparation and follow-up action items

## Destination

```
output/scripts/{type}-script-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| Discovery Depth | Discovery section produces 12+ minutes of conversation | Questions designed for depth |
| Talk Ratio | Script supports 70% prospect / 30% salesperson talk ratio | Verified by question density |
| ICP Alignment | Discovery questions reference specific ICP pain points | All top pain points covered |
| Objection Coverage | Every documented ICP objection has a scripted response | 100% coverage |
| Language Match | Objection responses use ICP-documented language patterns | Natural and segment-appropriate |
| No Manipulation | Zero high-pressure, guilt-based, or deceptive tactics | Clean audit |
| Coaching Notes | Every major section includes [coaching] explanation | All sections annotated |
| Permission Transitions | All transitions from discovery to pitch are permission-based | Verified |
| Price Presentation | Investment stated with confidence, followed by silence | Correct format |
| Post-Call Process | Clear next steps for every call outcome | All outcomes covered |

## Output Format

The deliverable is a complete conversation script in markdown with:
- Script meta (type, duration, ICP segment, offer, prerequisites)
- Pre-call checklist
- Full scripted conversation organized by phase (Rapport, Discovery, Prescription, Presentation, Close)
- Coaching notes in [brackets] throughout
- Objection handling section with LAER responses
- Post-call checklist
- Branch points for different prospect responses
- Performance benchmarks (target talk ratio, close rate, show-up rate)

## Related Skills

| Skill | Relationship |
|---|---|
| objections | Full objection library complements individual script objection sections |
| call-prep | Pre-call briefs feed directly into the closer's preparation |
| proposal | Custom proposals extend the conversation after the call |
| build-vsl | VSL objection handling aligns with call script objection handling |
