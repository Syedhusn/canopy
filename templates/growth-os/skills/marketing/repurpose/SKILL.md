# /repurpose

> Take one piece of content and adapt it for multiple platforms while maintaining platform-native quality.

## Usage

```
/repurpose <source-content> [--targets twitter,linkedin,reels,stories,blog] [--source-type youtube|podcast|blog|thread]
```

**Arguments:**
- `<source-content>` (required) — Path to the source content file, URL, or pasted content
- `--targets` — Comma-separated list of target platforms (default: all)
- `--source-type` — Type of source content for optimal extraction (default: auto-detected)

**Examples:**
```
/repurpose output/marketing/youtube/educational-personal-branding-2026-03-21.md --targets twitter,linkedin,reels,stories
/repurpose "paste content here" --source-type podcast --targets reels,twitter
/repurpose output/marketing/blog/pillar-audience-building-2026-03-15.md --targets twitter,linkedin,reels
/repurpose output/marketing/podcast/interview-guest-name-2026-03-10.md --targets reels,stories,twitter,linkedin,blog
```

## What It Does

Takes a single piece of long-form content (YouTube script, podcast outline, blog article, or Twitter thread) and produces platform-native adaptations for each target platform. This is not simple reformatting — each adaptation is reframed, restructured, and re-hooked for the specific platform's consumption patterns and audience expectations.

A single YouTube script can yield:
- 3-5 Instagram Reel scripts with unique hooks
- 1 Twitter thread extracting key insights with thread-native structure
- 1 LinkedIn post reframing for professional audience
- 5-7 Instagram Story slides with BTS angle
- 2-3 standalone tweets from quotable moments
- 1 blog post summary with SEO optimization (if not already the source)

## Agent

**content-strategist** — The Content Strategy Orchestrator handles repurposing as it requires cross-platform strategic thinking.

## Destination

```
output/marketing/repurposed/[source-slug]-[YYYY-MM-DD]/
├── reels.md
├── twitter.md
├── linkedin.md
├── stories.md
├── blog.md
└── REPURPOSE-SUMMARY.md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| Source Content | [provided by user] | The original content to repurpose |
| ICP Document | reference/icp.md | Pain points for platform-specific reframing |
| Brand Voice Profile | reference/brand-voice.md | Platform-specific voice adaptations |

## Process

### Step 1: Analyze Source Content
Read the source content and extract:
- **Core message:** The central idea in one sentence
- **Key insights:** 5-10 distinct insights, frameworks, or teaching points
- **Quotable moments:** Lines that are sharp, surprising, or screenshot-worthy
- **Story elements:** Personal stories, anecdotes, case studies embedded in the content
- **Data points:** Statistics, results, specific numbers
- **Emotional beats:** Moments of vulnerability, humor, or strong opinion
- **Mechanism references:** Where the unique mechanism is mentioned
- **ICP pain connections:** Where audience pain points are directly addressed

### Step 2: Map Insights to Platforms
Not every insight works on every platform. Map extracted elements:

| Element | Best Platform(s) | Adaptation Approach |
|---------|-------------------|---------------------|
| Key insight (tactical) | Twitter, LinkedIn | Thread point or standalone post |
| Personal story | Instagram Stories, LinkedIn | Story sequence or story post |
| Quotable moment | Twitter, Reels (text overlay) | Standalone tweet, reel hook |
| Framework/methodology | LinkedIn, Blog, Twitter thread | Framework post, how-to thread |
| Data point | Twitter, LinkedIn | Authority tweet, authority post |
| Emotional beat | Stories, Reels | Personal connection content |
| Case study element | LinkedIn, Blog, YouTube | Case study post, cluster article |

### Step 3: Produce Platform Adaptations

**Twitter Adaptation:**
- 1 thread (7-12 tweets) extracting the primary teaching framework
- 3-5 standalone tweets from quotable moments
- Each tweet under 280 characters
- Thread has unique hook (not copy of original title)
- No hashtags

**LinkedIn Adaptation:**
- 1 post (800-1500 characters) reframing core message for professional audience
- Professional tone overlay on brand voice
- "See more" hook optimized for first 2 lines
- Genuine conversation prompt at end

**Instagram Reels Adaptation:**
- 3-5 reel scripts from different moments/insights
- Each reel has its own unique hook (not just clip segments)
- Visual direction and text overlay for each
- Platform-native length (15-60 seconds)
- Captions and hashtags included

**Instagram Stories Adaptation:**
- 5-7 slide sequence (BTS angle on creating the source content)
- OR educational sequence extracting one key insight
- Interactive elements (poll, question box)
- Personal, casual tone

**Blog Adaptation:**
- Full article (1500-2500 words) with SEO optimization
- Different headline/angle than source content
- Internal linking to source content
- FAQ section from audience questions the content addresses
- (Only if source is NOT already a blog post)

### Step 4: Differentiate Hooks
The most critical rule of repurposing: every platform version must have a DIFFERENT hook.

| Platform | Hook Approach | Why |
|----------|---------------|-----|
| Source content | Original hook | As-is |
| Twitter thread | Contrarian or cost-revelation angle | Thread-native |
| LinkedIn | Professional pain or result angle | Professional context |
| Reel 1 | Visual pattern interrupt + curiosity | Scroll-stopping |
| Reel 2 | Bold claim from a different section | Variety |
| Reel 3 | Story opening from an anecdote | Emotional |
| Stories | Behind-the-scenes "while making this..." | Intimacy |
| Blog | SEO keyword-optimized headline | Search intent |

### Step 5: Create Publishing Schedule
Stagger the derivatives to maximize impact:
- Day 1: Source content publishes
- Day 1-2: Twitter thread + 2 standalone tweets
- Day 2: LinkedIn post
- Day 2-3: Story sequence (BTS of creation)
- Day 3-5: Reels (1 per day, staggered)
- Day 5-7: Blog post (evergreen, less time-sensitive)

### Step 6: Compile Repurpose Summary
Create a summary document listing:
- Source content title and type
- All derivatives produced with word counts
- Publishing schedule
- Hook differentiation map
- Cross-linking strategy (how derivatives reference each other)

## Output Format

### REPURPOSE-SUMMARY.md
```markdown
# Repurpose Package: [Source Title]
**Source:** [Type] — [Title]
**Date:** [YYYY-MM-DD]
**Derivatives Produced:** [Count]

## Source Analysis
- **Core Message:** [1 sentence]
- **Key Insights Extracted:** [Count]
- **Quotable Moments:** [Count]
- **Platform Adaptations:** [List]

## Publishing Schedule
| Day | Platform | Content Type | Hook Angle |
|-----|----------|-------------|------------|
[Full schedule]

## Cross-Linking Strategy
[How derivatives reference each other and the source]

## Files
- reels.md — [X] reel scripts
- twitter.md — 1 thread + [X] standalone tweets
- linkedin.md — 1 post
- stories.md — [X]-slide sequence
- blog.md — 1 SEO article (if applicable)
```

### Individual Platform Files
Each file uses the standard deliverable template from the corresponding specialist agent (short-form, twitter, linkedin, stories, seo-blog).

## Quality Gates

- [ ] Every platform adaptation has a UNIQUE hook (no duplicates across platforms)
- [ ] Each adaptation is platform-native (not just reformatted text)
- [ ] Core message is preserved across all adaptations
- [ ] Brand voice is maintained with platform-appropriate adjustments
- [ ] ICP pain points are addressed in each adaptation
- [ ] Publishing schedule is staggered to avoid audience fatigue
- [ ] Cross-linking strategy connects derivatives back to source and each other
- [ ] No adaptation simply copy-pastes segments from the source
- [ ] Twitter content has no hashtags
- [ ] LinkedIn content has professional overlay
- [ ] Reels have visual direction and text overlay notes
- [ ] Stories have interactive elements
- [ ] Blog post (if included) has SEO metadata and internal links
- [ ] Total derivative count is 8+ pieces from the single source
