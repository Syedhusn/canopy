# /email-sequence
> Design and write complete email sequences that nurture subscribers through the buyer journey toward conversion

## Usage
```
/email-sequence <type> [--length 5|7|10|14]
```

**Arguments:**
- `<type>` (required): One of `welcome`, `nurture`, `launch`, `webinar`, `re-engagement`, `application`, `post-purchase`, `broadcast`
- `--length` (optional): Number of emails in the sequence. Defaults vary by type.

**Examples:**
```
/email-sequence welcome --length 7
/email-sequence launch --length 14
/email-sequence webinar
/email-sequence re-engagement --length 5
/email-sequence broadcast
```

## What It Does

Produces a complete email sequence with strategic architecture, full copy for every email, subject lines, preview text, CTAs, and performance targets. Each email is assigned a strategic job (belief installation, objection handling, proof delivery, desire amplification, urgency creation) and mapped to a specific awareness level within the buyer journey progression.

**Sequence types and default lengths:**

| Type | Default Length | Purpose |
|------|---------------|---------|
| `welcome` | 5-7 emails | Introduce creator, share story, deliver value, soft pitch |
| `nurture` | Ongoing (7 emails) | Maintain relationship, deliver consistent value weekly/biweekly |
| `launch` | 7-14 emails | Build anticipation, create urgency, drive purchase during open cart |
| `webinar` | 4-6 emails | Confirm registration, maximize show rate, post-webinar follow-up |
| `re-engagement` | 3-5 emails | Win back cold/inactive leads, clean list |
| `application` | 3-5 emails | Pre-qualify high-ticket leads, build exclusivity |
| `post-purchase` | 5-7 emails | Reduce buyer's remorse, onboard, set expectations, seed upsell |
| `broadcast` | 1 email | Promotional, educational, or announcement (single send) |

## Agent
`email-sequence` — Email Marketing Sequence Architect

## Destination
`output/sequences/email-[type]-[date].md`

## Prerequisites
All three must exist and pass quality gates before execution:
- `reference/icp.md` — ICP profile with pain points, desires, objections, awareness levels, and language patterns
- `reference/offers.md` — Offer stack with transformation promise, pricing, bonuses, and guarantee
- `reference/brand-voice.md` — Brand voice profile with tone, vocabulary, sentence structure, and personality markers

## Process

1. **Load Foundations** — Read and cross-reference all three prerequisite documents. Extract top 5 pain points, top 5 desires, top objections, awareness level distribution, transformation promise, price point, value stack, bonuses, guarantee, tone parameters, vocabulary bank, and sentence structure rules.

2. **Select Sequence Architecture** — Based on the requested type, determine the number of emails, cadence (timing between sends), strategic jobs to assign, and awareness level progression path.

3. **Map Strategic Jobs** — Assign each email in the sequence exactly one strategic job from the job inventory: Pattern Interrupt, Origin Story, Belief Installation, Value Delivery, Proof Delivery, Objection Handling, Desire Amplification, Urgency Creation, Direct Pitch, or Future Pacing. No two consecutive emails should share the same job category.

4. **Map Awareness Progression** — Assign each email a target awareness level (Unaware, Problem-Aware, Solution-Aware, Product-Aware, Most-Aware) ensuring the sequence progresses logically from the subscriber's entry awareness level toward Most-Aware by the final email.

5. **Write Subject Lines** — Craft subject lines for each email using proven formulas (Curiosity Gap, Specific Benefit, Social Proof, Urgency/Scarcity, Pattern Interrupt, Direct Question). Validate every subject line is under 50 characters.

6. **Write Full Email Copy** — Write the complete body copy for each email in the creator's brand voice. Each email follows the anatomy: Hook (first 2 lines) then Body (story/value/proof) then CTA (single, clear). Include preview text that complements the subject line.

7. **Add Strategic Annotations** — Annotate each email with its strategic job, awareness level target, ICP pain point or desire addressed, and any objection handled.

8. **Compile Sequence Document** — Assemble the complete sequence document with sequence map, full email copy, timing schedule, and performance targets.

## Output Format

```markdown
# [Type] Email Sequence
**Creator:** [name]
**Sequence Type:** [type]
**Trigger:** [what initiates this sequence]
**Length:** [number of emails]
**Cadence:** [timing between emails]
**Goal:** [primary conversion objective]
**ICP Segment:** [target segment]

## Sequence Map
| # | Send Time | Subject Line | Strategic Job | Awareness Level | CTA |
|---|-----------|-------------|---------------|-----------------|-----|
| 1 | [timing] | "[subject]" | [job] | [level] | [action] |
| ... | ... | ... | ... | ... | ... |

---

## Email 1: [Strategic Job Name]
**Send:** [timing]
**Subject:** [subject line]
**Preview:** [preview text]
**Strategic Job:** [job]
**Awareness Level:** [level]
**ICP Pain Point:** [pain point addressed]

[Full email body copy in creator's brand voice]

**CTA:** [call to action]

---
[Repeat for all emails]

## Sequence Performance Targets
| Metric | Target |
|--------|--------|
| Average open rate | [X]% |
| Average click rate | [X]% |
| Sequence completion rate | [X]% |
| Primary conversion rate | [X]% |
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|------|----------|----------------|
| Brand Voice Consistency | Every email matches creator's tone, vocabulary, and sentence structure from brand-voice.md | Voice audit passes on all emails |
| Subject Line Length | All subject lines under 50 characters including spaces | 100% compliance |
| Single CTA | Every email contains exactly one call-to-action | 100% compliance |
| Awareness Progression | Sequence moves logically through awareness levels without skipping or regressing | Sequential progression verified |
| Strategic Job Uniqueness | No two consecutive emails share the same strategic job | Diversity check passes |
| ICP Alignment | Every email maps to at least one ICP pain point or desire from icp.md | 100% of emails mapped |
| Value-First Ratio | First 40% of sequence is pure value before any promotional content | Ratio verified |
| Preview Text | Every email has preview text that complements (not repeats) the subject line | 100% compliance |
