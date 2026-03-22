# /story-sequence

> Design a multi-slide Instagram/Facebook story sequence with visual direction and interactive elements.

## Usage

```
/story-sequence <type> [--length 5|7|10] [--topic "topic"]
```

**Arguments:**
- `<type>` (required) — Sequence type: `launch`, `proof`, `objection`, `education`, `faq`, `personal`, `skepticism`, `mission`
- `--length` — Number of slides: 5 (default), 7, or 10
- `--topic` — Specific topic, objection, or theme to address

**Examples:**
```
/story-sequence launch --length 7 --topic "new course launch"
/story-sequence objection --topic "it's too expensive"
/story-sequence proof --length 10
/story-sequence education --topic "why most strategies fail"
/story-sequence faq --length 7
/story-sequence personal --length 5
/story-sequence skepticism --topic "results seem too good to be true"
/story-sequence mission --topic "what we stand for"
```

## What It Does

Produces a complete, slide-by-slide story sequence with:
- Exact text copy for each slide (formatted as it appears on screen)
- Visual direction (background type, photo/video guidance, composition)
- Interactive element placement (polls, question boxes, sliders, countdowns)
- Strategic purpose annotation for each slide
- Design notes (font size, placement, color guidance)
- Reply handling strategy for audience responses

For `launch` type, produces a full 5-7 day story arc with daily sequences and escalating anticipation mechanics.

## Agent

**stories** — The Instagram/Facebook Story Sequence Specialist handles all ephemeral multi-slide content.

## Destination

```
output/marketing/stories/[type]-[sanitized-topic]-[YYYY-MM-DD].md
```
For launch arcs:
```
output/marketing/stories/launch-arc-[sanitized-topic]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires, language patterns |
| Brand Voice Profile | reference/brand-voice.md | Casual/intimate voice parameters |
| Positioning Document | reference/positioning.md | Mechanism (for education/differentiation type) |
| Offer Document | reference/offers.md | Offer details (for launch and proof types) |

## Process

### Step 1: Load Foundations
Read prerequisite documents. Extract:
- ICP pain points and desires relevant to the sequence type
- Brand voice at its most casual and personal register
- Mechanism details (for education and differentiation sequences)
- Offer details (for launch sequences)
- Top objections (for objection and skepticism sequences)

### Step 2: Select Sequence Architecture
Load the framework for the specified type:
- **Launch:** 5-7 day arc: Seed problem > Personal story > Hint solution > Social proof > Reveal > Objections > Final CTA
- **Proof:** Bold result > Testimonial 1 > Testimonial 2 > Testimonial 3 > Pattern observation > Mechanism > CTA
- **Objection:** Name objection > Validate > Reframe with story > New perspective + proof > Poll > Bridge
- **Education:** Surprising insight > Common approach > Why it fails > What works (mechanism) > Proof > Save CTA
- **FAQ:** "I keep getting asked..." > Q1+A > Q2+A > Q3+A > Question box sticker
- **Personal:** Morning/current moment > Personal story > Vulnerability > Lighter moment > Question to audience
- **Skepticism:** Acknowledge skepticism > "I was the biggest skeptic" > Moment of proof > Specific result > Logic > Invitation
- **Mission:** Bold mission statement > Why it matters > Industry problem > "What we stand for" > Values proof > Polarizing invitation

### Step 3: Write Each Slide
For every slide, produce:
- **Slide type:** Text card, photo+caption, screenshot, video clip, poll/quiz, question box, slider, or countdown
- **Visual:** Background description, photo/video guidance, composition notes
- **Text:** Exact copy (30 words max per slide), formatted as it appears on screen
- **Interactive element:** Poll options, question prompt, slider emoji, countdown details (if applicable)
- **Design notes:** Font size, placement, color, contrast guidance
- **Strategic purpose:** Why this slide exists in the sequence arc

### Step 4: Add Interactive Elements
Ensure minimum 1 interactive element per 5-slide sequence:
- Polls: 2-option questions that reveal audience beliefs or preferences
- Question boxes: Open prompts that generate replies and conversation data
- Sliders: Emoji-based rating scales for fun engagement
- Quizzes: Multiple-choice questions that test knowledge or awareness
- Countdowns: For launches and time-sensitive announcements

### Step 5: Define Reply Strategy
For each sequence, specify:
- Expected reply types (what responses to anticipate)
- Response templates (how to reply to common responses)
- Data collection notes (what the polls/questions reveal about the audience)
- Follow-up sequence recommendation (what to post next based on responses)

### Step 6: Validate Sequence
Check the completed sequence against:
- [ ] First slide creates a reason to keep tapping
- [ ] Text-heavy and visual-heavy slides alternate for rhythm
- [ ] No slide exceeds 30 words
- [ ] At least 1 interactive element is included
- [ ] CTA appears on the final slide (not earlier)
- [ ] Sequence feels spontaneous, not scripted
- [ ] Brand voice is at its most casual and personal register

## Output Format

```markdown
# STORY SEQUENCE: [Title]
**Type:** [Type]
**Slides:** [X]
**Purpose:** [Strategic objective]
**Buyer Stage:** [Stage]
**ICP Pain Point:** [Pain]

---

## Slide 1 — HOOK
**Type:** [Slide type]
**Visual:** [Background/photo/video direction]
**Text:** "[Exact on-screen text]"
**Element:** [Interactive element if any]
**Design:** [Font, placement, color]
**Purpose:** [Why this slide exists]

## Slide 2 — [BEAT]
[Same structure...]

[Continue for all slides...]

## Slide [X] — CTA
[Final slide with action element]

---

## REPLY STRATEGY
- Expected replies: [Types]
- Response templates: [How to reply]
- Data to collect: [What polls reveal]
- Follow-up sequence: [What to post next]

## SEQUENCE CONTEXT
- Content calendar connection: [Where this fits]
- Best posting time: [Recommendation]
- Cross-reference: [Related content on other platforms]
```

## Quality Gates

- [ ] First slide creates an open loop or curiosity trigger
- [ ] No slide exceeds 30 words of text
- [ ] Text-heavy and visual-heavy slides alternate
- [ ] Minimum 1 interactive element per sequence
- [ ] CTA only appears on the final slide
- [ ] Copy reads as casual and personal (not marketing copy)
- [ ] Brand voice matches the creator's most relaxed register
- [ ] ICP pain points are addressed using audience language
- [ ] Safe zones are respected (top 15%, bottom 15%, sides 10%)
- [ ] Reply strategy is defined with specific response templates
- [ ] Launch sequences (if applicable) have complete multi-day arcs
