# /twitter-thread

> Write a Twitter/X thread or daily tweet batch with hook optimization and engagement strategy.

## Usage

```
/twitter-thread <type> [--topic "topic"] [--tweets 7|10|15]
```

**Arguments:**
- `<type>` (required) — Content type: `value`, `story`, `hot-take`, `how-to`, `listicle`, `case-study`, `daily`
- `--topic` — Specific topic, story, or angle
- `--tweets` — Thread length: 7 (default), 10, or 15 tweets (ignored for `hot-take` and `daily`)

**Examples:**
```
/twitter-thread value --topic "what I learned spending $100K on ads" --tweets 10
/twitter-thread story --topic "the day my business almost failed"
/twitter-thread hot-take --topic "course creators don't need a personal brand"
/twitter-thread how-to --topic "building an email list from zero" --tweets 7
/twitter-thread listicle --topic "10 tools every creator needs" --tweets 12
/twitter-thread case-study --topic "how client X doubled revenue"
/twitter-thread daily --topic "personal branding"
```

## What It Does

**For threads (value, story, how-to, listicle, case-study):** Produces a complete, publish-ready thread with an engineered hook tweet, structured body tweets, proof/evidence integration, and a closing CTA. Includes 3 hook variants for A/B testing.

**For hot-take:** Produces a single tweet or 2-3 tweet mini-thread with a defensible contrarian position.

**For daily:** Produces a batch of 5-7 standalone tweets covering the full mix: insights, hot takes, personal stories, engagement questions, mechanism references, and reframes.

## Agent

**twitter** — The Twitter/X Content Specialist handles all tweet and thread creation.

## Destination

```
output/marketing/twitter/[type]-[sanitized-topic]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires, language patterns |
| Brand Voice Profile | reference/brand-voice.md | Tone, vocabulary (adapted for Twitter's sharp format) |
| Positioning Document | reference/positioning.md | Mechanism name, core belief |

## Process

### Step 1: Load Foundations
Read prerequisite documents. Extract:
- ICP pain points and language for hook engineering
- Brand voice adapted for Twitter (sharper, more concise, more opinionated)
- Mechanism name and positioning for authority tweets
- Core beliefs for hot takes and contrarian positioning

### Step 2: Select Thread Architecture
Based on type:
- **Value:** Hook (result/cost revelation) > Context > 3-7 teaching points > Proof > Summary > CTA
- **Story:** Hook (outcome tease) > Backstory > Rising action > Climax > Lesson > Application > CTA
- **Hot Take:** Contrarian claim > Evidence > Alternative > Nuance
- **How-To:** Hook (result promise) > Steps 1-5+ > Bonus tip > CTA
- **Listicle:** Hook (number + benefit) > Items 1-X (best last) > CTA
- **Case Study:** Hook (headline result) > Context > Challenge > Approach > Results > Lessons > CTA
- **Daily:** 2 insights + 1 hot take + 1 personal + 1 question + 1 mechanism + 1 reframe

### Step 3: Engineer Hook Variants
Write 3 hook variants from different angles:
- Hook A: Primary angle (recommended)
- Hook B: Alternative framing
- Hook C: Different emotional register
Each hook must be under 280 characters and create an open loop.

### Step 4: Write Thread/Tweets
For threads:
- Each tweet is under 280 characters
- Each tweet can stand alone (someone might see only that tweet)
- End each tweet with a micro-hook to the next
- Include at least one "bookmark trigger" — a tweet so tactical it demands saving
- Vary sentence length (short punchy lines mixed with longer explanatory ones)
- Number tweets (1/, 2/, etc.) or use narrative flow

For daily batches:
- 5-7 standalone tweets
- Each tweet has a specific function in the mix
- Posting time recommendations for each tweet
- No hashtags

### Step 5: Add Engagement Strategy
For each thread/batch:
- First reply to pin (additional value or context)
- Reply strategy for the first hour
- Quote-tweet targets (accounts to engage with)
- Repurposing recommendations (which tweets become reels/LinkedIn posts)

## Output Format

### Thread Format
```markdown
# THREAD: [Title]
**Type:** [Type]
**Topic:** [Topic]
**Buyer Stage:** [Stage]
**ICP Pain Point:** [Pain]

---

## HOOK VARIANTS

### Hook A (RECOMMENDED)
[Tweet text]

### Hook B
[Tweet text]

### Hook C
[Tweet text]

---

## THREAD

### 1/
[Hook tweet — use recommended variant]

### 2/
[Tweet]

[Continue...]

### [X]/
[CTA tweet]

---

## ENGAGEMENT STRATEGY
- Pin reply: [Text]
- First hour: [Strategy]
- Quote-tweet targets: [Accounts]
- Repurpose into: [Platforms]
```

### Daily Batch Format
```markdown
# DAILY TWEETS: [Theme]
**Date/Week:** [Period]
**ICP Pain Points:** [List]

---

### Tweet A — Insight
[Tweet] | Best time: [Time]

### Tweet B — Hot Take
[Tweet] | Best time: [Time]

[Continue for all tweets...]

---

## ENGAGEMENT PLAN
[Reply strategy, quote-tweet targets, pin decision]
```

## Quality Gates

- [ ] Every tweet is under 280 characters
- [ ] Hook tweet creates an open loop that compels "show this thread" click
- [ ] No hashtags are used (Twitter best practice)
- [ ] Each tweet can be understood independently
- [ ] At least one "bookmark trigger" tweet exists per thread
- [ ] Brand voice matches reference/brand-voice.md (adapted for Twitter)
- [ ] ICP language patterns appear in hooks and key tweets
- [ ] Thread ends with a clear, specific CTA
- [ ] 3 hook variants are provided for testing
- [ ] Engagement strategy is defined (pin reply, first-hour plan)
- [ ] Daily batches cover the full tweet mix (insight, hot take, personal, question, mechanism, reframe)
