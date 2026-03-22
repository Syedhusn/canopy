---
name: "Objections Library"
id: objections
command: /objections
agent: sales-scripts
version: 1.0.0
---

# /objections

Produce a comprehensive objection handling library mapped to ICP segments with reframes, proof points, and context-specific responses.

## Usage

```
/objections [--context sales-call|dm|webinar|vsl|proposal] [--segment <icp-segment>]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `--context` | No | The context where objections will be handled. Default: sales-call |
| `--segment` | No | Specific ICP segment to focus on. Default: all segments |

## Examples

```
/objections
/objections --context sales-call
/objections --context dm --segment agency-owners
/objections --context webinar
/objections --context vsl --segment coaches
/objections --context proposal
```

## Prerequisites

| Document | Path | Why It's Needed |
|---|---|---|
| ICP Document | `output/foundations/icp.*` | Documented objections by segment, language patterns, psychological triggers |
| Offer Document | `output/foundations/offer.*` | Guarantee, proof points, value stack for reframes |

## Process

1. **Load ICP and Offer documents** — Extract all documented objections, belief stacks, proof points, and guarantee structure
2. **Categorize objections** — Group into categories: Price/Money, Timing, Trust, Spouse/Partner, Past Failure, Self-Doubt, DIY, Competitor Comparison, Implementation Concern
3. **Map to ICP segments** — Identify which segments raise which objections most frequently
4. **Adapt for context** — Adjust response format, length, and approach for the specified context:
   - **Sales call:** Conversational LAER response with coaching notes
   - **DM:** Short, conversational reframe (1-2 messages)
   - **Webinar:** Preemptive handling woven into presentation
   - **VSL:** Story-based or proof-based handling within script
   - **Proposal:** Written reframe with supporting evidence
5. **Write LAER responses** — For each objection: Listen cue, Acknowledge script, Explore question, Respond with story/proof/reframe
6. **Attach proof points** — Link each response to specific case studies, data points, or testimonials
7. **Add underlying concern analysis** — Document what the surface objection really means beneath
8. **Create quick-reference format** — Organize for rapid lookup during live conversations
9. **Include follow-up questions** — Questions to confirm the objection is resolved before moving forward
10. **Cross-reference with VSL/script objection handling** — Ensure consistency across all sales assets

## Destination

```
output/scripts/objections-{context}-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| ICP Coverage | Every documented ICP objection has a response | 100% coverage |
| Category Completeness | All 9 objection categories represented | All categories present |
| LAER Format | Every response follows Listen-Acknowledge-Explore-Respond | Format consistent |
| Proof Attachment | Every response includes at least one proof point | All responses proven |
| No Manipulation | Zero responses use pressure, guilt, or deception | Clean audit |
| Context Appropriate | Response format matches the specified context | Format verified |
| Underlying Concern | Surface objection + real underlying concern documented for each | Both layers present |
| ICP Language | Responses use the language of the relevant ICP segment | Language matched |
| Follow-Up Questions | Each response ends with a confirmation question | Questions present |
| Quick Reference | Organized for rapid lookup (alphabetical or by category) | Easily scannable |

## Output Format

The deliverable is a comprehensive objection library in markdown with:
- Library meta (context, ICP segments covered, total objections, last updated)
- Quick reference index (objection name → page/section link)
- Objections organized by category, each containing:
  - Surface objection (what they say)
  - Underlying concern (what they mean)
  - ICP segments most likely to raise this
  - Context-appropriate LAER response
  - Proof point(s) to deploy
  - Follow-up question to confirm resolution
  - Coaching note on tone and delivery
- Cross-reference table showing where each objection is also handled (VSL, funnel, scripts)

## Related Skills

| Skill | Relationship |
|---|---|
| sales-script | Scripts embed objection handling; this library is the comprehensive source |
| build-vsl | VSLs handle objections through story; this library provides the raw material |
| dm-sequence | DM closing sequences use shortened versions of these reframes |
| proposal | Proposals address objections through proof and guarantee sections |
| call-prep | Predicted objections in call prep pull from this library |
