# /content-calendar

> Plan an orchestrated multi-platform content calendar with buyer-journey mapping and repurposing cascades.

## Usage

```
/content-calendar [--days 30|60|90] [--platforms youtube,instagram,twitter,linkedin,podcast,blog]
```

**Arguments:**
- `--days` — Calendar duration: 30 (default), 60, or 90 days
- `--platforms` — Comma-separated list of platforms to include (default: all)

**Examples:**
```
/content-calendar
/content-calendar --days 60
/content-calendar --days 30 --platforms youtube,instagram,twitter
/content-calendar --days 90 --platforms youtube,instagram,twitter,linkedin,podcast,blog
```

## What It Does

Produces a fully orchestrated content calendar that coordinates messaging across all specified platforms. Every piece of content is mapped to a buyer journey stage, tied to a specific ICP pain point, and assigned a content type appropriate for its platform and strategic purpose.

The calendar follows the 4-week thematic cycle (Problem Agitation > Mechanism Introduction > Proof/Results > Offer Window) and enforces the 70/20/10 content mix (value/engagement/promotional). Repurposing cascades are defined so each core content piece generates 8-12 platform-native derivatives.

## Agent

**content-strategist** — The Content Strategy Orchestrator handles all calendar planning, cross-platform coordination, and repurposing logic.

## Destination

```
output/marketing/content-calendar-[YYYY-MM-DD]-[days]d.md
```

## Prerequisites

The following foundation documents must exist before generating a content calendar:

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires, awareness levels, language patterns |
| Offer Document | reference/offers.md | Transformation promise, mechanism, value stack |
| Brand Voice Profile | reference/brand-voice.md | Tone, vocabulary, sentence structure |
| Positioning Document | reference/positioning.md | Mechanism name, core belief, narrative arc |

If any prerequisite is missing, halt and notify the user which document(s) need to be created first.

## Process

### Step 1: Load Foundations
Read all four prerequisite documents. Extract:
- Top 5 ICP pain points (verbatim language)
- Top 5 ICP desires (verbatim language)
- Awareness level distribution (% at each stage)
- Current offer(s) and their transformation promises
- Mechanism name and differentiation angle
- Brand voice parameters (tone, vocabulary, sentence patterns)

### Step 2: Define Theme Cycle
Map the calendar period into 4-week cycles:
- **Week 1:** Problem Agitation — Surface pain, build resonance (80% value / 20% engagement)
- **Week 2:** Mechanism Introduction — Reveal the "how" without selling (70% value / 20% engagement / 10% promo)
- **Week 3:** Proof & Results — Social proof, case studies, transformations (60% value / 20% engagement / 20% promo)
- **Week 4:** Offer Window — Direct pitch supported by accumulated trust (50% value / 20% engagement / 30% promo)

### Step 3: Assign Platform Roles
Define each platform's function in the ecosystem:
- **YouTube:** Nurture engine (long-form trust, VSSL sales)
- **Instagram Reels:** Discovery + lifestyle (attract, inspire, quick value)
- **Instagram Stories:** Intimacy layer (behind-scenes, daily connection)
- **Twitter/X:** Authority broadcast (threads, hot takes, thought leadership)
- **LinkedIn:** Professional trust (B2B credibility, frameworks)
- **Podcast:** Deep relationship (long-form trust, guest authority)
- **Blog/SEO:** Evergreen discovery (organic search, pillar content)

### Step 4: Build Weekly Content Matrix
For each week in the calendar period, fill the daily content matrix:
- Assign content types to each platform for each day
- Map each piece to a buyer journey stage
- Tag each piece with the ICP pain point it addresses
- Write hook/angle/topic for each piece
- Ensure no more than 2 consecutive days of promotional content

### Step 5: Define Repurposing Cascades
For each core content piece (YouTube video, podcast episode, pillar blog post):
- Identify 3-5 short-form clips
- Plan 1 Twitter thread extraction
- Plan 1 LinkedIn post adaptation
- Plan 5-7 story slides
- Identify 2-3 standalone tweets from quotable moments
- Schedule derivative publishing dates

### Step 6: Add Campaign/Launch Windows
If any offer launches or campaigns fall within the calendar period:
- Mark launch sequence start date (minimum 5 days before offer open)
- Schedule story arc across launch period
- Increase promotional content ratio during launch week
- Plan post-launch debrief content

### Step 7: Validate Calendar
Run the validation checklist:
- [ ] Every day has content on at least 2 platforms
- [ ] No more than 2 consecutive days without long-form content
- [ ] Each week addresses minimum 2 ICP pain points
- [ ] Mechanism referenced minimum 3x per week
- [ ] 70/20/10 ratio maintained +/- 5%
- [ ] Launch sequences have minimum 5-day buildup
- [ ] 15-20% reactive slots protected
- [ ] Repurposing cascades are fully mapped

### Step 8: Output Final Calendar
Format the calendar using the deliverable template from the content-strategist agent definition, including:
- Full daily content matrix for all days
- Monthly metrics targets per platform
- Repurposing map
- Campaign/launch windows
- Content mix ratio summary

## Output Format

```markdown
# [X]-Day Content Calendar
**Period:** [Start Date] — [End Date]
**Platforms:** [List]
**Theme Cycles:** [Number of 4-week cycles]

## Executive Summary
[3-5 sentence overview of the calendar strategy, key themes, and campaign windows]

## Foundation References
- **ICP Pain Points Addressed:** [List top 5]
- **Mechanism Focus:** [Name from positioning.md]
- **Offer(s) Active:** [From offers.md]
- **Content Mix Target:** 70% value / 20% engagement / 10% promotional

## Week-by-Week Calendar
[Full weekly content matrices with daily assignments]

## Repurposing Map
[Source-to-derivative mapping with dates]

## Campaign/Launch Windows
[Timeline and sequence details]

## Monthly Metrics Targets
[Platform-by-platform targets]

## Reactive Slot Calendar
[Marked dates held for trending/real-time content]

## Validation Summary
[Completed checklist confirming all requirements met]
```

## Quality Gates

- [ ] All four foundation documents were loaded and referenced
- [ ] Every content piece maps to a specific ICP pain point or desire
- [ ] Buyer journey stages are covered each week (all 5 stages represented across the full calendar)
- [ ] Content mix ratio is within tolerance (70/20/10 +/- 5%)
- [ ] No platform has more than 2 consecutive days without content
- [ ] Repurposing cascades are fully defined for every core content piece
- [ ] Launch sequences (if any) have minimum 5-day buildup
- [ ] 15-20% of slots are marked as reactive
- [ ] Brand voice consistency is maintained across all platform hooks/angles
- [ ] Calendar is actionable — the creator can look at any day and know exactly what to produce
