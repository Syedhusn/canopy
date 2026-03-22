# FIOVA Growth OS -- Procedures

> Action/query bindings for the Growth OS. Each procedure defines its specification,
> runtime agent, parameters, timeout, approval requirements, and output routing.

---

## Queries

Queries read state without modifying it. They are always safe to run and require
no approval.

### LoadContext

Loads the current workspace state from `company.yaml` and returns a structured
summary of the creator's business context, foundations status, and active goals.

| Field | Value |
|-------|-------|
| **Spec** | Read `company.yaml`, parse all sections, return structured summary |
| **Agent** | `system` (no agent -- handled by runtime) |
| **Timeout** | 5s |
| **Approval** | None |
| **Output** | In-memory context object (not persisted) |

**Parameters:**
- `sections` (optional): Array of sections to load. Default: all.
  Valid values: `workspace`, `budget`, `governance`, `goals`, `creator`, `foundations_status`, `quality_gates`, `runtime`

**Returns:**
```yaml
context:
  creator_name: string
  business_stage: string
  foundations_complete: boolean
  foundations_status: { market_research, icp, positioning, offer, brand_voice }
  current_mode: string | null
  active_initiative: string
```

---

### AssessFoundations

Evaluates the current state of the foundations pipeline by checking the existence,
completeness, and quality of each foundations artifact.

| Field | Value |
|-------|-------|
| **Spec** | Check each `reference/` artifact against its quality gate thresholds |
| **Agent** | `system` |
| **Timeout** | 15s |
| **Approval** | None |
| **Output** | Assessment report to stdout |

**Parameters:**
- None

**Returns:**
```yaml
assessment:
  market_research:
    exists: boolean
    file: "reference/market-research.md"
    completeness: number  # 0-100
    quality_score: number  # 0.0-1.0
    viability: number  # 0-100
    status: none | in_progress | complete | failed
    gate: pass | fail | not_evaluated
  icp:
    exists: boolean
    file: "reference/icp.md"
    completeness: number
    quality_score: number
    sections_present: number  # out of 13
    status: none | in_progress | complete | failed
    gate: pass | fail | not_evaluated
  positioning:
    exists: boolean
    file: "reference/positioning.md"
    completeness: number
    quality_score: number
    mechanism_named: boolean
    status: none | in_progress | complete | failed
    gate: pass | fail | not_evaluated
  offer:
    exists: boolean
    file: "reference/offers.md"
    completeness: number
    quality_score: number
    ltv_cac: number
    status: none | in_progress | complete | failed
    gate: pass | fail | not_evaluated
  brand_voice:
    exists: boolean
    file: "reference/brand-voice.md"
    completeness: number
    quality_score: number
    samples_analyzed: number
    status: none | in_progress | complete | failed
    gate: pass | fail | not_evaluated
  overall:
    all_complete: boolean
    next_phase: string  # which phase to enter next
    blockers: string[]  # what is preventing progress
```

---

### CompletenessScore

Calculates a completeness score for a specific artifact by checking its sections
against the corresponding template in `reference/templates/`.

| Field | Value |
|-------|-------|
| **Spec** | Compare artifact sections against template, count present/missing/partial |
| **Agent** | `system` |
| **Timeout** | 10s |
| **Approval** | None |
| **Output** | Score report to stdout |

**Parameters:**
- `artifact` (required): Path to the artifact file to score
- `template` (required): Path to the template to score against

**Returns:**
```yaml
completeness:
  score: number  # 0-100
  total_sections: number
  present: number
  missing: string[]
  partial: string[]  # sections present but incomplete
  recommendation: string
```

---

### QualityGate

Runs the triple-layer quality verification (Formal 40%, Semantic 35%,
Information-theoretic 25%) on a specific artifact and returns pass/fail with
dimensional breakdown.

| Field | Value |
|-------|-------|
| **Spec** | `reference/frameworks/` quality criteria, handoffs/quality-revision.md |
| **Agent** | `system` |
| **Timeout** | 30s |
| **Approval** | None |
| **Output** | Quality gate report to stdout |

**Parameters:**
- `artifact` (required): Path to the artifact file to evaluate
- `type` (required): Artifact type for threshold selection
  Valid values: `market-research`, `icp`, `positioning`, `offer`, `brand-voice`, `marketing-content`, `sales-asset`, `launch-plan`

**Returns:**
```yaml
quality_gate:
  passed: boolean
  composite_score: number  # 0.0-1.0 (weighted S/N)
  signal:
    M: number  # Mode match
    G: number  # Genre match
    T: number  # Technical accuracy
    F: number  # Framework application
    W: number  # Whole coherence
  layers:
    formal:
      score: number  # 0.0-1.0
      weight: 0.40
      issues: string[]
    semantic:
      score: number
      weight: 0.35
      issues: string[]
    information_theoretic:
      score: number
      weight: 0.25
      issues: string[]
  threshold: number
  margin: number  # how far above/below threshold
  recommendation: pass | revise | escalate
  revision_count: number  # how many times this artifact has been revised
```

---

### EconomicsValidation

Validates the unit economics of an offer document, checking LTV:CAC ratio,
margin analysis, pricing architecture, and revenue model sustainability.

| Field | Value |
|-------|-------|
| **Spec** | `reference/frameworks/fiova-economics-engine.md` |
| **Agent** | `finance-analyst` |
| **Timeout** | 30s |
| **Approval** | None |
| **Output** | Economics validation report to stdout |

**Parameters:**
- `offer_document` (required): Path to the offer document to validate
- `icp_document` (optional): Path to ICP for resource/capability cross-reference

**Returns:**
```yaml
economics:
  valid: boolean
  ltv_cac_ratio: number
  ltv_cac_threshold: 3.0
  monthly_revenue_potential: string
  margin_analysis:
    gross_margin_pct: number
    net_margin_pct: number
    breakeven_units: number
  pricing:
    alignment_with_icp: string  # aligned | misaligned | unknown
    competitive_position: string  # below | at | above | premium
    value_equation_score: number  # Dream Outcome x Likelihood / Time x Effort
  risks: string[]
  recommendations: string[]
```

---

## Actions

Actions produce or modify artifacts. Each has defined parameters, quality gates,
and output routing.

---

### Foundations Actions

#### Research

Run market research and produce a viability assessment for the creator's niche.

| Field | Value |
|-------|-------|
| **Spec** | `reference/frameworks/market-research-method.md`, `reference/templates/market-research-brief.md` |
| **Agent** | `market-researcher` |
| **Skill** | `/research` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.5, completeness >= 70, viability >= 50 |
| **Output** | `reference/market-research.md` |
| **Max Revisions** | 2 |

**Parameters:**
- `niche` (required): The niche or market to research
- `category` (optional): Business category for context
- `existing_data` (optional): Path to any existing research the creator has

**Process:**
1. Load creator context from `company.yaml`
2. Apply evidence hierarchy -- prioritize transactional and behavioral evidence
3. Consult 12 data source categories per `market-research-method.md`
4. Apply cross-validation rule (3+ independent sources per finding)
5. Diagnose market maturity stage (naive/aware/skeptical/exhausted)
6. Calculate viability score
7. Produce Go / Go With Conditions / No-Go recommendation
8. Write output to `reference/market-research.md`
9. Run QualityGate
10. If pass: update `foundations_status.market_research` to `complete`, produce handoff
11. If fail: enter revision loop (max 2)

---

#### ICPBuilder

Build the Ideal Customer Profile document from market research and creator input.

| Field | Value |
|-------|-------|
| **Spec** | `reference/frameworks/limiting-belief-triad.md`, `reference/frameworks/awareness-spectrum.md`, `reference/templates/icp-document.md` |
| **Agent** | `icp-architect` |
| **Skill** | `/build-icp` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, all 13 sections present |
| **Output** | `reference/icp.md` |
| **Max Revisions** | 2 |
| **Depends On** | `foundations_status.market_research == complete` |

**Parameters:**
- `market_research` (auto): Loaded from `reference/market-research.md`
- `creator_input` (optional): Additional audience knowledge from the creator
- `existing_audience_data` (optional): Analytics, survey data, customer list info

**Process:**
1. Verify market research is complete (dependency check)
2. Load market research findings and handoff context
3. Build all 13 ICP sections per template
4. Diagnose Limiting Belief pattern (Worthless / Helpless / Hopeless)
5. Determine Awareness Level
6. Identify Transformation type (Status / Capability / Safety)
7. Extract 10+ verbatim VOC phrases
8. Produce four-layer pain excavation (perceived, real, private, secret fears)
9. Write output to `reference/icp.md`
10. Run QualityGate
11. If pass: update `foundations_status.icp` to `complete`, update `company.yaml` creator.icp, produce handoff
12. If fail: enter revision loop (max 2)

---

#### NicheArchitect

Define the positioning strategy, niche, and category for the creator's business.

| Field | Value |
|-------|-------|
| **Spec** | `reference/frameworks/fiova-positioning.md`, `reference/frameworks/fiova-new-opportunity.md`, `reference/templates/positioning-document.md` |
| **Agent** | `niche-architect` |
| **Skill** | `/define-niche` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.5, completeness >= 75, mechanism named |
| **Output** | `reference/positioning.md` |
| **Max Revisions** | 2 |
| **Depends On** | `foundations_status.icp == complete` |

**Parameters:**
- `icp` (auto): Loaded from `reference/icp.md`
- `market_research` (auto): Loaded from `reference/market-research.md`
- `creator_strengths` (optional): Unique skills, experience, or credentials

**Process:**
1. Verify ICP is complete (dependency check)
2. Load ICP and market research findings
3. Apply market maturity diagnosis to determine positioning strategy
4. Identify old vehicles the ICP has tried and failed with
5. Design the Vehicle Switch -- new opportunity framing
6. Name the unique mechanism
7. Write the Core Belief Statement
8. Define category (entering existing or creating new)
9. Map competitive differentiation
10. Write output to `reference/positioning.md`
11. Run QualityGate
12. If pass: update `foundations_status.positioning` to `complete`, produce handoff
13. If fail: enter revision loop (max 2)

---

#### OfferArchitect

Architect the complete offer with pricing, structure, economics, and risk reversal.

| Field | Value |
|-------|-------|
| **Spec** | `reference/frameworks/fiova-offer-system.md`, `reference/frameworks/fiova-economics-engine.md`, `reference/frameworks/offer-value-equation.md`, `reference/templates/offer-document.md` |
| **Agent** | `offer-architect` |
| **Skill** | `/design-offer` |
| **Timeout** | 900s |
| **Approval** | User approval required before finalizing pricing |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, LTV:CAC >= 3.0 |
| **Output** | `reference/offers.md` |
| **Max Revisions** | 2 |
| **Depends On** | `foundations_status.positioning == complete` |

**Parameters:**
- `icp` (auto): Loaded from `reference/icp.md`
- `positioning` (auto): Loaded from `reference/positioning.md`
- `market_research` (auto): Loaded from `reference/market-research.md`
- `pricing_constraints` (optional): Creator's pricing boundaries or preferences
- `delivery_constraints` (optional): What the creator can actually deliver

**Process:**
1. Verify positioning is complete (dependency check)
2. Load ICP, positioning, and market research
3. Apply Value Equation: Value = (Dream Outcome x Perceived Likelihood) / (Time x Effort)
4. Design offer tier structure (pricing architecture)
5. Build the transformation promise mapped to ICP's limiting beliefs
6. Design risk reversal / guarantee
7. Calculate unit economics (LTV, CAC, margins)
8. Validate LTV:CAC >= 3.0
9. Design upsell/downsell ecosystem
10. Build USP using `fiova-usp-sop.md`
11. Write output to `reference/offers.md`
12. Run QualityGate + EconomicsValidation
13. Request user approval on pricing
14. If pass: update `foundations_status.offer` to `complete`, update `company.yaml` creator.offer, produce handoff
15. If fail: enter revision loop (max 2)

---

#### BrandVoiceExtractor

Extract the creator's brand voice from content samples and codify it for downstream use.

| Field | Value |
|-------|-------|
| **Spec** | Voice analysis methodology, pattern extraction |
| **Agent** | `voice-extractor` |
| **Skill** | `/extract-voice` |
| **Timeout** | 600s |
| **Approval** | Creator confirms voice profile accuracy |
| **Quality Gate** | S/N >= 0.5, completeness >= 75, 10+ samples analyzed |
| **Output** | `reference/brand-voice.md` |
| **Max Revisions** | 2 |
| **Depends On** | `foundations_status.offer == complete` |

**Parameters:**
- `samples` (required): Array of content samples (URLs, text, or file paths)
- `creator_notes` (optional): How the creator describes their own voice
- `anti_patterns` (optional): Voice characteristics to avoid

**Process:**
1. Verify offer is complete (dependency check)
2. Collect and analyze 10+ content samples from the creator
3. Extract vocabulary patterns, sentence structure, rhythm
4. Identify tone markers (authoritative, conversational, provocative, etc.)
5. Map language level and register
6. Identify signature phrases and recurring patterns
7. Document anti-patterns (what the creator does NOT sound like)
8. Produce voice guide with dos/don'ts and examples
9. Write output to `reference/brand-voice.md`
10. Run QualityGate
11. Request creator confirmation
12. If pass: update `foundations_status.brand_voice` to `complete`, update `company.yaml` creator.brand, produce handoff
13. If fail: enter revision loop (max 2)

---

### Marketing Actions

#### ContentCalendar

Generate a content calendar and strategy across the creator's active channels.

| Field | Value |
|-------|-------|
| **Spec** | Content strategy methodology, platform-specific best practices |
| **Agent** | `content-strategist` |
| **Skill** | `/content-calendar` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70 |
| **Output** | `output/content/content-calendar-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `duration` (optional): Calendar duration in weeks. Default: 4.
- `channels` (optional): Channels to include. Default: from `company.yaml` creator.goals.
- `theme` (optional): Overarching theme or campaign focus.
- `frequency` (optional): Posts per week per channel. Default: platform-appropriate.

---

#### YouTubeScript

Write a long-form YouTube video script optimized for the creator's audience.

| Field | Value |
|-------|-------|
| **Spec** | YouTube script structure, retention optimization |
| **Agent** | `youtube-producer` |
| **Skill** | `/youtube-script` |
| **Timeout** | 900s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70, brand voice alignment |
| **Output** | `output/scripts/youtube-{topic}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `topic` (required): Video topic or title concept
- `format` (optional): tutorial | story | list | opinion | case-study. Default: contextual.
- `target_length` (optional): Target video length in minutes. Default: 10-15.
- `cta` (optional): Primary call to action.

---

#### ShortFormContent

Create short-form video scripts for Reels, TikTok, or YouTube Shorts.

| Field | Value |
|-------|-------|
| **Spec** | Short-form content patterns, hook frameworks |
| **Agent** | `short-form-creator` |
| **Skill** | `/short-form` |
| **Timeout** | 300s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70, brand voice alignment |
| **Output** | `output/content/short-form-{topic}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `topic` (required): Content topic
- `platform` (optional): tiktok | reels | shorts | all. Default: all.
- `count` (optional): Number of scripts to produce. Default: 3.
- `hook_style` (optional): question | statement | statistic | story | contrarian.

---

#### StorySequence

Design an Instagram or Facebook story sequence.

| Field | Value |
|-------|-------|
| **Spec** | Story sequence methodology, engagement patterns |
| **Agent** | `story-producer` |
| **Skill** | `/story-sequence` |
| **Timeout** | 300s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70, brand voice alignment |
| **Output** | `output/content/stories-{topic}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `topic` (required): Story sequence topic or theme
- `slides` (optional): Number of slides. Default: 5-8.
- `cta` (optional): Final slide call to action.
- `type` (optional): educational | behind-scenes | testimonial | launch | engagement.

---

#### TwitterThread

Write a Twitter/X thread.

| Field | Value |
|-------|-------|
| **Spec** | Thread structure, hook optimization, engagement patterns |
| **Agent** | `twitter-strategist` |
| **Skill** | `/twitter-thread` |
| **Timeout** | 300s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70, brand voice alignment |
| **Output** | `output/content/twitter-{topic}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `topic` (required): Thread topic
- `tweets` (optional): Number of tweets in thread. Default: 7-10.
- `style` (optional): story | listicle | framework | contrarian | case-study.
- `cta` (optional): Final tweet call to action.

---

#### LinkedInPost

Write a LinkedIn post or article.

| Field | Value |
|-------|-------|
| **Spec** | LinkedIn content patterns, professional tone calibration |
| **Agent** | `linkedin-writer` |
| **Skill** | `/linkedin-post` |
| **Timeout** | 300s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70, brand voice alignment |
| **Output** | `output/content/linkedin-{topic}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `topic` (required): Post topic
- `format` (optional): post | article | carousel-text. Default: post.
- `tone_override` (optional): More professional shift from base brand voice.

---

#### AdCreative

Create paid ad copy and creative briefs for Meta, Google, YouTube, or other platforms.

| Field | Value |
|-------|-------|
| **Spec** | Ad copy frameworks, platform-specific specs, awareness-level targeting |
| **Agent** | `ad-creative-director` |
| **Skill** | `/ad-creative` |
| **Timeout** | 600s |
| **Approval** | User approval on ad spend recommendations |
| **Quality Gate** | S/N >= 0.5, completeness >= 75, offer congruence check |
| **Output** | `output/ads/ad-{platform}-{audience}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `platform` (required): meta | google | youtube | tiktok | linkedin.
- `objective` (required): awareness | traffic | leads | conversions | retarget.
- `audience_segment` (optional): Specific ICP segment to target.
- `variations` (optional): Number of creative variations. Default: 3.
- `budget_range` (optional): Daily or campaign budget for context.

---

#### BlogPost

Write an SEO-optimized blog post.

| Field | Value |
|-------|-------|
| **Spec** | SEO methodology, content structure, keyword targeting |
| **Agent** | `seo-writer` |
| **Skill** | `/blog-post` |
| **Timeout** | 900s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70, brand voice alignment |
| **Output** | `output/content/blog-{topic}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `topic` (required): Blog post topic or target keyword
- `word_count` (optional): Target word count. Default: 1500-2500.
- `keywords` (optional): Array of target keywords.
- `intent` (optional): informational | commercial | transactional | navigational.
- `cta` (optional): Primary call to action.

---

### Nurture Actions

#### EmailSequence

Build an email sequence or automation.

| Field | Value |
|-------|-------|
| **Spec** | Email marketing methodology, awareness-level sequencing |
| **Agent** | `email-strategist` |
| **Skill** | `/email-sequence` |
| **Timeout** | 900s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.5, completeness >= 75, brand voice alignment |
| **Output** | `output/sequences/email-{type}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `type` (required): welcome | nurture | launch | cart-abandon | re-engagement | onboarding | ascension.
- `emails` (optional): Number of emails in sequence. Default: type-appropriate.
- `goal` (optional): Sequence objective / desired action.
- `trigger` (optional): What triggers the sequence.

---

#### LeadMagnet

Create a lead magnet or opt-in asset.

| Field | Value |
|-------|-------|
| **Spec** | Lead magnet frameworks, value-first methodology |
| **Agent** | `lead-magnet-creator` |
| **Skill** | `/lead-magnet` |
| **Timeout** | 900s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70 |
| **Output** | `output/content/lead-magnet-{name}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `type` (required): checklist | guide | template | quiz | mini-course | cheat-sheet | swipe-file | calculator.
- `topic` (required): Lead magnet topic.
- `format` (optional): pdf | interactive | video | email-course. Default: pdf.

---

#### WebinarScript

Write a webinar or challenge script.

| Field | Value |
|-------|-------|
| **Spec** | Webinar structure, pitch integration, engagement patterns |
| **Agent** | `webinar-producer` |
| **Skill** | `/webinar-script` |
| **Timeout** | 900s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, offer congruence check |
| **Output** | `output/scripts/webinar-{topic}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `type` (required): webinar | challenge | workshop | masterclass.
- `topic` (required): Content topic.
- `duration` (optional): Target duration in minutes. Default: 60-90.
- `pitch_offer` (optional): Which offer to pitch. Default: primary offer.
- `days` (optional): Number of days (for challenges). Default: 3-5.

---

### Sales Actions

#### BuildVSL

Write a Video Sales Letter script.

| Field | Value |
|-------|-------|
| **Spec** | VSL structure, persuasion architecture, offer presentation |
| **Agent** | `vsl-producer` |
| **Skill** | `/build-vsl` |
| **Timeout** | 900s |
| **Approval** | User review before finalization |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, offer congruence check |
| **Output** | `output/vsl/vsl-{offer}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `offer` (optional): Which offer to sell. Default: primary offer.
- `length` (optional): short (5-10 min) | standard (15-30 min) | long (30-60 min). Default: standard.
- `style` (optional): story | problem-solution | demonstration | testimonial-driven.

---

#### BuildFunnel

Design a sales funnel with page copy for each step.

| Field | Value |
|-------|-------|
| **Spec** | Funnel architecture, page copy frameworks, conversion optimization |
| **Agent** | `funnel-architect` |
| **Skill** | `/build-funnel` |
| **Timeout** | 900s |
| **Approval** | User review before finalization |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, offer congruence check |
| **Output** | `output/funnels/funnel-{type}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `type` (required): webinar | vsl | application | tripwire | challenge | direct-sales | book.
- `offer` (optional): Which offer to sell. Default: primary offer.
- `pages` (optional): Array of page types to include. Default: type-appropriate.

---

#### SalesScript

Write a sales call script.

| Field | Value |
|-------|-------|
| **Spec** | Sales call methodology, objection handling, close techniques |
| **Agent** | `sales-scriptwriter` |
| **Skill** | `/sales-script` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.5, completeness >= 75 |
| **Output** | `output/scripts/sales-{type}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `type` (required): discovery | demo | close | follow-up | objection-handler.
- `offer` (optional): Which offer the call is for. Default: primary offer.
- `call_length` (optional): Target call duration in minutes. Default: 30-45.

---

#### DMSequence

Create a DM sales sequence for Instagram, LinkedIn, or Twitter.

| Field | Value |
|-------|-------|
| **Spec** | DM sales methodology, relationship-first approach |
| **Agent** | `dm-closer` |
| **Skill** | `/dm-sequence` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70, brand voice alignment |
| **Output** | `output/sequences/dm-{platform}-{date}.md` |
| **Depends On** | All foundations complete |

**Parameters:**
- `platform` (required): instagram | linkedin | twitter.
- `messages` (optional): Number of messages in sequence. Default: 5-7.
- `trigger` (optional): What triggers the DM sequence (comment, story reply, etc.).
- `offer` (optional): Which offer to eventually pitch. Default: primary offer.

---

### Launch Actions

#### PlanLaunch

Create a launch plan and timeline.

| Field | Value |
|-------|-------|
| **Spec** | Launch methodology, timeline frameworks, asset checklists |
| **Agent** | `launch-planner` |
| **Skill** | `/plan-launch` |
| **Timeout** | 900s |
| **Approval** | User approval on launch dates and budget |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, timeline validated |
| **Output** | `output/launches/launch-plan-{offer}-{date}.md` |
| **Depends On** | All foundations complete, content engine and/or sales system active |

**Parameters:**
- `offer` (required): Which offer to launch.
- `launch_type` (required): seed | internal | partner | public | evergreen.
- `launch_date` (optional): Target launch date.
- `budget` (optional): Launch budget.
- `channels` (optional): Channels to use for the launch.

---

#### LaunchReport

Produce a post-launch analysis report.

| Field | Value |
|-------|-------|
| **Spec** | Post-launch analysis methodology, metrics framework |
| **Agent** | `launch-analyst` |
| **Skill** | `/launch-report` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.5, completeness >= 75 |
| **Output** | `output/reports/launch-report-{offer}-{date}.md` |
| **Depends On** | A launch has been executed |

**Parameters:**
- `launch_plan` (required): Path to the launch plan used.
- `metrics` (required): Revenue, units sold, conversion rates, ad spend, email performance.
- `period` (optional): Analysis period. Default: full launch window.

---

### Scale Actions

#### BuildSOP

Create a standard operating procedure.

| Field | Value |
|-------|-------|
| **Spec** | SOP methodology, process documentation standards |
| **Agent** | `sop-builder` |
| **Skill** | `/build-sop` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 75 |
| **Output** | `output/sops/sop-{process}-{date}.md` |
| **Depends On** | Process has been executed at least once |

**Parameters:**
- `process` (required): The process to document.
- `owner` (optional): Who owns this process.
- `frequency` (optional): How often this process runs.

---

#### HiringBrief

Write a hiring brief for a role.

| Field | Value |
|-------|-------|
| **Spec** | Hiring methodology, role definition, assessment criteria |
| **Agent** | `hiring-manager` |
| **Skill** | `/hiring-brief` |
| **Timeout** | 600s |
| **Approval** | User approval required |
| **Quality Gate** | S/N >= 0.4, completeness >= 75 |
| **Output** | `output/reports/hiring-{role}-{date}.md` |
| **Depends On** | Business at scaling stage |

**Parameters:**
- `role` (required): The role to hire for.
- `type` (optional): full-time | part-time | contractor | agency. Default: contractor.
- `budget` (optional): Compensation budget range.
- `priority_skills` (optional): Top 3-5 skills required.

---

#### CompetitorIntel

Run competitive intelligence analysis.

| Field | Value |
|-------|-------|
| **Spec** | `reference/templates/competitor-battlecard.md` |
| **Agent** | `competitor-analyst` |
| **Skill** | `/competitor-intel` |
| **Timeout** | 900s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.5, completeness >= 75 |
| **Output** | `output/reports/competitor-{name}-{date}.md` |
| **Depends On** | `foundations_status.market_research == complete` (not full foundations) |

**Parameters:**
- `competitor` (required): Competitor name or URL to analyze.
- `depth` (optional): quick | standard | deep. Default: standard.
- `focus` (optional): pricing | positioning | content | funnel | all. Default: all.

---

#### RevenueReport

Generate a revenue and financial analysis report.

| Field | Value |
|-------|-------|
| **Spec** | Financial analysis methodology, KPI frameworks |
| **Agent** | `finance-analyst` |
| **Skill** | `/revenue-report` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70 |
| **Output** | `output/reports/revenue-{period}-{date}.md` |
| **Depends On** | Business has revenue data |

**Parameters:**
- `period` (required): monthly | quarterly | annual | custom.
- `data` (required): Revenue data, expenses, key metrics.
- `compare_to` (optional): Previous period for comparison.

---

#### RetentionCheck

Analyze retention metrics and churn patterns.

| Field | Value |
|-------|-------|
| **Spec** | Retention analysis methodology, cohort analysis |
| **Agent** | `finance-analyst` |
| **Skill** | `/retention-check` |
| **Timeout** | 600s |
| **Approval** | None |
| **Quality Gate** | S/N >= 0.4, completeness >= 70 |
| **Output** | `output/reports/retention-{date}.md` |
| **Depends On** | Business has customer data |

**Parameters:**
- `data` (required): Customer data, subscription data, churn events.
- `period` (optional): Analysis period. Default: last 90 days.
- `segments` (optional): Customer segments to analyze separately.

---

#### CaseStudy

Produce a client case study.

| Field | Value |
|-------|-------|
| **Spec** | Case study structure, transformation narrative |
| **Agent** | `sop-builder` |
| **Skill** | `/case-study` |
| **Timeout** | 600s |
| **Approval** | Client approval required |
| **Quality Gate** | S/N >= 0.4, completeness >= 70, brand voice alignment |
| **Output** | `output/content/case-study-{client}-{date}.md` |
| **Depends On** | Client has completed transformation |

**Parameters:**
- `client` (required): Client name or identifier.
- `data` (required): Before/after metrics, timeline, testimonial quotes.
- `format` (optional): long-form | one-pager | video-script. Default: long-form.
- `use_case` (optional): website | social | sales-page | email. Default: website.
