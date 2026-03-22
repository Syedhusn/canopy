---
name: "Call Prep"
id: call-prep
command: /call-prep
agent: call-prep
version: 1.0.0
---

# /call-prep

Produce a pre-call closer brief by analyzing all available prospect data.

## Usage

```
/call-prep <prospect-info> [--call-type discovery|follow-up|upgrade]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `prospect-info` | Yes | Prospect data — can be a file path, pasted application data, name + context, or a combination |
| `--call-type` | No | Type of call being prepared for. Default: discovery |

## Examples

```
/call-prep "John Smith - Agency owner, $30K/mo, applied via webinar funnel, biggest challenge is hiring"
/call-prep output/leads/john-smith.md
/call-prep "Sarah Chen, LinkedIn profile: linkedin.com/in/sarachen, applied 3 days ago" --call-type discovery
/call-prep "Mike Johnson - follow up from last week, said he needed to talk to his partner" --call-type follow-up
```

## Prerequisites

| Document | Path | Why It's Needed |
|---|---|---|
| ICP Document | `output/foundations/icp.*` | Segment mapping, pain points, objection prediction |
| Offer Document | `output/foundations/offer.*` | Pricing tiers, value stack for recommendation |

Prospect data can come from any combination of:
- Application/intake form responses
- Social media profiles (provided as URL or pasted data)
- DM/email conversation history
- Previous call notes
- Webinar/event attendance records
- Email engagement data

## Process

1. **Gather inputs** — Collect all available prospect data from provided sources
2. **Extract intelligence** — Pull key data points: business stage, revenue, team size, stated challenges, desired outcomes, timeline, past investments
3. **Map to ICP segment** — Score the prospect against each documented ICP segment, identify best fit
4. **Assess awareness level** — Determine where they are on the awareness spectrum based on engagement history
5. **Pull direct quotes** — Extract the prospect's exact words for the closer to mirror
6. **Predict objections** — Based on ICP segment + specific data signals, predict top 3 objections with pre-written responses
7. **Select proof points** — Choose 2-3 case studies most relevant to this prospect's situation
8. **Recommend approach** — Pricing tier, discovery focus areas, presentation emphasis, close strategy
9. **Flag concerns** — Identify any yellow or red flags with mitigation recommendations
10. **Assemble brief** — Organize all intelligence into the scannable brief format (5-minute read max)

## Destination

```
output/scripts/call-prep-{prospect-name}-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| Data Completeness | All available data sources analyzed and synthesized | Nothing skipped |
| Segment Mapping | Prospect mapped to best-fit ICP segment with score | Segment identified |
| Awareness Assessment | Awareness level determined with supporting evidence | Level assigned |
| Direct Quotes | At least 2 prospect quotes included for mirroring | Quotes present |
| Objection Prediction | Top 3 objections predicted with responses and proof points | All 3 complete |
| Case Study Relevance | Selected case studies share 2+ attributes with prospect | Relevance verified |
| Pricing Recommendation | Tier recommendation supported by data signals | Evidence cited |
| Red Flag Review | Yellow/red flags assessed and documented (or "none identified") | Section present |
| Scannability | Brief readable in under 5 minutes | Quick Glance section works standalone |
| Strategy Clarity | Recommended call approach is specific and actionable | Not generic |

## Output Format

The deliverable is a pre-call intelligence brief in markdown with:
- Quick Glance section (30-second scan: segment, awareness, fit score, top concern, key hook)
- Prospect snapshot table (name, business, revenue, team, location, source)
- Direct quotes from application/conversations
- Situation analysis (2-3 paragraphs with inferences clearly marked)
- Predicted objections with reframes and proof points (top 3)
- Recommended call strategy (opener, discovery focus, emphasis areas, proof to deploy, close approach)
- Red flags / watch-for items
- Relevant case studies (3 ranked by relevance)

## Related Skills

| Skill | Relationship |
|---|---|
| sales-script | Call scripts provide the framework; call prep personalizes the approach |
| proposal | If the call goes well, the proposal agent uses call notes to build a custom proposal |
| objections | Predicted objections pull from the same objection library |
| crm-update | CRM data feeds into prospect intelligence gathering |
