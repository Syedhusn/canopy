# FIOVA Growth OS -- Master Workflow FSM

> Finite State Machine governing the complete lifecycle of a creator business
> engagement. Every session begins at `:start` and routes to the appropriate
> state based on foundations status and user intent.

---

## State Diagram

```
                              ┌─────────┐
                              │ :start  │
                              └────┬────┘
                                   │
                          LoadContext + AssessFoundations
                                   │
                    ┌──────────────┼──────────────┐
                    ▼              ▼               ▼
            foundations       foundations      foundations
            incomplete        complete         failed
                    │              │               │
                    ▼              │               ▼
          ┌─────────────────┐     │     ┌──────────────┐
          │:market_research │     │     │ show report   │
          └────────┬────────┘     │     │ ask direction │
                   │              │     └──────────────┘
            gate: viability>=50   │
                   │              │
          ┌────────┴────────┐     │
          │   :build_icp    │     │
          └────────┬────────┘     │
                   │              │
          gate: completeness>=80  │
                   │              │
          ┌────────┴────────┐     │
          │:build_positioning│    │
          └────────┬────────┘     │
                   │              │
            gate: S/N>=0.5        │
                   │              │
          ┌────────┴────────┐     │
          │  :build_offer   │     │
          └────────┬────────┘     │
                   │              │
          gate: LTV:CAC>=3.0      │
                   │              │
          ┌────────┴────────┐     │
          │:extract_brand   │     │
          │   _voice        │     │
          └────────┬────────┘     │
                   │              │
          gate: samples>=10       │
                   │              │
          ┌────────┴────────┐     │
          │:foundations     ├─────┘
          │  _complete      │
          └────────┬────────┘
                   │
        ┌──────────┼──────────┐
        ▼          ▼          ▼
  ┌───────────┐ ┌────────┐ ┌────────────┐
  │ :content  │ │:nurture│ │   :sales   │
  │_production│ │_seqs   │ │  _assets   │
  └─────┬─────┘ └───┬────┘ └─────┬──────┘
        │            │            │
        └──────┬─────┘            │
               │     ┌────────────┘
               ▼     ▼
          ┌──────────────┐
          │   :launch    │
          └──────┬───────┘
                 │
                 ▼
          ┌──────────────┐
          │    :scale    │
          └──────────────┘

  ┌──────────────────┐
  │:analyze_competitor│  ← callable anytime after :market_research
  └──────────────────┘
```

---

## States

### :start

**Purpose:** Entry point for every session. Loads workspace context and determines
the correct routing based on foundations status and user intent.

| Field | Value |
|-------|-------|
| **Owner** | `system` |
| **Timeout** | 10s |
| **Quality Gate** | None |
| **On Success** | Route to appropriate state |
| **On Failure** | Display error, ask user for direction |

**Logic:**

```
1. Run LoadContext
   → Parse company.yaml
   → Load creator context, foundations_status, runtime state

2. Run AssessFoundations
   → Check existence and quality of each reference/ artifact
   → Produce assessment report

3. Branch:
   IF foundations_status ALL == "complete"
     → Route based on user intent:
       - Content request → :content_production
       - Nurture request → :nurture_sequences
       - Sales request → :sales_assets
       - Launch request → :launch
       - Scale request → :scale
       - Competitor request → :analyze_competitor
       - No specific request → Show menu of available modes

   IF foundations_status ANY == "failed"
     → Show failure report with specific gaps
     → Ask user: retry failed phase, override, or change direction

   IF foundations_status ANY == "none" or "in_progress"
     → Determine next incomplete phase in sequence
     → Route to that phase
     → If first run (ALL == "none"): begin onboarding flow

4. Update runtime state in company.yaml
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| All foundations none, first run | `:market_research` (with onboarding) |
| Market research incomplete | `:market_research` |
| ICP incomplete, market research complete | `:build_icp` |
| Positioning incomplete, ICP complete | `:build_positioning` |
| Offer incomplete, positioning complete | `:build_offer` |
| Brand voice incomplete, offer complete | `:extract_brand_voice` |
| All foundations complete | `:foundations_complete` (then route by intent) |
| Any foundation failed | Show report, ask direction |

---

### :market_research

**Purpose:** Validate the creator's market and produce a Go / Go With Conditions / No-Go
recommendation with a viability score.

| Field | Value |
|-------|-------|
| **Owner** | `market-researcher` |
| **Timeout** | 600s |
| **Quality Gate** | S/N >= 0.5, completeness >= 70, viability >= 50 |
| **Max Revisions** | 2 |
| **On Success** | Transition to `:build_icp` |
| **On Failure** | Revision loop, then escalate to user |

**Entry Conditions:**
- Creator context loaded (business name, niche, category at minimum)
- No dependency on prior artifacts

**Process:**
1. Collect niche and market information from creator (if not already in company.yaml)
2. Execute `Research` action per `spec/PROCEDURES.md`
3. Apply market research method from `reference/frameworks/market-research-method.md`
4. Use `reference/templates/market-research-brief.md` as output template
5. Reference `reference/examples/market-research-aa.md` for quality calibration
6. Diagnose market maturity stage per `reference/frameworks/market-maturity.md`
7. Calculate viability score (0-100)
8. Produce Go / Go With Conditions / No-Go recommendation

**Quality Gate Check:**
```
IF viability >= 50 AND S/N >= 0.5 AND completeness >= 70:
  → PASS
  → Update foundations_status.market_research = "complete"
  → Update company.yaml market section
  → Produce handoff per handoffs/standard.md (:market_research -> :build_icp)
  → Transition to :build_icp

IF viability < 50:
  → Flag: Market may not be viable
  → Present finding to creator with evidence
  → Creator decides: pivot niche, proceed anyway (override), or stop
  → If override: proceed with documented risk

IF S/N < 0.5 OR completeness < 70:
  → Enter revision loop
```

**Revision Loop:**
```
attempt = 0
WHILE attempt < 2:
  attempt += 1
  → Generate quality revision handoff per handoffs/quality-revision.md
  → Send back to market-researcher with specific feedback
  → Re-evaluate against quality gate
  → IF pass: break, transition to :build_icp
  → IF fail: continue loop

IF attempt == 2 AND still failing:
  → Escalate to user
  → Show current score, specific gaps, and what is needed
  → User decides: approve at current quality, provide additional context, or stop
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| Quality gate PASS | `:build_icp` |
| Viability < 50, creator overrides | `:build_icp` (with risk flag) |
| Viability < 50, creator pivots | `:market_research` (restart with new niche) |
| Revision limit reached, user approves | `:build_icp` |
| Creator stops | `:start` |

---

### :build_icp

**Purpose:** Build the comprehensive Ideal Customer Profile document that defines
the target audience at a psychological depth sufficient to drive all downstream work.

| Field | Value |
|-------|-------|
| **Owner** | `icp-architect` |
| **Timeout** | 600s |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, all 13 sections present |
| **Max Revisions** | 2 |
| **On Success** | Transition to `:build_positioning` |
| **On Failure** | Revision loop, then escalate to user |

**Entry Conditions:**
- `foundations_status.market_research == "complete"`
- `reference/market-research.md` exists and passed quality gate
- Handoff context from `:market_research` available

**Process:**
1. Load market research findings and handoff context
2. Execute `ICPBuilder` action per `spec/PROCEDURES.md`
3. Build all 13 ICP sections per `reference/templates/icp-document.md`
4. Apply Limiting Belief Triad diagnosis per `reference/frameworks/limiting-belief-triad.md`
5. Determine Awareness Level per `reference/frameworks/awareness-spectrum.md`
6. Reference examples in `reference/examples/icp-*.md` for quality calibration
7. Extract 10+ verbatim VOC phrases
8. Produce four-layer pain excavation

**Quality Gate Check:**
```
IF completeness >= 80 AND S/N >= 0.5 AND all 13 sections present:
  → PASS
  → Update foundations_status.icp = "complete"
  → Update company.yaml creator.icp section
  → Produce handoff per handoffs/standard.md (:build_icp -> :build_positioning)
  → Transition to :build_positioning

IF completeness < 80 OR S/N < 0.5 OR sections missing:
  → Enter revision loop (same protocol as :market_research)
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| Quality gate PASS | `:build_positioning` |
| Revision limit reached, user approves | `:build_positioning` |
| User provides additional context | `:build_icp` (re-run with new data) |
| Creator stops | `:start` |

---

### :build_positioning

**Purpose:** Establish the positioning strategy, niche definition, and category
for the creator's business based on ICP insights and market context.

| Field | Value |
|-------|-------|
| **Owner** | `niche-architect` |
| **Timeout** | 600s |
| **Quality Gate** | S/N >= 0.5, completeness >= 75, mechanism named |
| **Max Revisions** | 2 |
| **On Success** | Transition to `:build_offer` |
| **On Failure** | Revision loop, then escalate to user |

**Entry Conditions:**
- `foundations_status.icp == "complete"`
- `reference/icp.md` exists and passed quality gate
- `reference/market-research.md` exists
- Handoff context from `:build_icp` available

**Process:**
1. Load ICP and market research findings
2. Execute `NicheArchitect` action per `spec/PROCEDURES.md`
3. Apply market maturity stage to determine positioning strategy
4. Design Vehicle Switch per `reference/frameworks/fiova-new-opportunity.md`
5. Name the unique mechanism
6. Write Core Belief Statement
7. Map competitive differentiation
8. Use `reference/templates/positioning-document.md` as output template
9. Reference `reference/examples/positioning-aryan-hnwi.md` for calibration

**Quality Gate Check:**
```
IF completeness >= 75 AND S/N >= 0.5 AND mechanism is named:
  → PASS
  → Update foundations_status.positioning = "complete"
  → Produce handoff per handoffs/standard.md (:build_positioning -> :build_offer)
  → Transition to :build_offer

IF mechanism not named:
  → Specific feedback: "Positioning requires a named mechanism. Design and name it."
  → Enter revision loop

IF completeness < 75 OR S/N < 0.5:
  → Enter revision loop (same protocol)
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| Quality gate PASS | `:build_offer` |
| Revision limit reached, user approves | `:build_offer` |
| Creator stops | `:start` |

---

### :build_offer

**Purpose:** Architect the complete offer structure with pricing, tiers, risk reversal,
economics validation, and transformation promise.

| Field | Value |
|-------|-------|
| **Owner** | `offer-architect` |
| **Timeout** | 900s |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, LTV:CAC >= 3.0 |
| **Max Revisions** | 2 |
| **Approval** | User must approve pricing before finalization |
| **On Success** | Transition to `:extract_brand_voice` |
| **On Failure** | Revision loop, then escalate to user |

**Entry Conditions:**
- `foundations_status.positioning == "complete"`
- `reference/positioning.md` exists and passed quality gate
- `reference/icp.md` exists
- `reference/market-research.md` exists
- Handoff context from `:build_positioning` available

**Process:**
1. Load all prior foundations artifacts and handoff context
2. Execute `OfferArchitect` action per `spec/PROCEDURES.md`
3. Apply Value Equation per `reference/frameworks/offer-value-equation.md`
4. Use `reference/frameworks/fiova-offer-system.md` for complete offer methodology
5. Use `reference/frameworks/fiova-economics-engine.md` for economics validation
6. Design offer tier structure per `reference/frameworks/fiova-offer-architecture.md`
7. Build USP per `reference/frameworks/fiova-usp-sop.md`
8. Use `reference/templates/offer-document.md` as output template
9. Reference `reference/examples/offer-agency-accelerants.md` for calibration
10. Run EconomicsValidation query

**Quality Gate Check:**
```
IF completeness >= 80 AND S/N >= 0.5 AND LTV:CAC >= 3.0:
  → Present offer summary and pricing to creator for approval
  → IF creator approves:
    → PASS
    → Update foundations_status.offer = "complete"
    → Update company.yaml creator.offer section
    → Produce handoff per handoffs/standard.md (:build_offer -> :foundations_complete)
    → Transition to :extract_brand_voice
  → IF creator requests changes:
    → Incorporate feedback
    → Re-run quality gate (does NOT count as a revision attempt)

IF LTV:CAC < 3.0:
  → Flag: "Economics do not close. LTV:CAC is {ratio}, threshold is 3.0."
  → Specific feedback on what to adjust (pricing, delivery cost, churn assumptions)
  → Enter revision loop

IF completeness < 80 OR S/N < 0.5:
  → Enter revision loop (same protocol)
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| Quality gate PASS + user approval | `:extract_brand_voice` |
| Revision limit reached, user approves | `:extract_brand_voice` |
| Creator stops | `:start` |

---

### :extract_brand_voice

**Purpose:** Extract and codify the creator's brand voice from content samples
so all downstream agents produce content that sounds authentically like the creator.

| Field | Value |
|-------|-------|
| **Owner** | `voice-extractor` |
| **Timeout** | 600s |
| **Quality Gate** | S/N >= 0.5, completeness >= 75, 10+ samples analyzed |
| **Max Revisions** | 2 |
| **Approval** | Creator confirms voice profile accuracy |
| **On Success** | Transition to `:foundations_complete` |
| **On Failure** | Revision loop, then escalate to user |

**Entry Conditions:**
- `foundations_status.offer == "complete"`
- `reference/offers.md` exists and passed quality gate
- Creator has provided or can provide 10+ content samples

**Process:**
1. Collect content samples from creator (social posts, emails, videos, etc.)
2. Execute `BrandVoiceExtractor` action per `spec/PROCEDURES.md`
3. Analyze vocabulary, sentence structure, tone, rhythm
4. Identify signature phrases and patterns
5. Document anti-patterns (what the creator does NOT sound like)
6. Produce voice guide with examples
7. Present to creator for confirmation

**Quality Gate Check:**
```
IF completeness >= 75 AND S/N >= 0.5 AND samples >= 10:
  → Present voice profile to creator for confirmation
  → IF creator confirms:
    → PASS
    → Update foundations_status.brand_voice = "complete"
    → Update company.yaml creator.brand section
    → Transition to :foundations_complete
  → IF creator requests adjustments:
    → Incorporate feedback (does NOT count as revision)
    → Re-present for confirmation

IF samples < 10:
  → Request additional samples from creator
  → Cannot proceed without sufficient data

IF completeness < 75 OR S/N < 0.5:
  → Enter revision loop
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| Quality gate PASS + creator confirmation | `:foundations_complete` |
| Revision limit reached, user approves | `:foundations_complete` |
| Insufficient samples | Stay in `:extract_brand_voice` (request more samples) |
| Creator stops | `:start` |

---

### :foundations_complete

**Purpose:** Gate state that verifies all 5 foundations phases have passed their
quality gates before unlocking downstream work. This is the critical checkpoint
that protects every downstream agent from working with incomplete inputs.

| Field | Value |
|-------|-------|
| **Owner** | `system` |
| **Timeout** | 10s |
| **Quality Gate** | All 5 foundations statuses == "complete" |
| **On Success** | Route to requested downstream mode |
| **On Failure** | Identify gaps, route back to incomplete phase |

**Logic:**
```
1. Verify ALL foundations_status values == "complete":
   - market_research == complete
   - icp == complete
   - positioning == complete
   - offer == complete
   - brand_voice == complete

2. IF all complete:
   → Update runtime.current_mode based on user intent
   → Log foundations completion
   → Present summary of all foundations artifacts with quality scores
   → Route to requested mode:
     - "Create content" → :content_production
     - "Build email sequence" → :nurture_sequences
     - "Build sales funnel" → :sales_assets
     - "Plan launch" → :launch
     - "Build systems" → :scale
     - No specific request → Show available modes with recommendations

3. IF any NOT complete:
   → Should not arrive here (routing error)
   → Identify which phase is incomplete
   → Route back to that phase
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| All complete + content request | `:content_production` |
| All complete + nurture request | `:nurture_sequences` |
| All complete + sales request | `:sales_assets` |
| All complete + launch request | `:launch` |
| All complete + scale request | `:scale` |
| All complete + competitor request | `:analyze_competitor` |
| All complete + no specific request | Show mode menu |
| Any incomplete | Route to incomplete phase |

---

### :content_production

**Purpose:** Marketing content generation across all channels. Agents work in
parallel, all consuming the same foundations artifacts and brand voice.

| Field | Value |
|-------|-------|
| **Owner** | `content-strategist` (coordinator), individual agents execute |
| **Timeout** | Per-action (see PROCEDURES.md) |
| **Quality Gate** | Per-action (minimum S/N >= 0.4, brand voice alignment) |
| **On Success** | Assets written to `output/` |
| **On Failure** | Per-action revision loop |

**Entry Conditions:**
- `:foundations_complete` passed
- `reference/icp.md`, `reference/offers.md`, `reference/brand-voice.md` all exist

**Available Actions:**
- `ContentCalendar` -- Strategic content planning
- `YouTubeScript` -- Long-form YouTube video scripts
- `ShortFormContent` -- Reels, TikTok, Shorts scripts
- `StorySequence` -- Instagram/Facebook story sequences
- `TwitterThread` -- Twitter/X threads
- `LinkedInPost` -- LinkedIn posts and articles
- `AdCreative` -- Paid ad copy and creative
- `BlogPost` -- SEO-optimized blog posts
- `PodcastOutline` -- Podcast episode outlines
- `Repurpose` -- Cross-platform content repurposing

**Workflow:**
```
1. IF no content calendar exists:
   → Recommend starting with ContentCalendar
   → Generate strategic plan before individual pieces

2. Route to requested content type
   → Load foundations context (ICP, Offer, Brand Voice)
   → Execute action
   → Run quality gate (including brand voice alignment check)
   → Write output to output/{category}/

3. After each asset:
   → Offer to create related content (e.g., YouTube script → short-form clips)
   → Suggest repurposing opportunities
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| User requests nurture content | `:nurture_sequences` |
| User requests sales assets | `:sales_assets` |
| User requests launch planning | `:launch` |
| User requests scale operations | `:scale` |
| User requests competitor analysis | `:analyze_competitor` |
| User done | `:start` |

---

### :nurture_sequences

**Purpose:** Build automated nurture sequences that move leads from awareness
to readiness to buy. All sequences consume ICP awareness levels, belief stacks,
and brand voice.

| Field | Value |
|-------|-------|
| **Owner** | `email-strategist` (coordinator), individual agents execute |
| **Timeout** | Per-action (see PROCEDURES.md) |
| **Quality Gate** | Per-action (minimum S/N >= 0.4, brand voice alignment) |
| **On Success** | Assets written to `output/` |
| **On Failure** | Per-action revision loop |

**Entry Conditions:**
- `:foundations_complete` passed
- All foundations artifacts available

**Available Actions:**
- `EmailSequence` -- Email sequences and automations
- `LeadMagnet` -- Lead magnets and opt-in assets
- `CommunityContent` -- Community engagement content
- `WebinarScript` -- Webinar and challenge scripts
- `SMSSequence` -- SMS sequences
- `RetargetSequence` -- Retargeting sequences

**Workflow:**
```
1. Assess what nurture assets already exist
2. Recommend priority order:
   a. Lead magnet (entry point)
   b. Welcome email sequence (immediate follow-up)
   c. Nurture email sequence (long-term education)
   d. Webinar/challenge (conversion event)
   e. SMS, retargeting, community (supporting channels)
3. Execute requested action
4. Ensure each sequence references ICP awareness levels correctly
5. Validate belief progression across sequence (each email should advance one belief)
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| User requests content production | `:content_production` |
| User requests sales assets | `:sales_assets` |
| User requests launch planning | `:launch` |
| User done | `:start` |

---

### :sales_assets

**Purpose:** Create sales conversion assets -- VSLs, funnels, scripts, and
sequences that convert nurtured leads into customers. All assets must maintain
congruence with the offer document.

| Field | Value |
|-------|-------|
| **Owner** | `funnel-architect` (coordinator), individual agents execute |
| **Timeout** | Per-action (see PROCEDURES.md) |
| **Quality Gate** | Per-action (minimum S/N >= 0.5, offer congruence check) |
| **On Success** | Assets written to `output/` |
| **On Failure** | Per-action revision loop |

**Entry Conditions:**
- `:foundations_complete` passed
- All foundations artifacts available
- Offer document is especially critical for this mode

**Available Actions:**
- `BuildVSL` -- Video Sales Letter scripts
- `BuildFunnel` -- Sales funnel design and copy
- `SalesScript` -- Sales call scripts
- `DMSequence` -- DM sales sequences
- `CallPrep` -- Sales call preparation briefs
- `Proposal` -- Proposals and pitch decks
- `CRMUpdate` -- CRM data and pipeline management
- `ObjectionHandler` -- Objection resolution scripts

**Workflow:**
```
1. Assess what sales assets already exist
2. Recommend priority order based on business model:
   - High-ticket: SalesScript → CallPrep → Proposal → BuildFunnel
   - Mid-ticket: BuildVSL → BuildFunnel → EmailSequence (cross-mode)
   - Low-ticket: BuildFunnel → AdCreative (cross-mode)
3. Execute requested action
4. Run offer congruence check on every output:
   - Pricing matches offer document
   - Guarantee language matches
   - Transformation promise is consistent
   - USP appears correctly
   - Mechanism name is used consistently
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| User requests content production | `:content_production` |
| User requests nurture sequences | `:nurture_sequences` |
| User requests launch planning | `:launch` |
| User done | `:start` |

---

### :launch

**Purpose:** Plan and execute a launch sequence, coordinating assets from
content, nurture, and sales modes into a cohesive launch event.

| Field | Value |
|-------|-------|
| **Owner** | `launch-planner` (planning), `launch-analyst` (post-launch) |
| **Timeout** | Per-action (see PROCEDURES.md) |
| **Quality Gate** | S/N >= 0.5, completeness >= 80, timeline validated |
| **Approval** | User approval on launch dates and budget |
| **On Success** | Launch plan or report written to `output/` |
| **On Failure** | Per-action revision loop |

**Entry Conditions:**
- `:foundations_complete` passed
- Sufficient content, nurture, and/or sales assets exist (or will be created)
- For post-launch analysis: a launch has been executed

**Available Actions:**
- `PlanLaunch` -- Create launch plan and timeline
- `LaunchReport` -- Post-launch analysis

**Workflow:**
```
PLANNING PHASE:
1. Assess what assets exist across content, nurture, and sales
2. Identify gaps that must be filled before launch
3. Create launch plan with:
   - Pre-launch runway (content, warming, list building)
   - Launch window (open cart, live events, sales push)
   - Post-launch (follow-up, analysis, next steps)
4. Timeline with owner assignments
5. Budget allocation
6. Present for user approval

POST-LAUNCH PHASE:
1. Collect metrics (revenue, units, conversions, ad spend, email performance)
2. Analyze against goals
3. Identify what worked and what did not
4. Produce recommendations for next launch
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| Launch complete, user requests scale | `:scale` |
| User requests more content/sales assets | `:content_production` or `:sales_assets` |
| User done | `:start` |

---

### :scale

**Purpose:** Build systems, SOPs, team structures, and operational intelligence
for repeatable, scalable growth.

| Field | Value |
|-------|-------|
| **Owner** | `sop-builder` (coordinator), individual agents execute |
| **Timeout** | Per-action (see PROCEDURES.md) |
| **Quality Gate** | Per-action (minimum S/N >= 0.4) |
| **On Success** | Assets written to `output/` |
| **On Failure** | Per-action revision loop |

**Entry Conditions:**
- `:foundations_complete` passed
- Business has operational data or processes to systematize

**Available Actions:**
- `BuildSOP` -- Standard operating procedures
- `HiringBrief` -- Team building and hiring
- `CompetitorIntel` -- Competitive intelligence (also callable independently)
- `RevenueReport` -- Financial analysis
- `RetentionCheck` -- Retention and churn analysis
- `CaseStudy` -- Client case studies

**Workflow:**
```
1. Assess operational maturity
2. Recommend priority based on business stage:
   - Early revenue: SOPs for core processes, competitor intel
   - Growing: Hiring briefs, retention checks, revenue reports
   - Scaling: All of the above + case studies, advanced competitor intel
3. Execute requested action
4. Build interconnected system (SOP references → hiring briefs → training materials)
```

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| User requests any other mode | Route to requested mode |
| User done | `:start` |

---

### :analyze_competitor

**Purpose:** Run competitive intelligence analysis on a specific competitor.
This state is callable at any time after market research is complete -- it does
NOT require the full foundations pipeline.

| Field | Value |
|-------|-------|
| **Owner** | `competitor-analyst` |
| **Timeout** | 900s |
| **Quality Gate** | S/N >= 0.5, completeness >= 75 |
| **Max Revisions** | 2 |
| **On Success** | Competitor report written to `output/reports/` |
| **On Failure** | Revision loop, then escalate to user |

**Entry Conditions:**
- `foundations_status.market_research == "complete"` (minimum requirement)
- Does NOT require ICP, positioning, offer, or brand voice to be complete

**Process:**
1. Load market research context
2. If ICP/positioning/offer exist, load for richer analysis
3. Execute `CompetitorIntel` action per `spec/PROCEDURES.md`
4. Use `reference/templates/competitor-battlecard.md` as output template
5. Produce competitor battlecard

**Transitions:**

| Condition | Target State |
|-----------|-------------|
| Analysis complete | Return to previous state |
| User requests another analysis | `:analyze_competitor` (new competitor) |
| User done | `:start` |

---

## Cross-Cutting Rules

### Timeout Handling

When any state exceeds its timeout:

1. Save current progress to a draft file (`output/{category}/draft-{type}-{date}.md`)
2. Log timeout event with state, agent, elapsed time
3. Present partial output to user with explanation
4. Offer to: resume (extend timeout), restart the action, or accept partial output

### Revision Loop Protocol

Applies to all states with quality gates:

```
MAX_REVISIONS = 2

on_quality_gate_fail(artifact, score, issues):
  IF revision_count < MAX_REVISIONS:
    revision_count += 1
    → Generate quality-revision handoff (handoffs/quality-revision.md)
    → Include: what failed, what passed (do not rewrite), specific fix instructions
    → Send to owning agent
    → Re-evaluate quality gate
    → IF pass: proceed to transition
    → IF fail: recurse (up to MAX_REVISIONS)

  IF revision_count >= MAX_REVISIONS:
    → Escalate to user
    → Present: current score, threshold, specific gaps, what has been tried
    → User options:
      a. Approve at current quality (override gate)
      b. Provide additional context for another attempt (resets revision count)
      c. Stop and revisit later
```

### State Persistence

- Current state is stored in `company.yaml` under `runtime.current_phase`
- Each state transition updates `runtime.current_phase` and `runtime.active_agent`
- On session restart, `:start` reads `runtime.current_phase` to resume where left off
- All handoffs are persisted as files for audit trail

### Parallel Execution

After `:foundations_complete`, the following states can execute in parallel:
- `:content_production` and `:nurture_sequences` (no dependency between them)
- `:content_production` and `:sales_assets` (no dependency between them)
- `:nurture_sequences` and `:sales_assets` (no dependency between them)
- `:analyze_competitor` can run in parallel with any other state

`:launch` should only begin when sufficient assets exist from the parallel modes.
`:scale` can begin at any time after foundations but typically follows initial launch.

### Mode Switching

Users can switch between modes at any time after `:foundations_complete`. Mode
switching does NOT require completing the current mode. The system saves progress
in the current mode and routes to the requested mode.

```
User in :content_production says "I need a sales script"
  → Save content production state
  → Route to :sales_assets
  → Execute SalesScript action
  → Offer to return to content production or continue in sales
```

### Emergency Override

The creator can override any quality gate at any time by explicitly requesting it.
The override is logged with the current quality score and the user's stated reason.
The system will proceed but will flag the override in all downstream handoffs so
receiving agents know the upstream artifact did not pass standard quality gates.

```
override:
  artifact: "reference/icp.md"
  quality_score: 0.38
  threshold: 0.5
  reason: "Creator has deep audience knowledge; formal template compliance is secondary"
  date: "2026-03-21"
  downstream_flag: true
```
