# /case-study

> Convert client results and testimonials into structured social proof assets.

## Usage
```
/case-study <client-name> [--type written|video|snippet]
```

## Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| `client-name` | Yes | Name of the client whose results will be documented |
| `--type` | No | Output format: `written` (default, 800-1500 word case study), `video` (interview outline and edit notes), `snippet` (social proof pull quotes and before/after) |

## What It Does

Converts raw client results data, testimonials, and conversation transcripts into structured case studies using the SCSR framework (Situation, Challenge, Solution, Results). Produces the requested format with pull quotes, funnel placement recommendations, and ICP segment mapping. Grades existing testimonials on the 6-level quality scale and recommends strategies to upgrade weak testimonials.

### Output Types

| Type | Format | Length | Best Used For |
|------|--------|--------|--------------|
| `written` | Full SCSR case study | 800-1500 words | Sales pages, email sequences, blog posts, proposal attachments |
| `video` | Interview outline + edit notes | Interview guide + production brief | YouTube testimonials, social media video, VSL integration |
| `snippet` | Pull quotes + before/after | 3-5 standalone assets | Social media posts, ad creative, email signatures, landing pages |

### SCSR Framework

| Section | Purpose | Reader Response |
|---------|---------|----------------|
| **S**ituation | Establish where the client started | "That sounds like me" |
| **C**hallenge | Detail the specific problems and failed attempts | "That's exactly what I'm dealing with" |
| **S**olution | Explain how the mechanism changed things | "Maybe this could work for me too" |
| **R**esults | Present specific, measurable outcomes | "I want that result" |

### Testimonial Quality Levels

| Level | Description | Conversion Power |
|-------|-------------|-----------------|
| 1 | Generic praise ("Great product!") | Near zero |
| 2 | Specific result ("40% revenue increase") | Low-medium |
| 3 | Result + mechanism ("$5K to $15K using [method]") | Medium |
| 4 | Skepticism + result ("Tried 4 others, this worked") | High |
| 5 | Regret framing ("Wish I found this 2 years ago") | Very high |
| 6 | Full documented journey (video) | Maximum |

## Agent

**case-study** — Case Study & Testimonial Conversion Specialist

## Prerequisites

At least one of the following must be available:

- Client results data (specific numbers, timeline, outcomes)
- Raw testimonial (text, audio, or video transcript)
- Interview transcript or conversation notes
- Before/after data points

Additionally, these context documents improve quality:

- `reference/icp.md` — to ensure the case study mirrors the target audience
- `reference/positioning.md` — to reference the mechanism by name in the Solution section

## Implementation

1. **Gather client data** — collect all available results, testimonials, and conversation records.
2. **Grade existing testimonial quality** — assess on the 6-level scale, recommend upgrade strategies if below Level 4.
3. **Map to ICP segment** — identify which ICP variant this client most closely represents.
4. **Build the Situation** — establish demographics, starting conditions, and emotional state mirroring the ICP.
5. **Build the Challenge** — document specific problems, failed attempts, and limiting beliefs that create recognition.
6. **Build the Solution** — explain discovery, initial skepticism, key insight, and implementation, referencing the mechanism by name.
7. **Build the Results** — present primary outcome, secondary outcomes, timeline, and ongoing trajectory with specific numbers.
8. **Extract pull quotes** — identify 2-3 standalone quotes usable across channels.
9. **Determine funnel placement** — recommend where this case study is most effective (top, middle, or bottom of funnel).
10. **Produce the requested format** — written case study, video outline, or social proof snippets.

## Destination

```
output/content/case-study-[client-name]-[type]-[date].md
```

## Quality Gates

- [ ] Follows SCSR framework — all four sections are substantive
- [ ] Includes at least one specific, measurable result (number, percentage, timeline)
- [ ] Client quote included — verbatim, not paraphrased
- [ ] Creator's mechanism referenced by name in the Solution section
- [ ] ICP segment match identified — the case study subject mirrors a documented ICP variant
- [ ] Funnel placement recommendation included (top, middle, or bottom)
- [ ] Minimum 2 pull quotes extracted for standalone use
- [ ] Testimonial quality level assessed (current level and upgrade recommendation if applicable)
- [ ] No fabricated or embellished results — all claims are verifiable
- [ ] Client's authentic voice preserved — not over-polished

## Examples

```bash
# Create a written case study for a client
/case-study "Sarah Johnson" --type written

# Create a video interview outline
/case-study "Marcus Chen" --type video

# Create social proof snippets and pull quotes
/case-study "Priya Patel" --type snippet

# Default (written case study)
/case-study "Alex Rivera"
```
