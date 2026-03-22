# /community-content
> Generate community engagement calendars, discussion prompts, onboarding sequences, and challenge structures for creator-led communities

## Usage
```
/community-content [--platform skool|circle|facebook|discord] [--days 30]
```

**Arguments:**
- `--platform` (optional): Target community platform. Defaults to `skool`. Options: `skool`, `circle`, `facebook`, `discord`
- `--days` (optional): Calendar duration in days. Defaults to `30`. Common values: `7`, `14`, `30`, `60`, `90`

**Examples:**
```
/community-content --platform skool --days 30
/community-content --platform circle --days 14
/community-content --platform facebook --days 60
/community-content
```

## What It Does

Produces a complete community content package including:
1. **Engagement Calendar** — Day-by-day content plan with discussion prompts, weekly themes, challenges, celebration threads, and resource drops
2. **New Member Onboarding Sequence** — 5-touchpoint onboarding flow for the first 72 hours designed to convert lurkers into active participants
3. **Challenge Structure** (if applicable) — Complete challenge framework with daily tasks, accountability mechanics, and completion celebrations
4. **Discussion Prompt Library** — Bank of ready-to-post discussion prompts organized by category and engagement driver

All content is platform-native and calibrated to the ICP's communication style and pain points.

## Agent
`community` — Community Engagement & Nurture Specialist

## Destination
`output/content/community-[platform]-[days]day-[date].md`

## Prerequisites
Required:
- `reference/icp.md` — ICP profile with pain points, desires, communication preferences, and community behavior patterns

Recommended:
- `reference/offers.md` — Offer stack (for designing community-to-conversion touchpoints)
- `reference/positioning.md` — Unique mechanism and core belief (becomes the community's unifying philosophy)
- `reference/brand-voice.md` — Brand voice profile (calibrated to a more casual register for community)

## Process

1. **Load Foundations** — Read reference/icp.md and extract pain points, desires, communication style preferences, and any indicators of community engagement patterns. Load reference/offers.md to understand the paid offer for conversion touchpoint design.

2. **Configure Platform** — Select platform-specific features and constraints:
   - Skool: Levels, leaderboards, classroom, categories
   - Circle: Spaces, events, rich media, threads
   - Facebook Groups: Lives, polls, guides, units, announcements
   - Discord: Channels, roles, threads, bots, voice channels

3. **Design Weekly Rhythm** — Create the recurring weekly content structure mapped to community content types: Weekly Theme (Monday), Discussion Prompts (Tue/Thu), Resource Drop (Wednesday), Accountability Check-in (Friday), Win Celebration (2x/week), Member Spotlight (1x/week).

4. **Create Monthly Theme Arc** — Map a 4-week thematic arc tied to ICP pain points:
   - Week 1: Problem exploration and connection building
   - Week 2: Strategy sharing and mechanism introduction
   - Week 3: Implementation support and proof/results
   - Week 4: Reflection, celebration, and bridge to next month

5. **Write All Content** — Write full post copy for every day in the calendar, including discussion prompts, theme posts, challenge tasks, celebration templates, and resource introductions. All copy should match a casual version of the creator's brand voice.

6. **Build Onboarding Sequence** — Design the 5-touchpoint onboarding flow (Welcome Message, Introduction Prompt, Quick-Win Challenge, Connection Nudge, Community Tour) with full copy for each touchpoint.

7. **Design Challenge (if applicable)** — Create a structured challenge with name, duration, daily tasks, success criteria, accountability mechanics, and celebration/completion moments.

8. **Map Conversion Touchpoints** — Identify natural (non-salesy) moments where community content exposes members to the value of the paid offer: transformation stories, curriculum previews, graduated challenges, exclusive access moments.

9. **Compile Deliverable** — Assemble the complete community content package with calendar, onboarding sequence, challenge structure, and metrics targets.

## Output Format

```markdown
# Community Content Calendar
**Platform:** [platform]
**Community Name:** [name]
**Period:** [Start] — [End] ([X] days)
**Monthly Theme:** [theme tied to ICP pain point]

## Weekly Rhythm
| Day | Content Type | Purpose | Engagement Target |
|-----|-------------|---------|-------------------|
| Mon | Weekly Theme | Set direction | [metric] |
| Tue | Discussion Prompt | Surface experiences | [metric] |
| ... | ... | ... | ... |

## Week 1: [Sub-Theme]
### Monday [Date]
**Content Type:** [type]
**Post:**
> [Full post copy]

**Engagement Prompt:**
> [Question or CTA for comments]

[Continue for all days in calendar]

---

## New Member Onboarding Sequence
### Touchpoint 1: Welcome (Immediate)
[Full copy]

### Touchpoint 2: Introduction (Hour 0-4)
[Full copy with template]

### Touchpoint 3: Quick-Win Challenge (Hour 4-24)
[Full copy with task]

### Touchpoint 4: Connection Nudge (Hour 24-48)
[Full copy]

### Touchpoint 5: Community Tour (Hour 48-72)
[Full copy]

---

## Challenge: [Name] (if applicable)
**Duration:** [X days]
**Daily Tasks:** [task list with success criteria]
**Celebration:** [completion recognition plan]

---

## Metrics Targets
| Metric | Target |
|--------|--------|
| Daily active rate | [X]% |
| Comments per prompt | [X]+ |
| Onboarding completion | [X]% |
| Challenge completion | [X]% |
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|------|----------|----------------|
| ICP Alignment | All discussion prompts address real ICP pain points or desires | 100% of prompts mapped to icp.md |
| Engagement Depth | No prompt can be answered with a single word or yes/no | All prompts require substantive response |
| Weekly Balance | Each week includes value content, engagement content, and celebration content | Content type diversity verified |
| Onboarding Completeness | All 5 touchpoints present with full copy and timing | Sequence complete |
| Platform Native | Content leverages platform-specific features appropriately | Platform feature check passes |
| Member-to-Member | At least 50% of prompts encourage member-to-member interaction (not just creator-to-member) | Interaction pattern verified |
| Promotional Limit | No more than 1 promotional/sales-oriented post per week | Frequency check passes |
| Conversion Touchpoints | Natural (non-salesy) moments connecting community to paid offer are identified | Touchpoints mapped |
