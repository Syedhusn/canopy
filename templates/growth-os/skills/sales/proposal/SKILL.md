---
name: "Proposal"
id: proposal
command: /proposal
agent: proposal
version: 1.0.0
---

# /proposal

Build a custom proposal tailored to a specific prospect's situation, pain, and desired outcome.

## Usage

```
/proposal <prospect-name> [--notes <discovery-notes>] [--tier standard|premium|custom] [--format pdf|markdown]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `prospect-name` | Yes | Name of the prospect (used for file naming and personalization) |
| `--notes` | No | Path to discovery call notes or inline notes in quotes |
| `--tier` | No | Pricing tier to present. Default: standard |
| `--format` | No | Output format. Default: markdown |

## Examples

```
/proposal "John Smith" --notes output/scripts/call-prep-john-smith-2026-03-21.md
/proposal "Sarah Chen" --notes "Agency owner, $50K/mo, wants to scale to $100K without hiring. Main concern: losing quality. Has tried 2 agencies before."
/proposal "Mike Johnson" --tier premium --notes output/leads/mike-johnson-discovery.md
/proposal "Lisa Park" --notes "Follow-up from webinar. Runs e-commerce brand, $2M/yr. Wants to systematize marketing. Biggest objection: time commitment."
```

## Prerequisites

| Document | Path | Why It's Needed |
|---|---|---|
| Offer Document | `output/foundations/offer.*` | Value stack, pricing, guarantee, bonuses — raw material for the proposal |
| ICP Document | `output/foundations/icp.*` | Segment psychology for matching proof and language |
| Discovery Notes | Provided via `--notes` | Prospect-specific data for personalization — the most critical input |

The proposal agent requires at minimum the offer document and some form of prospect information. The more context provided (discovery notes, call prep brief, DM history), the more personalized the proposal.

## Process

1. **Load offer document** — Import the full value stack, pricing tiers, guarantee, and bonus catalogue
2. **Load prospect data** — Read discovery notes, call prep brief, and any other available prospect context
3. **Map prospect to ICP segment** — Identify best-fit segment for language and proof selection
4. **Extract personalization material** — Pull direct quotes, stated challenges, desired outcomes, timeline, and budget signals
5. **Write executive summary** — 3-5 sentences synthesizing situation → gap → solution → outcome (must stand alone)
6. **Build "Their Situation" section** — Mirror their words back to them with attribution, paint their current reality
7. **Customize the solution** — Map each of their stated problems to specific offer components with personalized outcome framing
8. **Design the transformation** — Before/after table specific to THEIR numbers, timeline, and desired state
9. **Select proof** — Choose 2-3 case studies from clients with the most similar situations
10. **Present investment** — Anchor to their cost of inaction, present the right tier with ROI framing
11. **Personalize guarantee** — Frame the guarantee around THEIR specific desired outcome
12. **Set next steps** — Clear single action with a specific deadline (proposal validity 7-14 days)
13. **Quality review** — Verify personalization depth (5+ instances of their language), proof relevance, and completeness

## Destination

```
output/scripts/proposal-{prospect-name}-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| Personalization Depth | Prospect's exact language mirrored throughout | 5+ instances minimum |
| Executive Summary Standalone | Exec summary conveys full proposition when read alone | Self-contained |
| Problem-Solution Mapping | Every offer component linked to a stated prospect need | No generic components |
| Proof Relevance | Case studies share 2+ attributes with prospect | Proximity verified |
| Investment Anchoring | Price anchored to prospect's specific cost of inaction | Anchor present |
| Guarantee Personalization | Guarantee framed around their specific desired outcome | Not generic |
| Single Next Step | Clear, specific action with a specific deadline | Unambiguous |
| Proposal Validity | Expiration date included (7-14 days) | Date set |
| Skimmability | Key information visible from headers and bullet points alone | Structure sells |
| Completeness | All 10 proposal sections present with prospect-specific content | 100% sections |

## Output Format

The deliverable is a custom proposal in markdown with:
- Cover page (prospect name, company, outcome-framed title, date, validity)
- Executive summary (3-5 sentences, standalone)
- Their Situation section (mirroring their words with attribution)
- Our Solution section (problem → component → their outcome mapping)
- Transformation table (before/after with their specific metrics)
- What's Included (outcome-framed deliverables with relevant bonuses only)
- Proof section (2-3 detailed case studies from similar clients)
- Investment section (cost-of-inaction anchor, pricing options, ROI projection)
- Guarantee (personalized to their desired outcome)
- Next Steps (single action, specific deadline, onboarding preview)

## Related Skills

| Skill | Relationship |
|---|---|
| call-prep | Call prep brief provides prospect intelligence that feeds the proposal |
| sales-script | Discovery call framework generates the notes the proposal personalizes from |
| objections | Proposal addresses predicted objections through proof and guarantee |
| build-funnel | Proposal can be part of the Application Funnel flow |
