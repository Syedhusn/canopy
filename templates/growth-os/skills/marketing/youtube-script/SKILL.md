# /youtube-script

> Write a complete, production-ready YouTube video script with hook, body, CTA, and visual direction.

## Usage

```
/youtube-script <type> [--length short|medium|long] [--topic "topic"]
```

**Arguments:**
- `<type>` (required) — Video type: `educational`, `vssl`, `lifestyle`, `tutorial`, `story`, `case-study`, `interview`
- `--length` — Script length: `short` (8-12 min), `medium` (15-25 min, default), `long` (30-60 min)
- `--topic` — Specific topic or angle to cover

**Examples:**
```
/youtube-script educational --topic "how to build a personal brand from zero"
/youtube-script vssl --length long
/youtube-script tutorial --length short --topic "setting up your first sales funnel"
/youtube-script story --length medium
/youtube-script case-study --topic "how client X achieved Y result"
/youtube-script interview --length long --topic "guest name and expertise area"
```

## What It Does

Produces a complete, production-ready video script that the creator can use to film with minimal modification. The script includes the hook (first 30 seconds), credibility establishment, structured body with retention mechanics, visual direction (B-roll suggestions, on-screen graphics, camera angle notes), and the appropriate close (bridge to next video for value content, or full CTA for VSSL).

For VSSL scripts specifically, follows the 80/20 storytelling-to-mechanism ratio with all required sections: demographic callout, viewer gain, storytelling arc, mechanism reveal, value stack pitch, and objection handling.

## Agent

**youtube** — The YouTube Content Specialist handles all video script creation.

## Destination

```
output/marketing/youtube/[type]-[sanitized-topic]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires, awareness level, language patterns |
| Brand Voice Profile | reference/brand-voice.md | Tone, vocabulary, speech patterns |
| Positioning Document | reference/positioning.md | Mechanism name, core belief |
| Offer Document | reference/offers.md | Required for VSSL: transformation, value stack, objections |

## Process

### Step 1: Load Foundations
Read prerequisite documents. For the specified video type, extract:
- Relevant ICP pain points and language patterns
- Brand voice speech patterns (contractions, phrases, rhythm)
- Mechanism name and positioning
- Offer details (for VSSL and case-study types)

### Step 2: Select Video Architecture
Based on the type parameter, load the corresponding framework:
- **Educational:** Hook > Credibility > 3-5 teaching points with stories > Recap > Bridge
- **VSSL:** Demographic callout > Viewer gain > Storytelling 80% > Mechanism 20% > Pitch > Objections
- **Lifestyle:** Aspirational hook > Day-in-life narrative > Subtle mechanism weave > Identity close
- **Tutorial:** Problem hook > Tool/setup overview > Step-by-step walkthrough > Common mistakes > Recap
- **Story:** Emotional hook > Before state > Breaking point > Discovery > Journey > Results > Lesson
- **Case Study:** Result hook > Who they were > The challenge > The approach > Results > Lessons > Bridge to VSSL
- **Interview:** Guest intro hook > Origin story Q > Core expertise Qs > Tactical deep-dive > Rapid fire > Close

### Step 3: Engineer the Hook
Write 3 hook variants for the first 30 seconds:
- Variant A: Curiosity Gap approach
- Variant B: Bold Claim approach
- Variant C: Story Opener or Pain Agitation approach
Mark the recommended variant and explain why.

### Step 4: Write the Full Script
Write the complete script in spoken language:
- Use contractions, sentence fragments, rhetorical questions
- Include [B-roll] suggestions in brackets throughout
- Insert pattern interrupt / re-hook lines every 2-3 minutes
- Mark on-screen text and graphics
- Include music mood notes at key transitions
- Write in the creator's voice from brand-voice.md

### Step 5: Add Production Notes
Append production details:
- Thumbnail concept (3 options with text overlay suggestions)
- Title options (3 variants using different hook formulas)
- B-roll shot list
- On-screen graphic list
- Estimated retention risk points with mitigation strategies
- Equipment/setup notes if relevant

### Step 6: Generate Metadata
Create YouTube-optimized metadata:
- 3 title options (under 60 characters, keyword-included)
- Description (first 2 lines compelling, keywords natural, timestamps, links)
- Tags (10-15 relevant tags)
- Category recommendation
- End screen recommendations (2 related videos to suggest)

## Output Format

```markdown
# YOUTUBE SCRIPT: [Title]
**Type:** [Type]
**Target Length:** [X minutes]
**Buyer Journey Stage:** [Stage]
**ICP Pain Point:** [Specific pain]

## THUMBNAIL & TITLE
### Thumbnail Options
1. [Description + text overlay]
2. [Description + text overlay]
3. [Description + text overlay]

### Title Options
1. [Title A]
2. [Title B]
3. [Title C]

---

## HOOK OPTIONS (0:00 - 0:30)

### Hook A (RECOMMENDED): [Approach]
[Script text]

### Hook B: [Approach]
[Script text]

### Hook C: [Approach]
[Script text]

## CREDIBILITY + PROMISE (0:30 - 1:30)
[Script text]

## BODY
### [Section Title] (Timestamp)
[Script with visual notes, B-roll, pattern interrupts]

[Continue all sections...]

## CLOSE (Timestamp)
[Summary + bridge/CTA]

---

## PRODUCTION NOTES
[B-roll list, graphics, music, retention risk points]

## YOUTUBE METADATA
[Description, tags, category, end screens]
```

## Quality Gates

- [ ] Hook creates an open loop that compels watching
- [ ] Script is written in spoken language (not essay style)
- [ ] Pattern interrupts appear every 2-3 minutes
- [ ] B-roll and visual suggestions are included throughout
- [ ] ICP pain points are addressed using their language
- [ ] Brand voice matches reference/brand-voice.md speech patterns
- [ ] VSSL follows exact 80/20 structure with all 6 sections (if type=vssl)
- [ ] Value content has NO external CTA or sales links (if type=educational/tutorial)
- [ ] Script length matches the requested duration
- [ ] Thumbnail and title options are provided
- [ ] Production notes are actionable for the filming session
