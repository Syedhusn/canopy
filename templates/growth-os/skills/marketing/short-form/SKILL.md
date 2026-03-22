# /short-form

> Create a short-form video script (Reel, TikTok, YouTube Short) with hook, visual direction, and caption.

## Usage

```
/short-form <type> [--platform instagram|tiktok|youtube-shorts|all] [--batch 1|3|5] [--topic "topic"]
```

**Arguments:**
- `<type>` (required) — Reel type: `storytelling`, `lifestyle`, `lead-magnet`, `hook-value`, `bts`, `quick-tips`, `transformation`, `testimonial`, `split-screen`
- `--platform` — Target platform for optimization (default: `all`)
- `--batch` — Number of scripts to produce: 1 (default), 3, or 5
- `--topic` — Specific topic, angle, or subject matter

**Examples:**
```
/short-form hook-value --topic "biggest mistake new entrepreneurs make"
/short-form storytelling --platform instagram --topic "the day I quit my job"
/short-form quick-tips --batch 5 --topic "productivity"
/short-form lead-magnet --platform tiktok --topic "free guide to X"
/short-form transformation --topic "client result story"
/short-form bts --batch 3
```

## What It Does

Produces complete, production-ready short-form video scripts with:
- A scroll-stopping hook engineered for the first 1-3 seconds
- Beat-by-beat script with visual direction and text overlay specifications
- Platform-specific optimization (safe zones, optimal length, audio suggestions)
- Caption copy with hashtag strategy
- Posting time recommendations and reply strategy

When `--batch` is used, produces multiple scripts on the same theme with varied angles and hooks to maintain variety while reinforcing the same message.

## Agent

**short-form** — The Short-Form Video Content Specialist handles all Reel, TikTok, and YouTube Short creation.

## Destination

```
output/marketing/short-form/[type]-[sanitized-topic]-[YYYY-MM-DD].md
```
For batches:
```
output/marketing/short-form/batch-[type]-[sanitized-topic]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires, language patterns |
| Brand Voice Profile | reference/brand-voice.md | Tone, vocabulary, speech patterns |
| Positioning Document | reference/positioning.md | Mechanism name (for mechanism-reference reels) |
| Offer Document | reference/offers.md | Lead magnet details (for lead-magnet type) |

## Process

### Step 1: Load Foundations
Read prerequisite documents. Extract:
- ICP pain points relevant to the topic
- ICP language patterns for hook engineering
- Brand voice speech patterns for script writing
- Mechanism name if the reel type references it
- Lead magnet details if type is `lead-magnet`

### Step 2: Select Reel Framework
Load the framework for the specified type:
- **Storytelling:** Hook (tension) > Setup > Conflict > Resolution > CTA
- **Lifestyle:** Visual hook > Montage > Mechanism reference > Identity > CTA
- **Lead Magnet:** Pain hook > "I created..." > Solves > Inside > CTA (comment/link)
- **Hook + Value:** Curiosity hook > Context > Insight > Proof > CTA (save/follow)
- **BTS:** "You never see..." hook > Raw moment > Context > Personality > CTA
- **Quick Tips:** "X things" hook > Tip 1 > Tip 2 > Tip 3 > Best tip last > CTA
- **Transformation:** Before state > Shift moment > After state > Mechanism > CTA
- **Testimonial:** Result hook > Before > What they did > Results > CTA
- **Split Screen:** Original content > Reaction > Insight > Why it matters > CTA

### Step 3: Engineer the Hook
Write the first 1-3 seconds with:
- Text overlay (exact words on screen)
- Visual direction (first frame composition)
- Spoken script (if applicable)
- Platform-specific hook optimization (IG vs TikTok vs Shorts)

Test the hook against: "Would I stop scrolling for this?"

### Step 4: Write the Full Script
Script each beat with:
- Timestamp markers
- Visual direction (camera angle, B-roll, transitions)
- Text overlay notes
- Spoken script in conversational language
- Pacing notes (pause, speed up, emphasis)

### Step 5: Apply Platform Optimization
Adjust for the target platform:
- **Instagram:** 15-30 sec optimal, text center-left, trending audio boost, 3-5 hashtags
- **TikTok:** 15-60 sec OK, original audio works, raw/authentic tone, text center
- **YouTube Shorts:** 30-60 sec optimal, educational tone, subscribe CTA, title + description SEO

### Step 6: Write Caption & Posting Strategy
- Hook line for caption (different angle from video hook)
- Caption body (value expansion or context)
- CTA in caption
- Hashtag strategy (platform-specific)
- Optimal posting time recommendation
- First 3 comments to post for engagement seeding
- Cross-posting notes

## Output Format

```markdown
# REEL SCRIPT: [Title]
**Type:** [Type]
**Platform:** [Platform]
**Target Length:** [X seconds]
**Buyer Stage:** [Stage]
**ICP Pain Point:** [Pain]
**Audio:** [Trending audio suggestion or "Original"]

---

## HOOK (0-3 sec)
**[VISUAL:]** [First frame description]
**[TEXT OVERLAY:]** "[On-screen text]"
[Spoken script]

## BODY
**Beat 1 (3-X sec):**
[VISUAL + TEXT + Script]

**Beat 2:**
[VISUAL + TEXT + Script]

[Continue...]

## PAYOFF
**[VISUAL:]** [Final frame]
**[TEXT OVERLAY:]** "[Takeaway text]"
[CTA script]

---

## CAPTION
[Full caption with hashtags]

## POSTING NOTES
- Best time: [Time]
- First comments: [List]
- Cross-post: [Adjustments]
```

## Quality Gates

- [ ] Hook captures attention in first 1-3 seconds
- [ ] Script length matches target duration for the platform
- [ ] Visual direction is included for every beat
- [ ] Text overlay is specified with exact wording
- [ ] Brand voice is maintained throughout
- [ ] ICP language patterns are used in hook and body
- [ ] CTA matches the content type (no sales CTA on value reels)
- [ ] Caption is written with a different hook angle than the video
- [ ] Platform-specific optimizations are applied (safe zones, length, hashtags)
- [ ] At least one "save trigger" moment exists (an insight worth saving)
- [ ] Batch scripts (if applicable) use varied hooks and angles
