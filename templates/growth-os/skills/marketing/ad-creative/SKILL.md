# /ad-creative

> Create a paid advertising creative package with hook variants, copy, visual direction, and testing plan.

## Usage

```
/ad-creative <type> [--platform meta|google|youtube|tiktok] [--objective awareness|consideration|conversion] [--funnel-stage tofu|mofu|bofu]
```

**Arguments:**
- `<type>` (required) — Ad type: `profile-funnel`, `retargeting`, `video-hook`, `video-story`, `video-testimonial`, `image`, `carousel`, `ugc`
- `--platform` — Target ad platform (default: `meta`)
- `--objective` — Campaign objective (default: inferred from type)
- `--funnel-stage` — Funnel position (default: inferred from type)

**Examples:**
```
/ad-creative video-hook --platform meta --objective awareness
/ad-creative retargeting --platform meta --objective conversion
/ad-creative video-story --platform youtube --objective consideration
/ad-creative carousel --platform meta --funnel-stage mofu
/ad-creative ugc --platform tiktok --objective awareness
/ad-creative image --platform meta --objective conversion
/ad-creative video-testimonial --platform youtube --objective conversion
/ad-creative profile-funnel --platform meta --objective awareness
```

## What It Does

Produces a complete ad creative package including:
- 3-5 hook variants from different psychological angles (pain, curiosity, social proof, contrarian, direct result)
- Full body copy in 2 variants (different emphasis/structure)
- 2-3 CTA variants
- Visual/creative direction (format, style, key visuals, thumbnail)
- Audience targeting recommendations (custom, lookalike, interest-based, exclusions)
- A/B testing plan with budget allocation and decision triggers
- Performance benchmarks (target CPM, CTR, CPC, CPA/ROAS)

The ad copy uses ICP language verbatim and matches the audience's awareness level to the messaging depth.

## Agent

**paid-ads** — The Paid Advertising Creative Specialist handles all ad creative production.

## Destination

```
output/marketing/ads/[type]-[platform]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires, language patterns, awareness level |
| Brand Voice Profile | reference/brand-voice.md | Tone, vocabulary (for native-feeling ads) |
| Positioning Document | reference/positioning.md | Mechanism, differentiation |
| Offer Document | reference/offers.md | Transformation, value stack, price, objections |

## Process

### Step 1: Load Foundations
Read all prerequisite documents. Extract:
- ICP language patterns (verbatim words and phrases for ad copy)
- Pain points ranked by intensity
- Awareness level distribution (determines messaging approach)
- Mechanism name and differentiation
- Offer details: transformation, value stack, price, guarantees
- Top 5-7 objections to handle

### Step 2: Determine Funnel Position
If not specified, infer from type:
- TOFU (cold): profile-funnel, video-hook, ugc
- MOFU (warm): video-story, carousel
- BOFU (hot): retargeting, video-testimonial, image (direct offer)

### Step 3: Match Awareness to Messaging

| Awareness Level | Messaging Approach | Copy Focus |
|-----------------|-------------------|------------|
| Unaware | Education, curiosity | Problem identification |
| Problem-Aware | Agitation + mechanism tease | Pain amplification, "there's a better way" |
| Solution-Aware | Differentiation | Why this mechanism vs alternatives |
| Product-Aware | Offer + proof | Value stack, testimonials, social proof |
| Most-Aware | Deal, urgency, scarcity | Price, guarantee, limited availability |

### Step 4: Write Hook Variants
Produce 3-5 hooks from different psychological angles:
- **Pain angle:** Mirror the ICP's exact frustration language
- **Curiosity angle:** Create an information gap they need to close
- **Social proof angle:** Lead with volume or specificity of results
- **Contrarian angle:** Challenge what they currently believe
- **Direct result angle:** State the outcome plainly and specifically

### Step 5: Write Body Copy Variants
Produce 2 body copy variants:
- Variant A: Short-form (50-100 words) — punchy, direct
- Variant B: Long-form (150-300 words) — story-driven, emotional

Both variants must:
- Use ICP language verbatim
- Reference the mechanism (not by name for cold traffic, by name for warm/hot)
- Build desire through transformation language
- Address at least one objection implicitly

### Step 6: Write CTA Variants
Produce 2-3 CTAs:
- CTA A: Direct action ("Apply Now," "Get Instant Access")
- CTA B: Soft action ("See How It Works," "Watch the Free Training")
- CTA C: Social proof CTA ("Join 2,000+ Who Already...")

### Step 7: Define Visual Direction
Specify:
- Format (video 9:16, video 1:1, image 1:1, carousel)
- Visual style and mood
- Key visual elements required
- Text overlay specifications
- Thumbnail (for video ads)
- Brand element placement

### Step 8: Build Testing Plan
Define:
- Phase 1: Hook testing (3 hooks, same body, 3 days)
- Phase 2: Body testing (winner hook + 2 bodies, 3 days)
- Phase 3: CTA testing (winner combo + CTAs, 3 days)
- Daily budget per phase
- Scale trigger (CPA or ROAS threshold)
- Kill trigger (when to pause and reassess)

## Output Format

```markdown
# AD CREATIVE: [Campaign Name]
**Type:** [Type]
**Platform:** [Platform]
**Funnel Stage:** [TOFU | MOFU | BOFU]
**Objective:** [Awareness | Consideration | Conversion]
**Audience Awareness:** [Level]

---

## HOOK VARIANTS

### Hook A — Pain
[Hook text / first 3 seconds of video]

### Hook B — Curiosity
[Hook text]

### Hook C — Social Proof
[Hook text]

### Hook D — Contrarian
[Hook text]

### Hook E — Direct Result
[Hook text]

## BODY COPY

### Variant A — Short-Form
[Body copy]

### Variant B — Long-Form
[Body copy]

## CTA VARIANTS
A: [CTA text + button]
B: [CTA text + button]
C: [CTA text + button]

## VISUAL DIRECTION
[Format, style, visuals, text overlay, thumbnail]

## TARGETING
[Custom, lookalike, interests, exclusions, placements]

## TESTING PLAN
[3-phase plan with budgets and triggers]

## BENCHMARKS
[Target CPM, CTR, CPC, CPA, ROAS]
```

## Quality Gates

- [ ] ICP language patterns are used verbatim in hooks and body
- [ ] Messaging depth matches the target awareness level
- [ ] 3-5 hook variants from fundamentally different angles
- [ ] 2 body copy variants with different structures
- [ ] 2-3 CTA variants with different action levels
- [ ] Visual direction is specific enough for a designer or video editor
- [ ] Targeting recommendations include custom, lookalike, and interest-based options
- [ ] Testing plan includes budget, timeline, scale triggers, and kill triggers
- [ ] Performance benchmarks are realistic for the platform and objective
- [ ] Ad copy feels like content, not traditional advertising
- [ ] Brand voice is maintained (ads should feel native, not corporate)
- [ ] Mechanism is referenced appropriately for the funnel stage
- [ ] Offer value stack is presented as transformation, not features (for BOFU)
