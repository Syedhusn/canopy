# /marketing-asset

> Produce a strategic creative brief for marketing materials with copy, visual direction, and specifications.

## Usage

```
/marketing-asset <type> [--name "asset name"] [--audience "target audience"]
```

**Arguments:**
- `<type>` (required) — Asset type: `media-kit`, `brand-guidelines`, `social-templates`, `presentation`, `landing-page`
- `--name` — Specific name or title for the asset
- `--audience` — Target audience for the asset (if different from ICP)

**Examples:**
```
/marketing-asset media-kit --name "2026 Creator Media Kit"
/marketing-asset brand-guidelines --name "Brand Identity Guide v2"
/marketing-asset social-templates --name "Q2 Social Media Templates"
/marketing-asset presentation --name "Keynote: The Future of Creator Businesses"
/marketing-asset landing-page --name "Free Masterclass Registration Page"
/marketing-asset presentation --name "Sales Deck" --audience "high-ticket prospects"
/marketing-asset landing-page --name "Course Sales Page" --audience "solution-aware entrepreneurs"
```

## What It Does

Produces a comprehensive creative brief that enables designers, developers, or production teams to execute brand-consistent marketing assets without ambiguity. Each brief includes:

- **Media Kit:** Complete creator positioning document with bio variants, audience data, partnership packages, and brand asset specifications
- **Brand Guidelines:** Full visual identity system with logo usage, color palette, typography, photography style, and application rules
- **Social Templates:** Template system design brief with variant specifications for each platform and content type
- **Presentation Deck:** Slide-by-slide outline with copy, visual direction, and narrative arc for speaking or sales contexts
- **Landing Page:** Full copy brief with hero, problem, solution, benefits, proof, value stack, FAQ, and CTA sections plus design direction

## Agent

**marketing-assets** — The Marketing Asset and Design Brief Specialist handles all creative brief production.

## Destination

```
output/marketing/assets/[type]-[sanitized-name]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Audience demographics, pain points, desires |
| Brand Voice Profile | reference/brand-voice.md | Tone, vocabulary, messaging parameters |
| Positioning Document | reference/positioning.md | Mission, mechanism, core belief, narrative |
| Offer Document | reference/offers.md | Transformation, value stack, pricing, objections |

## Process

### Step 1: Load Foundations
Read all prerequisite documents. Extract:
- Brand story, mission, values from positioning.md
- Visual identity hints from brand-voice.md (tone implies visual aesthetic)
- ICP demographics and psychographics for audience sections
- Offer details for sales-oriented assets (presentations, landing pages)

### Step 2: Select Asset Framework
Load the framework for the specified type:

**Media Kit:**
1. About/Bio (3 versions: 25, 50, 150 words)
2. Audience Demographics (platform-by-platform)
3. Reach & Engagement metrics
4. Content Pillars
5. Past Partnerships
6. Testimonials
7. Pricing/Packages
8. Contact & Process
9. Brand Assets (logo, headshots, colors)

**Brand Guidelines:**
1. Brand Story (origin, mission, values)
2. Logo Usage (versions, clear space, minimum size, misuse)
3. Color Palette (primary, secondary, accent with all color codes)
4. Typography (heading, body, accent with sizing hierarchy)
5. Photography Style (mood, composition, color grading)
6. Iconography (style, stroke, color)
7. Voice & Tone Summary
8. Social Media Templates
9. Do's and Don'ts

**Social Templates:**
1. Quote card templates (3 variants)
2. Carousel templates (cover + inner slides)
3. Story templates (text, photo, interactive)
4. Video thumbnail templates
5. Highlight covers
6. Platform header/banner templates

**Presentation Deck:**
1. Title slide
2. Agenda/roadmap
3. Problem slides (2-3)
4. Story/journey slides (2-3)
5. Framework/methodology slides (3-5)
6. Proof/results slides (2-3)
7. Offer/CTA slides (1-2)
8. Q&A/contact slide

**Landing Page:**
1. Hero (headline, subheadline, CTA, visual)
2. Problem (3 pain points with agitation)
3. Solution (mechanism introduction)
4. Benefits (3-5 transformation outcomes)
5. Social Proof (testimonials, logos, metrics)
6. Value Stack (what's included)
7. FAQ (top 5 objections as questions)
8. Final CTA (urgency, risk reversal)

### Step 3: Write All Copy Elements
For each section of the chosen asset type:
- Write finalized copy (not placeholder text)
- Ensure brand voice consistency
- Include all text exactly as it should appear
- Provide headline and body variants where appropriate

### Step 4: Define Visual Direction
For each section:
- Visual style description and mood
- Color usage specifications (HEX, RGB, CMYK)
- Typography specifications (font, weight, size)
- Layout guidance (hierarchy, spacing, alignment)
- Reference images or mood descriptions
- Photography/illustration direction

### Step 5: Specify Technical Requirements
Include:
- Dimensions for all deliverables
- File format requirements (working and export)
- Color space (RGB digital, CMYK print)
- Resolution requirements
- Platform-specific safe zones
- Accessibility standards (contrast ratios)

### Step 6: Define Approval Criteria
Create a checklist the final asset must pass:
- Objective achievement
- Message clarity (understood in 3 seconds)
- Brand guideline adherence
- Copy accuracy
- Technical spec compliance
- Accessibility compliance

## Output Format

```markdown
# CREATIVE BRIEF: [Asset Name]
**Type:** [Type]
**Brief ID:** MKTG-[XXXX]
**Deadline:** [Date]
**Priority:** [High | Medium | Low]

---

## 1. STRATEGIC CONTEXT
**Objective:** [What this accomplishes]
**Target Audience:** [Who sees this]
**Context:** [Where it appears]
**Key Message:** [One takeaway]
**Tone:** [How it should feel]
**Success Metric:** [How we measure]

## 2. COPY DECK
[All text elements, finalized and proofread]

## 3. CREATIVE DIRECTION
[Visual style, mood references, color, typography, hierarchy]

## 4. TECHNICAL SPECIFICATIONS
[Dimensions, formats, resolution, accessibility]

## 5. APPROVAL CRITERIA
[Checklist for final review]

## 6. DELIVERABLES CHECKLIST
[List of all files and formats required]
```

## Quality Gates

- [ ] All copy elements are finalized (no placeholder text)
- [ ] Brand voice is consistent with reference/brand-voice.md
- [ ] Visual direction is specific enough for a designer to execute without a follow-up meeting
- [ ] Technical specifications are complete (dimensions, formats, color space, resolution)
- [ ] Accessibility requirements are specified (contrast ratios, alt text)
- [ ] Platform-specific safe zones are noted
- [ ] Approval criteria are defined as a clear checklist
- [ ] Asset serves a defined strategic objective (not just "nice to have")
- [ ] ICP audience context informs the design direction
- [ ] All deliverable files and variants are listed
- [ ] The brief answers every question before it is asked
