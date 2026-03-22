# Post-Launch Analysis Frameworks

> Complete frameworks for analyzing launch performance, diagnosing funnel issues, evaluating channel ROI, and producing actionable recommendations. These frameworks apply to all five launch types with type-specific benchmarks and considerations.

---

## Framework 1: Funnel Diagnostic Waterfall

### Purpose

The Funnel Diagnostic Waterfall traces the complete customer journey from first touchpoint to purchase, calculating conversion rates between each stage and quantifying the revenue impact of each drop-off. It answers the question: "Where did we lose the most revenue, and why?"

### The Universal Funnel Stages

```
Stage 1: Traffic Source (Impressions / Reach)
    │
    ▼ [Click-through rate]
Stage 2: Landing Page / Opt-in Page (Page Views)
    │
    ▼ [Opt-in rate]
Stage 3: Lead Capture (Email / Phone Collected)
    │
    ▼ [Content consumption rate]
Stage 4: Value Delivery (Webinar attended / VSL watched / Lead magnet consumed)
    │
    ▼ [Sales page visit rate]
Stage 5: Sales Page (Sales page views)
    │
    ▼ [Add-to-cart / Apply rate]
Stage 6: Checkout / Application (Cart / Application started)
    │
    ▼ [Purchase completion rate]
Stage 7: Purchase (Completed transaction)
    │
    ▼ [Refund rate]
Stage 8: Retained Customer (Post-refund-window)
```

### How to Calculate Revenue Impact Per Stage

For each stage transition, calculate:

```
Conversion Rate = (Volume Out / Volume In) x 100

Benchmark Gap = Actual Rate - Benchmark Rate

Revenue Impact of 1% Improvement =
  (Volume In x 0.01) x Downstream Conversion Rate x Average Order Value

Money Left on Table =
  If actual < benchmark:
  (Benchmark Rate - Actual Rate) x Volume In x Downstream Conversion x AOV
```

### Diagnostic Decision Tree

```
Overall launch missed target
│
├── Traffic volume was below plan
│   ├── Ad spend was underspent → Budget allocation issue
│   ├── Ad CTR was below benchmark → Creative or targeting issue
│   └── Organic reach declined → Content quality or algorithm shift
│
├── Traffic volume was on target but conversions were low
│   ├── Landing page conversion below benchmark → Page copy, design, or load speed
│   ├── Webinar show rate below benchmark → Email reminder sequence or scheduling
│   ├── Sales page conversion below benchmark → Offer presentation, price objection, or trust
│   └── Checkout abandonment above benchmark → Technical issues, pricing display, or friction
│
└── Conversions were on target but revenue was below plan
    ├── Average order value was lower → Upsell/downsell failure or wrong tier distribution
    ├── Refund rate was high → Product-market fit, expectation mismatch, or buyer's remorse
    └── Payment failures → Processing issues or billing system problems
```

### Benchmark Ranges by Launch Type

| Metric | Live Launch | Evergreen | Rolling | Flash Sale | Beta |
|--------|-----------|-----------|---------|-----------|------|
| Email open rate | 25-40% | 20-35% | 20-30% | 30-50% | 35-50% |
| Email click rate | 3-7% | 2-5% | 2-4% | 5-10% | 4-8% |
| Landing page opt-in | 25-45% | 20-35% | 15-25% | N/A | 30-50% |
| Webinar show rate | 30-50% | 20-35% | N/A | N/A | 40-60% |
| Sales page conv (warm) | 5-15% | 3-8% | 3-8% | 8-20% | 10-25% |
| Sales page conv (cold) | 1-3% | 0.5-2% | 0.5-2% | N/A | N/A |
| Checkout completion | 70-85% | 65-80% | 65-80% | 80-90% | 85-95% |
| Refund rate | 3-8% | 5-12% | 3-8% | 5-10% | 2-5% |

---

## Framework 2: Email Sequence Autopsy

### Purpose

Analyze every email in the launch sequence individually to identify which messaging angles, subject lines, and CTAs drove conversions -- and which caused disengagement. The email sequence is often the single highest-leverage optimization target.

### Per-Email Analysis Template

For each email in the sequence:

```
Email: [#] - [Subject Line]
Day:   [launch day]
Angle: [announcement / story / proof / objection / urgency / deadline]

Metrics:
  Sends:        [n]
  Opens:        [n] ([x]%)  | Benchmark: [y]%  | Gap: [+/-z]%
  Clicks:       [n] ([x]%)  | Benchmark: [y]%  | Gap: [+/-z]%
  Conversions:  [n]         | Revenue: $[x]
  Unsubscribes: [n] ([x]%)  | Benchmark: <0.5%

Assessment:
  Subject line effectiveness: [Strong / Average / Weak]
  Body copy engagement: [Strong / Average / Weak]
  CTA clarity and placement: [Strong / Average / Weak]

Revenue attribution:
  Direct conversions within 24 hours of send: [n]
  Assist conversions (clicked this, bought later): [n]
```

### Angle Performance Ranking

After analyzing all emails, rank the messaging angles:

| Rank | Angle | Total Conversions | Revenue | Open Rate | Click Rate |
|------|-------|------------------|---------|-----------|-----------|
| 1 | [angle] | [n] | $[x] | [x]% | [x]% |
| 2 | [angle] | [n] | $[x] | [x]% | [x]% |
| ... | | | | | |

### Key Diagnostic Questions

1. **Which email drove the most conversions?** This is the messaging angle to lead with next time.
2. **Which email had the highest unsubscribe rate?** This angle pushed too hard or missed the mark.
3. **Was there a drop-off point in the sequence?** (e.g., email 4 had 50% lower opens than email 3) This indicates fatigue or disinterest at that point.
4. **Did the deadline emails convert as expected?** If not, the urgency mechanism may not be credible.
5. **Did the "story" email outperform the "feature" email?** This tells you whether the audience responds more to narrative or logic.

### Optimization Matrix

| Issue Detected | Root Cause | Recommended Fix | Priority |
|---------------|-----------|----------------|----------|
| Low open rates across sequence | Subject lines are generic | A/B test curiosity-driven vs benefit-driven subjects | High |
| High opens, low clicks | Body copy does not compel action | Strengthen CTA, add urgency, reduce friction | High |
| High clicks, low conversions | Sales page is the bottleneck | Audit sales page (see Funnel Diagnostic) | Critical |
| High unsubscribes on email 3+ | Too many emails too fast | Reduce frequency or increase value ratio | Medium |
| Declining opens over sequence | Email fatigue | Front-load best content, vary angles more aggressively | Medium |
| Final deadline email underperforms | Urgency not believable | Use countdown timers, restate what expires, show proof of closure | High |

---

## Framework 3: Channel ROI Analysis

### Purpose

Determine which channels (email, organic social, paid ads, DMs, live events) generated the highest return per dollar or hour invested. This directly informs budget and effort allocation for the next launch.

### Channel Attribution Model

Use a **last-touch + assist** attribution model:

- **Last-touch attribution:** The channel a customer interacted with immediately before purchasing gets full credit.
- **Assist attribution:** Channels that were in the customer's journey but were not the final touchpoint get partial credit.

### Channel ROI Calculation

```
For paid channels:
  ROI = (Revenue Attributed - Cost) / Cost x 100
  ROAS = Revenue Attributed / Cost
  CPA = Cost / Conversions

For time-invested channels (organic, DMs):
  Effective Hourly Rate = Revenue Attributed / Hours Invested
  Compare to: creator's target hourly rate and paid channel CPA

For email:
  Revenue per Subscriber = Total Email-Attributed Revenue / List Size
  Revenue per Email Sent = Total Email-Attributed Revenue / Total Emails Sent
```

### Channel Comparison Template

| Channel | Investment | Revenue (Last-Touch) | Revenue (Assisted) | ROI | CPA/Hourly Rate | Recommendation |
|---------|-----------|---------------------|-------------------|-----|-----------------|---------------|
| Email | $[tools cost] + [team hours] | $[x] | $[x] | [x]% | $[x] per sale | [Scale/Maintain/Optimize] |
| Meta Ads | $[spend] | $[x] | $[x] | [x]% | $[x] CPA | [Scale/Maintain/Cut] |
| Google Ads | $[spend] | $[x] | $[x] | [x]% | $[x] CPA | [Scale/Maintain/Cut] |
| Organic Social | [hours] valued at $[rate] | $[x] | $[x] | [x]% | $[x]/hr | [Increase/Maintain/Reduce] |
| DM Outreach | [hours] valued at $[rate] | $[x] | $[x] | [x]% | $[x]/hr | [Increase/Maintain/Reduce] |
| Live Events | [hours] + $[costs] | $[x] | $[x] | [x]% | $[x] per attendee | [Continue/Skip/Optimize] |
| Affiliates | $[commissions] | $[x] | $[x] | [x]% | $[x] CPA | [Grow/Maintain/Restructure] |

---

## Framework 4: Customer Profile Comparison

### Purpose

Compare who actually bought versus who the ICP document predicted would buy. Validate or refine the ICP based on real purchase data.

### Analysis Dimensions

| Dimension | ICP Prediction | Actual Buyers | Match? | Implication |
|-----------|---------------|--------------|--------|-------------|
| Age range | [predicted] | [actual] | [Y/N] | |
| Gender split | [predicted] | [actual] | [Y/N] | |
| Income range | [predicted] | [actual] | [Y/N] | |
| Primary pain point | [predicted] | [actual] | [Y/N] | |
| Awareness level at entry | [predicted] | [actual] | [Y/N] | |
| Previous solutions tried | [predicted] | [actual] | [Y/N] | |
| Decision trigger | [predicted] | [actual] | [Y/N] | |
| Primary objection overcome | [predicted] | [actual] | [Y/N] | |

### Objection Analysis

| Objection | Frequency Raised | Overcome? | What Worked | Revenue Impact |
|-----------|-----------------|-----------|------------|---------------|
| [objection 1] | [n times] | [Yes/No/Partial] | [tactic that worked] | $[lost revenue if not overcome] |
| [objection 2] | [n times] | [Yes/No/Partial] | [tactic that worked] | $[lost revenue if not overcome] |

**Key insight:** Objections that were NOT overcome represent the highest-impact improvements for the next launch. Each unresolved objection has a calculable revenue cost.

### Time-to-Purchase Distribution

| Purchase Timing | % of Total Sales | Insight |
|----------------|-----------------|---------|
| Day 1 (immediate) | [x]% | These were pre-sold -- believe installation was complete |
| Days 2-3 | [x]% | These needed the social proof and FAQ emails |
| Mid-window | [x]% | These responded to the live event or deep-dive content |
| Final 48 hours | [x]% | These needed the deadline to decide |
| Final 2 hours | [x]% | These are deadline-dependent -- urgency was critical |

---

## Framework 5: Financial Launch Analysis

### Purpose

Calculate the true profitability of the launch including ALL costs, not just revenue minus ad spend. Many "six-figure launches" are barely profitable when all costs are included.

### Complete Cost Inventory

| Category | Line Item | Amount |
|----------|-----------|--------|
| **Advertising** | Meta ad spend | $[x] |
| | Google ad spend | $[x] |
| | YouTube ad spend | $[x] |
| **Tools & Software** | Funnel builder | $[x] |
| | Email platform | $[x] |
| | Deadline funnel tool | $[x] |
| | Webinar platform | $[x] |
| | Payment processor fees | $[x] |
| **Team** | Copywriter | $[x] |
| | Designer | $[x] |
| | Video editor | $[x] |
| | VA support during launch | $[x] |
| | Sales team commissions | $[x] |
| **Production** | VSL production | $[x] |
| | Ad creative production | $[x] |
| | Sales page design | $[x] |
| **Affiliate** | Affiliate commissions | $[x] |
| **Creator Time** | Hours invested x hourly rate | $[x] |
| | **TOTAL COSTS** | **$[x]** |

### Profitability Calculations

```
Gross Revenue:          $[x]
- Refunds:              $[x]
= Net Revenue:          $[x]

- Total Costs:          $[x]
= Net Profit:           $[x]
= Profit Margin:        [x]%

Unit Economics:
  Revenue per Customer:     $[x]
  Cost per Acquisition:     $[x]
  Profit per Customer:      $[x]
  Break-even Unit Count:    [n] sales

Efficiency Metrics:
  Revenue per Email Subscriber:  $[x]
  Revenue per Dollar of Ad Spend: $[x] (ROAS)
  Revenue per Hour of Creator Time: $[x]
```

### Profitability Benchmarks by Launch Type

| Metric | Live Launch | Evergreen (Monthly) | Flash Sale | Beta |
|--------|-----------|-------------------|-----------|------|
| Target profit margin | 40-60% | 30-50% | 50-70% | 20-40% (intentionally low) |
| Acceptable CPA | <25% of AOV | <33% of AOV | <15% of AOV | N/A |
| Creator hours (reasonable) | 40-80 total | 5-10/month ongoing | 10-20 total | 20-40 total |
| Break-even point | <30% of sales | Month 2-3 | Day 1 | Not primary metric |

---

## Framework 6: Recommendation Prioritization Matrix

### Purpose

Transform raw analysis into prioritized, actionable recommendations. Every recommendation must be data-backed, specific, and include an estimated revenue impact.

### Scoring Criteria

| Dimension | Score 3 (High) | Score 2 (Medium) | Score 1 (Low) |
|-----------|---------------|-----------------|--------------|
| **Impact** | >$10K estimated revenue increase | $3K-$10K | <$3K |
| **Confidence** | Strong data support (statistically significant) | Moderate data support | Directional only |
| **Effort** | <1 week to implement | 1-4 weeks | >4 weeks |

**Priority Score** = (Impact x Confidence) / Effort

### Recommendation Template

```
### Recommendation [#]: [Title]
Priority Score: [x] (Impact: [H/M/L] | Confidence: [H/M/L] | Effort: [H/M/L])

Data:
  [Specific metric that supports this recommendation]
  [Comparison to benchmark or previous launch]

Action:
  [Exactly what to do, who does it, and by when]

Expected Impact:
  $[estimated revenue improvement] based on [calculation methodology]

Risk:
  [What could go wrong or what this recommendation does NOT address]
```

### Standard Recommendation Categories

| Category | Common Recommendations |
|----------|----------------------|
| Funnel optimization | Fix leakiest stage, improve checkout completion, add urgency elements |
| Email sequence | Rewrite underperforming emails, reorder sequence, adjust frequency |
| Ad strategy | Reallocate budget to winning creatives/audiences, kill underperformers |
| Sales page | Update headline, add testimonials, improve CTA placement, add FAQ section |
| DM outreach | Expand outreach volume, improve message templates, add follow-up cadence |
| Pricing/offer | Adjust price point, add/remove bonuses, improve guarantee |
| Audience | Grow list before next launch, improve lead quality, segment more precisely |
| Operations | Fix technical issues, improve tracking, automate manual processes |

---

## Framework 7: Launch-Over-Launch Trend Analysis

### Purpose

Compare current launch performance against previous launches to identify whether the business is improving, plateauing, or declining.

### Trend Tracking Template

| Metric | Launch 1 | Launch 2 | Launch 3 (Current) | Trend | Assessment |
|--------|----------|----------|-------------------|-------|-----------|
| Revenue | $[x] | $[x] | $[x] | [up/down/flat] | [improving/concerning/critical] |
| Units sold | [n] | [n] | [n] | | |
| List size at launch | [n] | [n] | [n] | | |
| Revenue per subscriber | $[x] | $[x] | $[x] | | |
| Overall conversion rate | [x]% | [x]% | [x]% | | |
| CPA | $[x] | $[x] | $[x] | | |
| Profit margin | [x]% | [x]% | [x]% | | |
| Refund rate | [x]% | [x]% | [x]% | | |

### Trend Interpretation

| Pattern | What It Means | Recommended Action |
|---------|-------------|-------------------|
| Revenue up, conversion rate up | Offer and messaging improving | Continue current strategy, scale traffic |
| Revenue up, conversion rate flat | Growing from list size, not efficiency | Focus on conversion optimization |
| Revenue flat, list growing | Conversion rate declining -- messaging fatigue | Refresh offer angle, update proof, test new hooks |
| Revenue declining | Audience saturation or offer exhaustion | Major refresh: new mechanism angle, new audience segment, or new offer |
| Refund rate increasing | Product-market fit eroding | Audit onboarding, delivery, and expectation-setting |
| CPA increasing | Ad creative fatigue or market saturation | New creatives, new audiences, or new channels |
