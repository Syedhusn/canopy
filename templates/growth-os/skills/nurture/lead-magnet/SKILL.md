# /lead-magnet
> Design and create complete lead magnets that convert strangers into subscribers by solving one specific problem with a quick win

## Usage
```
/lead-magnet <type> [--topic <topic>]
```

**Arguments:**
- `<type>` (required): One of `pdf-guide`, `checklist`, `cheat-sheet`, `swipe-file`, `mini-course`, `quiz`, `calculator`, `free-training`
- `--topic` (optional): Specific topic or sub-problem to address. If omitted, the agent will analyze the ICP and offer to recommend the highest-impact topic.

**Examples:**
```
/lead-magnet checklist --topic "launch prep"
/lead-magnet pdf-guide --topic "pricing high-ticket offers"
/lead-magnet quiz
/lead-magnet swipe-file --topic "sales call scripts"
/lead-magnet mini-course --topic "content strategy basics"
```

## What It Does

Produces a complete lead magnet specification and full content, including the lead magnet itself, landing page copy, and the strategic rationale connecting it to the paid offer. The lead magnet is designed to solve one specific sub-problem of the paid offer completely, delivering a quick win within 15 minutes of consumption.

**Lead magnet types and characteristics:**

| Type | Pages/Length | Consumption Time | Best For |
|------|-------------|------------------|----------|
| `pdf-guide` | 5-15 pages | 15-30 min | Complex topics needing structured explanation |
| `checklist` | 1-2 pages | 2-5 min | Process-oriented audiences wanting action steps |
| `cheat-sheet` | 1-2 pages | 1-3 min | Reference-seeking audiences wanting shortcuts |
| `swipe-file` | 5-20 items | 5-10 min | Implementation-focused audiences wanting templates |
| `mini-course` | 3-5 lessons | 3-5 days (email-delivered) | Audiences needing progressive learning |
| `quiz` | 5-10 questions | 3-5 min | Audiences valuing personalization |
| `calculator` | Input/output tool | 2-5 min | Data-driven audiences needing answers |
| `free-training` | 30-60 min video | 30-60 min | Audiences needing proof of expertise |

## Agent
`lead-magnet` — Lead Magnet Creation Specialist

## Destination
`output/content/lead-magnet-[type]-[date].md`

## Prerequisites
Both must exist and pass quality gates before execution:
- `reference/icp.md` — ICP profile with pain points ranked by urgency, desires, objections, and language patterns
- `reference/offers.md` — Offer stack with transformation promise and value stack (for sub-problem mapping)

Optional but recommended:
- `reference/positioning.md` — Unique mechanism (to teach through the correct lens)
- `reference/brand-voice.md` — Brand voice profile (for copy-heavy types like PDF guides and mini courses)

## Process

1. **Load Foundations** — Read reference/icp.md and reference/offers.md. Extract pain points ranked by urgency, desires ranked by intensity, top objections, transformation promise, value stack components, and unique mechanism.

2. **Map Sub-Problems** — Decompose the paid offer's full transformation into 4-6 component sub-problems. Evaluate each on three criteria: Urgency (how badly does the ICP need this solved?), Speed-to-Win (how quickly can they see a result?), and Connection-to-Offer (how naturally does solving this lead to wanting the full offer?).

3. **Select Sub-Problem** — Choose the sub-problem that scores highest across all three criteria, or use the topic specified by the user via `--topic`. Validate that the selected sub-problem is specific enough to solve completely in one lead magnet.

4. **Match Type to Audience** — Confirm the selected lead magnet type matches the ICP's consumption preferences and the sub-problem's nature. If mismatch detected, recommend an alternative type with rationale.

5. **Engineer Title** — Craft the lead magnet title using the primary formula: "The [Adjective] [Format] to [Desired Outcome] [Without Common Objection]". Generate 3 title variations and select the strongest.

6. **Structure Content** — Build the content outline following the type-specific architecture (PDF Guide: 6 sections, Checklist: 5 sections, Quiz: 5 sections, etc.). Ensure each section has a clear purpose and the overall flow delivers a quick win.

7. **Write Full Content** — Write the complete lead magnet content in the creator's brand voice. Embed 1-3 beliefs that support the paid offer. Include the bridge-to-offer section at the end.

8. **Write Landing Page Copy** — Create the landing page headline, subheadline, 3-5 bullet points, social proof element, CTA button text, and below-fold FAQ content.

9. **Compile Deliverable** — Assemble the complete specification document with strategic rationale, full content, landing page copy, and success metrics.

## Output Format

```markdown
# Lead Magnet Specification
**Creator:** [name]
**Type:** [type]
**Title:** "[Full title using formula]"
**Sub-Problem Solved:** [specific sub-problem]
**Quick Win:** [what the prospect achieves in <15 min]
**Connection to Paid Offer:** [how this leads to the offer]

## Target Audience
- **ICP Segment:** [from icp.md]
- **Awareness Level at Entry:** [level]
- **Awareness Level at Exit:** [level]

## Content Outline
[Section-by-section outline with teaching points and beliefs installed]

## Full Content
[Complete lead magnet content in creator's brand voice]

## Bridge to Offer
[Transition copy from free to paid]

## Landing Page Copy
**Headline:** [title]
**Subheadline:** [outcome + timeframe]
**Bullets:** [3-5 benefit-oriented bullets]
**CTA Button:** [action text]
**Social Proof:** [element]

## Success Metrics
| Metric | Target |
|--------|--------|
| Opt-in rate | [X]% |
| Completion rate | [X]% |
| Bridge click rate | [X]% |
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|------|----------|----------------|
| Quick Win Speed | Prospect can extract a tangible result within 15 minutes of consumption | Timed consumption test validates |
| Title Formula | Title follows "The [Adj] [Format] to [Outcome] [Without Objection]" or proven variation | Formula compliance verified |
| Offer Connection | Lead magnet solves a sub-problem that the paid offer solves comprehensively | Sub-problem mapping documented |
| Single Problem Focus | Lead magnet addresses exactly one specific problem, not a survey of multiple topics | Scope check passes |
| Belief Installation | 1-3 beliefs supporting the paid offer are embedded in the content | Beliefs identified and mapped |
| Bridge Presence | Natural transition to paid offer exists at the end without hard selling | Bridge section present and tonal |
| ICP Alignment | Language, examples, and framing match ICP's vocabulary and experience level | Voice audit passes |
| Actionability | Content includes specific implementation steps the prospect can take immediately | Action items present |
