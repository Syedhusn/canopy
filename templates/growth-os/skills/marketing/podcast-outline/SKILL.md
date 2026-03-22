# /podcast-outline

> Create a complete podcast episode outline with show notes, promotional copy, and clip extraction brief.

## Usage

```
/podcast-outline <type> [--guest "guest name"] [--topic "topic"] [--length short|medium|long]
```

**Arguments:**
- `<type>` (required) — Episode type: `solo`, `interview`, `case-study`, `hot-take`, `qa`, `bts`
- `--guest` — Guest name and expertise (required for `interview` type)
- `--topic` — Episode topic or angle
- `--length` — Target duration: `short` (15-25 min), `medium` (25-40 min, default), `long` (40-60 min)

**Examples:**
```
/podcast-outline solo --topic "why most people fail at building an audience"
/podcast-outline interview --guest "Jane Smith, scaling expert" --length long
/podcast-outline case-study --topic "how client X went from 0 to $50K/month"
/podcast-outline hot-take --topic "certifications are killing your business"
/podcast-outline qa --topic "audience questions about pricing"
/podcast-outline bts --topic "behind the scenes of our latest launch"
/podcast-outline interview --guest "John Doe, AI startup founder" --topic "AI in creator businesses" --length long
```

## What It Does

Produces a complete podcast episode package including:
- Structured episode outline with segments, talking points, and transition notes
- 60-second hook/cold open script
- Guest interview prep (research brief + question framework) for interview episodes
- Show notes with SEO-optimized title, description, timestamps, and key takeaways
- Promotional copy for email, Instagram, Twitter, and LinkedIn
- Clip extraction brief identifying 3-5 moments for short-form video repurposing
- Audiogram text suggestions for audio clips

The outline provides enough structure to guide a natural-sounding conversation without over-scripting.

## Agent

**podcast** — The Podcast Content Specialist handles all podcast episode planning and supporting content.

## Destination

```
output/marketing/podcast/[type]-[sanitized-topic]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires, questions the audience has |
| Brand Voice Profile | reference/brand-voice.md | Conversational tone, speech patterns |
| Positioning Document | reference/positioning.md | Mechanism, core belief |
| Offer Document | reference/offers.md | For case-study and CTA context |

## Process

### Step 1: Load Foundations
Read prerequisite documents. Extract:
- ICP pain points relevant to the episode topic (what does the audience need to hear?)
- Brand voice conversational register (how does the host naturally speak?)
- Mechanism details for authority positioning
- Offer details for contextual CTAs

### Step 2: Define the One Big Idea
Before building structure, articulate:
- The ONE thing a listener should remember after this episode
- Why this topic matters RIGHT NOW for the ICP
- What transformation the listener will experience (from what state to what state)

### Step 3: Select Episode Architecture
Based on type:

**Solo:**
Cold open > Intro + hook > Context > 3-5 teaching points with stories > Application > Recap > CTA

**Interview:**
Cold open (guest quote) > Host intro + guest positioning > Origin story > 3-4 core questions > Tactical deep-dive > Lightning round (optional) > Guest CTA > Host wrap

**Case Study:**
Hook (headline result) > Context > Challenge > Approach > Key decisions > Results > Lessons > CTA

**Hot Take:**
Cold open (the take) > Conventional wisdom > Why it's wrong > Alternative > Nuance > Implications > Invitation to disagree

**Q&A:**
Intro + sourcing note > Question 1 (most relevant) > Q2 > Q3-5 > Quick-fire section > Submit future Qs

**BTS:**
Current state > Challenge being faced > What's being learned > What's coming > Personal reflection > Listener invitation

### Step 4: Build the Outline
For each segment:
- Segment title and timestamp estimate
- Key point (what this segment must accomplish)
- Talking points (bullet-level, not scripted)
- Supporting stories, examples, or data to reference
- Transition note to next segment

For interview episodes, also build:
- Pre-interview research brief (expertise, recent content, unique angles, audience overlap)
- Question framework (7-10 questions across types: origin, insight, contrarian, tactical, story, connection, signature)
- Follow-up prompt templates ("Can you give me an example?", "What would you say to someone who...")

### Step 5: Write the Cold Open
Script the first 60 seconds:
- Option A: Teaser (pull compelling moment from later in episode)
- Option B: Promise hook (what listener will learn)
- Option C: Story hook (vivid scene-setting)
Choose the strongest option and write it out.

### Step 6: Identify Clip-Worthy Moments
Mark 3-5 segments as potential clips:
- Estimated timestamp range
- Duration (30-90 seconds)
- Topic/hook for the clip
- Best platform for the clip
- Caption/hook text for social posting

### Step 7: Write Show Notes
- SEO-optimized episode title
- 2-3 paragraph description (hook, content preview, audience fit)
- Timestamps for every major topic shift
- 3-5 key takeaways as bullets
- Resources mentioned with links
- Guest links (if applicable)
- CTA with link

### Step 8: Write Promotional Copy
Produce:
- Email newsletter teaser (3-4 sentences)
- Instagram caption (hook + preview + listen CTA)
- Twitter thread (3-5 tweets extracting insights)
- LinkedIn post (professional angle on episode topic)
- 3-5 audiogram quote suggestions

## Output Format

```markdown
# EPISODE OUTLINE: [Title]
**Episode #:** [Number]
**Type:** [Type]
**Guest:** [Name or "Solo"]
**Target Length:** [X minutes]
**One Big Idea:** [Single sentence]
**Buyer Stage:** [Stage]
**ICP Pain Point:** [Pain]

---

## COLD OPEN (0:00 - 1:00)
[Scripted 60-second hook]

## INTRO (1:00 - 3:00)
[Episode + guest introduction, topic framing]

## SEGMENT 1: [Title] (3:00 - [Timestamp])
**Key Point:** [Goal]
**Talking Points:**
- [Point with story/example]
- [Point with data]
- [Point with ICP connection]
**Transition:** [Bridge to next segment]

[Continue all segments...]

## CLOSE ([Timestamp] - End)
**Recap:** [One Big Idea restated]
**CTA:** [Contextual call to action]
**Next Episode Tease:** [Preview]

---

## GUEST PREP (if interview)
[Research brief + question framework]

## CLIP EXTRACTION BRIEF
[3-5 clips with timestamps, platforms, hooks]

## SHOW NOTES
[Title, description, timestamps, takeaways, links]

## PROMOTIONAL COPY
[Email, Instagram, Twitter, LinkedIn, audiograms]
```

## Quality Gates

- [ ] One Big Idea is clearly defined and threaded throughout
- [ ] Cold open creates compelling reason to keep listening
- [ ] Talking points are bullet-level (not scripted verbatim)
- [ ] Each segment has a clear purpose and transition
- [ ] Interview questions (if applicable) progress from warm to deep
- [ ] 3-5 clip-worthy moments are identified with timestamps
- [ ] Show notes are SEO-optimized with complete timestamps
- [ ] Promotional copy is written for 4 platforms
- [ ] CTA is specific and contextual (not generic "subscribe")
- [ ] ICP pain points are addressed through the episode content
- [ ] Brand voice matches the host's conversational style
- [ ] Episode length aligns with the requested duration
- [ ] Outline provides structure without over-scripting
