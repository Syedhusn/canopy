# /linkedin-post

> Write a LinkedIn post with hook optimization, professional tone, and engagement strategy.

## Usage

```
/linkedin-post <type> [--topic "topic"] [--batch week]
```

**Arguments:**
- `<type>` (required) — Post type: `authority`, `story`, `framework`, `contrarian`, `case-study`, `engagement`
- `--topic` — Specific topic, story, or angle
- `--batch week` — Produce a full week of LinkedIn posts (Monday-Friday) using the optimal mix

**Examples:**
```
/linkedin-post authority --topic "why most scaling strategies fail"
/linkedin-post story --topic "the hardest lesson I learned as a founder"
/linkedin-post framework --topic "the 3-step client acquisition model"
/linkedin-post contrarian --topic "networking events are a waste of time"
/linkedin-post case-study --topic "how we helped client X achieve Y"
/linkedin-post engagement --topic "biggest challenge in your business right now"
/linkedin-post authority --batch week --topic "personal branding"
```

## What It Does

Produces publish-ready LinkedIn posts with:
- A "see more" hook optimized for the first 2 lines (~210 characters)
- Body copy with LinkedIn-native formatting (aggressive line breaks, short paragraphs)
- Professional tone overlay on the brand voice
- Genuine conversation starter (not forced engagement bait)
- First-comment strategy and reply plan
- Hashtag recommendations (3 max)

When `--batch week` is used, produces 5 posts (Monday-Friday) using the optimal content mix: Framework (Mon), Story (Tue), Contrarian (Wed), Case Study (Thu), Engagement (Fri).

## Agent

**linkedin** — The LinkedIn Content Specialist handles all LinkedIn content creation.

## Destination

```
output/marketing/linkedin/[type]-[sanitized-topic]-[YYYY-MM-DD].md
```
For weekly batches:
```
output/marketing/linkedin/week-[sanitized-topic]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires (reframed for professional context) |
| Brand Voice Profile | reference/brand-voice.md | Tone, vocabulary (with professional overlay) |
| Positioning Document | reference/positioning.md | Mechanism, core belief, differentiation |
| Offer Document | reference/offers.md | For case study posts: transformation, results |

## Process

### Step 1: Load Foundations
Read prerequisite documents. Extract:
- ICP pain points reframed for professional/LinkedIn context
- Brand voice with professional overlay applied
- Mechanism and positioning for authority and framework posts
- Results data for case study posts

### Step 2: Select Post Framework
Load the framework for the specified type:
- **Authority:** Bold claim hook > Context > 3-5 supporting points > Proof > Takeaway > Conversation prompt
- **Story:** Story hook > Backstory > Struggle > Shift > Lesson > Invitation
- **Framework:** Framework name + claim > Why existing approaches fail > 3-5 steps > Application > Save CTA
- **Contrarian:** Hot take > Conventional wisdom > Evidence it's wrong > Alternative > Nuance > Stance
- **Case Study:** Headline result > Context > Approach > Key decisions > Results > Lesson > DM invitation
- **Engagement:** Observation/question > Personal perspective > Genuine question

### Step 3: Write the "See More" Hook
Craft the first 2 lines (~210 characters) using proven formulas:
- Contrarian opening, specific result, vulnerable admission, pattern recognition, "I stopped..." format, question reframe, timeline, or industry callout
- Test: Would a busy professional stop scrolling and tap "see more"?

### Step 4: Write the Full Post
Write the body with LinkedIn-native formatting:
- Single-sentence paragraphs
- Line breaks between every 1-2 sentences
- First person singular ("I" not "we")
- Specific numbers over vague claims
- Name the industry and role specifically
- End with genuine curiosity, not "Agree?"
- 800-1500 characters total

### Step 5: Add Engagement Strategy
Define:
- First comment: Additional context, question, or resource to pin
- Reply strategy: How to engage with the first 10 comments in the first hour
- Tag strategy: Who to tag (if anyone) and why
- Hashtags: 3 maximum, relevant and targeted

### Step 6: Format for Publishing
Ensure the post is copy-paste ready:
- No markdown formatting (LinkedIn does not support it)
- Line breaks are actual line breaks (not paragraph markers)
- Hashtags at the end, not inline
- No emojis as bullet points (unless specifically part of brand voice)

## Output Format

```markdown
# LINKEDIN POST: [Title]
**Type:** [Type]
**Buyer Stage:** [Stage]
**ICP Pain Point:** [Pain — professional context]
**Objective:** [Authority | Lead Gen | Engagement | Offer Awareness]
**Best Publish Time:** [Day + Time]

---

## POST COPY

[Exact post text, formatted as it will appear on LinkedIn]
[Line breaks included]
[Ready to copy-paste]

#Hashtag1 #Hashtag2 #Hashtag3

---

## FIRST COMMENT
[Text to post as the first comment]

## ENGAGEMENT STRATEGY
- Reply to all comments within [X] hours
- Tag: [Names and reasons, or "No tags"]
- Repurpose: [Where this content goes next]
- Expected outcome: [What success looks like]
```

## Quality Gates

- [ ] First 2 lines (~210 characters) create compelling "see more" hook
- [ ] Post uses LinkedIn-native formatting (line breaks, short paragraphs)
- [ ] Written in first person singular
- [ ] Professional tone overlay is applied without losing brand personality
- [ ] No LinkedIn cliches ("Agree?", "I'm humbled to announce...")
- [ ] Specific numbers and details used over vague claims
- [ ] 3 or fewer hashtags
- [ ] No emoji bullet points
- [ ] Ends with genuine conversation starter
- [ ] Post length is 800-1500 characters
- [ ] First comment strategy is defined
- [ ] ICP pain points are reframed for professional context
- [ ] Post is copy-paste ready (no markdown formatting)
