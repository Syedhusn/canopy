# /webinar-script
> Design and script complete webinar, challenge, and workshop events using the 7-Figure Webinar Framework for maximum conversion

## Usage
```
/webinar-script <type> [--duration 60|90|120]
```

**Arguments:**
- `<type>` (required): One of `live-webinar`, `evergreen`, `3-day-challenge`, `5-day-challenge`, `7-day-challenge`, `workshop`
- `--duration` (optional): Total event duration in minutes. Defaults vary by type.

**Examples:**
```
/webinar-script live-webinar --duration 90
/webinar-script evergreen --duration 60
/webinar-script 3-day-challenge
/webinar-script 5-day-challenge --duration 75
/webinar-script workshop --duration 120
```

## What It Does

Produces a complete, word-for-word event script built on the 7-Figure Webinar Framework with all five sections:

1. **Introduction (15-30 min):** Opening hook (pattern interrupt), authority positioning (results + testimonials), unique mechanism sell (logical + emotional), commitment creation (verbal yes), and open loops
2. **Content (30-45 min):** 3-5 teaching points, each following Context then Teaching then Testimonial then Micro-commitment. Teaches the WHAT not the HOW. Bonuses set up during teaching. Objections handled via embedded testimonials.
3. **Transition (5-10 min):** Content recap, 3-5 yes questions, crossroads close (action vs inaction paths), permission to pitch
4. **Pitch (15-25 min):** Core offer, price anchor, bonus stack (second-best first, best last), guarantee, CTA
5. **Q&A (30+ min):** Scripted objection destruction (Money, Time, Product-specific objections from ICP), each followed by CTA, then genuine audience questions, final CTA

Also includes: objection tracking checklist, micro-commitment counter (target 20+ before pitch), testimonial placement map, and slide notes.

**Event types and defaults:**

| Type | Default Duration | Pitch Style | Best For |
|------|-----------------|-------------|----------|
| `live-webinar` | 90 min | Full pitch after content | Single-offer, high urgency |
| `evergreen` | 60 min | Full pitch, optimized for replay | Automated funnel |
| `3-day-challenge` | 3 x 75 min | Day 3 pitch | Deep engagement |
| `5-day-challenge` | 5 x 60 min | Day 5 pitch with Day 4 soft mention | Maximum trust |
| `7-day-challenge` | 7 x 45 min | Day 6-7 pitch with gradual build | Extended nurture |
| `workshop` | 120 min | Implementation then pitch | High-value demonstration |

## Agent
`webinar` — Webinar & Challenge Event Specialist

## Destination
`output/scripts/webinar-[type]-[date].md`

## Prerequisites
All four must exist and pass quality gates before execution:
- `reference/icp.md` — ICP profile with top objections (ranked by severity), pain points, desires, limiting beliefs, awareness levels, and language patterns
- `reference/offers.md` — Complete offer stack with price point, payment plans, bonuses with values, guarantee, transformation promise, mechanism name, and value stack with individual item prices
- `reference/positioning.md` — Unique mechanism, core belief, differentiation angles, contrarian stance, and origin story elements
- `reference/brand-voice.md` — Tone parameters, storytelling style, vocabulary bank, humor level, energy level, and speech patterns

## Process

1. **Load All Foundations** — Read and cross-reference all four prerequisite documents. Build a comprehensive brief: top 5 objections ranked by severity, top 5 pain points, top 5 desires, limiting belief pattern (Worthless/Helpless/Hopeless), unique mechanism with logical and emotional arguments, full offer stack with prices, bonus list with values, guarantee terms, brand voice parameters.

2. **Select Event Architecture** — Based on the requested type, determine section durations, number of teaching points, pitch placement, and multi-day structure (if challenge). Allocate time across the 5 sections.

3. **Script Introduction** — Write word-for-word script for all 6 introduction sub-sections:
   - 1A: Opening Hook (choose pattern interrupt type, write script)
   - 1B: Authority Positioning (layer results, testimonials, credibility humanizer)
   - 1C: Unique Mechanism Sell (logical argument + emotional argument)
   - 1D: Commitment Creation (sell on staying, explain value, get verbal yes, plant offer seed)
   - 1E: Open Loops (plant 3-5 loops with documented close points)
   - 1F: Pre-Handle Objections (weave objection handling via testimonials, logic reframes, stories)

4. **Script Content Section** — Write each teaching point following the exact pattern: Context (2-3 min) then Teaching (5-8 min) then Testimonial (1-2 min) then Micro-commitment (30 sec). Set up bonuses during teaching. Handle objections via embedded testimonials. Track micro-commitments (target 20+ before pitch).

5. **Script Transition** — Write the content recap, 3-5 yes questions, crossroads close (Path A inaction vs Path B action with full scripted copy), and permission to pitch.

6. **Script Pitch** — Write core offer presentation, price anchoring sequence calibrated to price point, bonus stack in strategic order (second-best first, best last with full copy for each), guarantee presentation, and final CTA.

7. **Script Q&A** — Write pre-scripted responses to top 6 ICP objections across Money, Time, and Product-specific categories. Each objection response follows: Validate then Reframe then Proof then CTA. Then write the live Q&A transition and final CTA.

8. **Build Tracking Documents** — Create objection tracking checklist (every ICP objection mapped to where it is handled), micro-commitment counter (every yes moment listed with section reference), and testimonial placement map.

9. **Compile Script** — Assemble the complete script document with section timing, slide notes, strategic annotations, and performance targets.

## Output Format

```markdown
# [Event Type] Script: [Title]
**Creator:** [name]
**Event Type:** [type]
**Duration:** [minutes]
**Offer:** [offer name]
**Price:** [price]
**Target Audience:** [ICP segment]

## Pre-Event Checklist
- [ ] Slides prepared
- [ ] Testimonials loaded
- [ ] Proof screenshots ready
- [ ] Offer page live
- [ ] Bonuses confirmed

## Section 1: Introduction ([X] min)
### Opening Hook ([X] min)
[Word-for-word script]

### Authority Positioning ([X] min)
[Script with slide notes]

### Unique Mechanism ([X] min)
[Script]

### Commitment Creation ([X] min)
[Script with chat prompts]

### Open Loops
1. [Loop + close point]
2. [Loop + close point]
3. [Loop + close point]

## Section 2: Content ([X] min)
### Teaching Point 1: [Title]
**Context:** [script]
**Teaching:** [script]
**Testimonial:** [name, quote, result, objection crushed]
**Micro-Commitment:** [question]

[Repeat for all teaching points]

## Section 3: Transition ([X] min)
### Recap — [script]
### Yes Questions — [numbered list]
### Crossroads Close — [Path A + Path B script]
### Permission to Pitch — [script]

## Section 4: Pitch ([X] min)
### Core Offer — [script]
### Price Anchor — [script]
### Bonus Stack — [each bonus with script]
### Guarantee — [script]
### CTA — [script]

## Section 5: Q&A ([X] min)
### Scripted Objections — [6 objections with full responses]
### Live Q&A Transition — [script]
### Final CTA — [script]

## Objection Tracking Checklist
| Objection | Section | Method |
|-----------|---------|--------|
| ... | ... | ... |

## Micro-Commitment Counter
Total: [X] (target: 20+)
[Listed by section]

## Performance Targets
| Metric | Target |
|--------|--------|
| Attendance rate | [X]% |
| Stay rate through pitch | [X]% |
| Conversion rate | [X]% |
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|------|----------|----------------|
| Five Sections Present | All 5 webinar framework sections are scripted | 100% section coverage |
| ICP Objections Addressed | Every top objection from icp.md is handled somewhere in the script | Objection checklist 100% complete |
| Testimonial Slots | Minimum 3 testimonial placement points in authority + 1 per teaching point | Testimonial count verified |
| Micro-Commitment Count | At least 20 "yes" response moments scripted before the pitch begins | Counter shows 20+ |
| Crossroads Close | Transition includes full Path A (inaction) and Path B (action) scripted copy | Both paths present |
| Bonus Order | Bonuses presented second-best first, best last | Order verified |
| WHAT Not HOW | Teaching points cover frameworks and concepts, not step-by-step implementation | Content level check |
| Permission to Pitch | Explicit permission-asking moment exists before the pitch section | Transition verified |
| Scripted Q&A | Minimum 6 pre-written objection responses with CTA after each | Q&A section verified |
| Final CTA | The absolute last words of the script are a clear call to action | Script ending verified |
