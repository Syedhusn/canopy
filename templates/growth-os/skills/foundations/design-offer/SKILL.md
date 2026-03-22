# /design-offer

> Design a complete offer architecture with tiered pricing, value stack, guarantee, economics validation, and a ready-to-use Offer One-Pager.

## Usage

```
/design-offer [--type high-ticket|low-ticket|hybrid] [--tiers 1|2|3]
```

**Arguments:**
- `--type` — Offer pricing strategy (optional, default: `hybrid`)
  - `high-ticket` — Focus on DWY ($6K-$30K) and DFY ($50K-$100K) tiers
  - `low-ticket` — Focus on DIY ($97-$997) tier with potential upsell path
  - `hybrid` — Design all applicable tiers with ascension path (default)
- `--tiers` — Number of tiers to design (optional, default: `3`)
  - `1` — Single tier (use with `--type` to determine which)
  - `2` — Two tiers (typically DIY + DWY, or DWY + DFY)
  - `3` — Full three-tier structure (DIY + DWY + DFY)

## What It Does

Takes a validated ICP profile and positioning document and engineers the complete offer architecture. This includes the transformation statement, value equation scoring, tiered offer design, bonus stack engineering (10:1 value ratio), guarantee design matched to the ICP's limiting belief, three-frame pricing rationale, belief stack with installation methods, objection handling mapped from the ICP, economics validation (LTV:CAC >= 3:1), and a single-page Offer One-Pager ready for sales or landing page use.

The offer is the economic engine of the creator's business. This skill ensures it is architecturally sound — not just compelling, but profitable and sustainable.

## Agent

`offer-architect` — Offer Architect

## Destination

- **Reference copy:** `reference/offers.md` (approved version for downstream agents)
- **Full output:** `output/foundations/offer-document.md` (complete 12-section deliverable)

## Prerequisites

| Prerequisite | Location | Requirement |
|-------------|----------|-------------|
| ICP Document | `reference/icp.md` | Must exist with completeness score >= 80/100 |
| Positioning Document | `reference/positioning.md` | Must exist with defined mechanism and Core Belief Statement |

Both are strictly required. The Offer Architect will refuse to begin if either is missing or if ICP completeness is below 80. The offer must be built ON the ICP insights and positioning, not independent of them.

**Key data pulled from prerequisites:**
- From ICP: pain points (mapped to offer components), objections (mapped to guarantee and handling), limiting belief (drives guarantee type), buying intelligence (drives pricing and urgency), dream outcome (drives transformation statement), language patterns (drives offer copy direction)
- From Positioning: unique mechanism (integrated into offer), Core Belief Statement (threaded into belief stack), old vehicle autopsy (used in comparison frame), narrative architecture (used in offer storytelling)

## Process

### 1. Verify Prerequisites
- Load `reference/icp.md` and verify completeness >= 80
- Load `reference/positioning.md` and verify mechanism and Core Belief Statement exist
- Extract key data points for offer design
- Determine offer type and tier count from arguments (or defaults)

### 2. Craft Transformation Statement
Build using the structure:
"I help [specific ICP from ICP doc] achieve [dream outcome from ICP desires section] through [mechanism from positioning doc] in [realistic timeframe] without [top objection from ICP objections section]."

Validate:
- Names the ICP specifically
- States a measurable outcome
- References the mechanism by name
- Includes a timeframe
- Neutralizes the top objection

### 3. Score the Value Equation
Rate each factor 1-10 with evidence:
- Dream Outcome: How desirable is the promised result?
- Perceived Likelihood: How much proof exists that this works?
- Time Delay (inverted): How quickly do results appear?
- Effort Required (inverted): How much work does the buyer do?

Calculate: (Dream Outcome x Perceived Likelihood) / (Time Delay x Effort Required)

### 4. Design Tier Architecture
For each tier requested:
- Name the tier (not just "Tier 1" — give it a branded name)
- Set the price within the appropriate range
- List all deliverables with outcome framing ("X so the buyer can Y")
- Define who this tier is best for
- Ensure each tier is a complete solution, not a crippled version of higher tiers

### 5. Engineer the Value Stack
For each tier, build bonuses:
- Bonus 1: Speed bonus (accelerates results)
- Bonus 2: Friction bonus (removes specific obstacle)
- Bonus 3: Status bonus (adds social proof or access)
- Bonus 4: Objection bonus (addresses specific ICP objection)
- Bonus 5: Fast-action bonus (rewards decisive buyers)

Verify total perceived value >= 10x price for each tier.

### 6. Design the Guarantee
Match to ICP's dominant limiting belief:
- Worthless → Performance Guarantee (identity/status result)
- Helpless → Completion Guarantee (process completion result)
- Hopeless → ROI/Reversal Guarantee (measurable outcome result)

Requirements: specific result named, time-bound, conditional on reasonable effort, signals creator confidence.

### 7. Build Pricing Rationale (Three Frames)
- **Frame 1 — Inaction Cost:** Calculate 12-month cost of doing nothing
- **Frame 2 — Comparison Stack:** Compare to 3+ more expensive alternatives
- **Frame 3 — ROI Timeline:** Calculate when investment pays for itself

### 8. Design Momentum Loop
Ensure buyer experiences tangible result within 72 hours:
- Identify the quick-win module or action
- Define the specific action (completable in < 30 minutes)
- Define the tangible micro-result
- Confirm it is a leading indicator of the dream outcome

### 9. Build Belief Stack
Identify 3-5 beliefs buyer must hold before purchasing:
- Map each belief's current state
- Design installation method for each (case study, mechanism explanation, testimonial, guarantee, content)

### 10. Map Objection Handling
Pull all 5+ objections from ICP Document:
- Surface objection → Real objection → Response strategy
- Ensure guarantee addresses the top objection directly

### 11. Validate Economics
Calculate under conservative assumptions:
- LTV (Average Price x Purchases x Retention)
- Estimated CAC (based on market research economics section)
- LTV:CAC ratio (must be >= 3:1)
- Gross margin (must be >= 70% for digital)
- Break-even point (units or months)
- Payback period (must be <= 3 months ideal)

### 12. Produce Offer One-Pager
Distill everything into a single-page summary usable for sales conversations or landing page wireframes.

## Output Format

### Offer Document (12 sections)

```
# Offer Document: [Offer Name]
Creator | ICP | Mechanism | Date

1. Transformation Statement
2. Unique Mechanism Integration
3. Value Equation Score (4 factors rated 1-10)
4. Offer Tiers (1-3 tiers with deliverables and outcome framing)
5. Bonus Stack (table with purpose, value, delivery)
6. Guarantee (type, belief addressed, statement, conditions, duration)
7. Pricing Rationale (3 frames: inaction, comparison, ROI)
8. Urgency Element (type, mechanism, authenticity check)
9. Belief Stack (3-5 beliefs with installation methods)
10. Objection Handling (5+ from ICP, surface/real/response)
11. Economics Validation (LTV, CAC, ratio, margin, break-even, payback)
12. Offer One-Pager (headline, subheadline, who, what, bonus, guarantee, price, CTA)
```

## Quality Gates

| Gate | Requirement | Pass Criteria |
|------|------------|---------------|
| ICP Verified | ICP completeness check | ICP exists at `reference/icp.md` with score >= 80 |
| Positioning Verified | Mechanism exists | Positioning doc at `reference/positioning.md` with named mechanism |
| LTV:CAC Ratio | Economics validated | >= 3:1 under conservative assumptions |
| Value Stack Ratio | Perceived value sufficient | >= 10:1 perceived value to price for each tier |
| Guarantee Specific | Not generic | Time-bound + result-specific + matched to limiting belief |
| Guarantee Time-Bound | Duration defined | 30, 60, 90, or 180 days specified |
| Momentum Loop | 72-hour result designed | Quick win action identified, < 30 min, tangible result |
| Transformation Complete | Statement validated | Names ICP, outcome, mechanism, timeframe, and neutralizes objection |
| All Sections Present | Document completeness | All 12 sections have substantive content |
| Outcome Framing | Features connected to outcomes | Every deliverable line item includes "so the buyer can..." |
| Belief Stack | Beliefs mapped | 3-5 beliefs with current state and installation method |
| Economics Calculated | All 6 metrics present | LTV, CAC, ratio, margin, break-even, payback all computed |
