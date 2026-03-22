# Financial Analysis Frameworks

> Complete frameworks for revenue reporting, retention analysis, financial modeling, and budget optimization. Each framework includes formulas, calculation methods, templates, and interpretation guidance for creator/coaching businesses.

---

## Framework 1: Revenue Report

### Purpose

Produce a comprehensive financial snapshot that goes beyond top-line revenue to reveal profitability by product, channel, and customer segment. This is the primary recurring financial deliverable.

### Revenue Report Structure

#### Section 1: Financial Health Scorecard

The 60-second executive read. Green/yellow/red gives an instant assessment.

| Dimension | Green | Yellow | Red | Current | Previous | Trend |
|-----------|-------|--------|-----|---------|----------|-------|
| Revenue Growth | >10% MoM | 3-10% | <3% or declining | | | |
| Profit Margin | >40% | 20-40% | <20% | | | |
| LTV:CAC | >3:1 | 2-3:1 | <2:1 | | | |
| Churn Rate | <5% monthly | 5-8% | >8% | | | |
| Cash Reserves | >3 months runway | 1-3 months | <1 month | | | |
| Refund Rate | <3% | 3-8% | >8% | | | |

#### Section 2: Revenue Breakdown

```
REVENUE WATERFALL

Gross Revenue:                    $[x]
  - Refunds:                      $[x] ([x]% refund rate)
  = Net Revenue:                  $[x]

  Revenue by Type:
    One-time (launches, courses):  $[x] ([x]% of total)
    Recurring (memberships, retainers): $[x] ([x]% of total)
    Expansion (upsells, upgrades): $[x] ([x]% of total)

  Revenue by Product:
    [Product A]:                   $[x] ([x]% of total, [n] units)
    [Product B]:                   $[x] ([x]% of total, [n] units)
    [Product C]:                   $[x] ([x]% of total, [n] units)

  Revenue by Channel (attribution):
    Email:                         $[x] ([x]% of total)
    Paid Ads:                      $[x] ([x]% of total)
    Organic Social:                $[x] ([x]% of total)
    DM Outreach:                   $[x] ([x]% of total)
    Referrals:                     $[x] ([x]% of total)
    Affiliates:                    $[x] ([x]% of total)
```

#### Section 3: Cost Structure

```
COST BREAKDOWN

Total Costs:                      $[x]

  Fixed Costs (Monthly):
    Team salaries + benefits:      $[x]
    Software/tools:                $[x]
    Office/coworking:              $[x]
    Insurance/legal:               $[x]
    Subtotal Fixed:                $[x]

  Variable Costs:
    Ad spend:                      $[x]
    Payment processor fees:        $[x] (typically 2.9% + $0.30 per transaction)
    Affiliate commissions:         $[x]
    Sales commissions:             $[x]
    Contractor payments:           $[x]
    Subtotal Variable:             $[x]

  One-time Costs:
    [Specific items]:              $[x]

NET PROFIT:                        $[x]
PROFIT MARGIN:                     [x]%
```

#### Section 4: Unit Economics

**Core Formulas:**

```
Customer Acquisition Cost (CAC):
  CAC = Total Acquisition Costs / New Customers Acquired
  Total Acquisition Costs = Ad Spend + Sales Team Cost + Marketing Tools +
                           Content Production + Affiliate Commissions

  Example:
  ($4,000 ads + $5,000 sales team + $500 tools + $1,000 content + $600 affiliates)
  / 20 new customers = $555 CAC

Lifetime Value (LTV):
  For subscription: LTV = ARPC x (1 / Monthly Churn Rate)
  For one-time + upsell: LTV = Initial Purchase + (Upsell Rate x Upsell Value)

  Example (subscription):
  ARPC = $200/month, Monthly Churn = 5%
  LTV = $200 x (1 / 0.05) = $200 x 20 = $4,000

  Example (one-time + upsell):
  Initial = $2,000, Upsell Rate = 30%, Upsell Value = $5,000
  LTV = $2,000 + (0.30 x $5,000) = $3,500

LTV:CAC Ratio:
  Ratio = LTV / CAC

  Example: $4,000 / $555 = 7.2:1

  Interpretation:
    < 1:1 -- Losing money on every customer (critical)
    1-2:1 -- Barely sustainable (red)
    2-3:1 -- Functional but fragile (yellow)
    3-5:1 -- Healthy and scalable (green)
    > 5:1 -- Underinvesting in growth (increase spend)

Payback Period:
  Payback = CAC / Monthly Revenue Per Customer

  Example: $555 / $200 = 2.8 months

  Interpretation:
    < 3 months -- Excellent (fast cash recycle)
    3-6 months -- Good (manageable cash flow)
    6-12 months -- Concerning (cash flow risk)
    > 12 months -- Critical (need financing or pricing change)

Gross Margin:
  Margin = (Revenue - COGS) / Revenue x 100

  For digital products, COGS includes:
  - Platform hosting costs
  - Payment processing fees
  - Direct delivery costs (if any)

  Benchmark: 70-85% for digital products, 50-70% for service-based
```

---

## Framework 2: Retention Analysis

### Purpose

Analyze client retention patterns to identify systemic issues, predict churn, and calculate the revenue impact of retention improvements.

### Cohort Retention Analysis

**The Cohort Table:**

Track each monthly signup cohort and measure what percentage remains active at each subsequent month.

```
         Month 0  Month 1  Month 2  Month 3  Month 6  Month 12
Jan '26   100%     88%      79%      72%      58%      41%
Feb '26   100%     85%      74%      68%      --       --
Mar '26   100%     90%      82%      --       --       --
Apr '26   100%     87%      --       --       --       --
```

**How to Read the Cohort Table:**
- Row = signup cohort (when they joined)
- Column = months since joining
- Value = % of original cohort still active

**Key Questions:**
1. Are newer cohorts retaining better or worse than older ones? (Improving = product getting better. Declining = product-market fit eroding.)
2. Where is the steepest drop? (Month 1 = onboarding failure. Month 3 = results failure. Month 6+ = value plateau.)
3. Is there a "floor"? (A percentage that stabilizes = core loyal segment. No floor = continuous leak.)

### Churn Analysis

**Churn Calculation Methods:**

```
Simple Monthly Churn:
  Churn Rate = Customers Lost / Customers at Start of Month x 100

  Example: 5 lost / 100 start = 5% monthly churn

Net Revenue Churn:
  Net Churn = (Lost MRR - Expansion MRR) / Starting MRR x 100

  Example: ($2,000 lost - $800 expansion) / $40,000 start = 3% net churn

  If expansion > lost: NEGATIVE net churn (the holy grail -- existing customers
  are growing faster than they're leaving)

Annual Equivalent:
  Annual Churn = 1 - (1 - Monthly Churn)^12

  Example: 5% monthly = 1 - (0.95)^12 = 46% annual churn
  Example: 3% monthly = 1 - (0.97)^12 = 31% annual churn
```

**Churn Reason Categorization:**

| Category | Definition | Controllable? | Fix |
|----------|-----------|--------------|-----|
| Results | Client did not get the outcome they expected | Yes | Improve product, onboarding, success tracking |
| Fit | Product was wrong for this client (should not have been sold to them) | Partially | Improve qualification in sales process |
| Financial | Client cannot afford to continue | Partially | Offer pause option, downgrade tier |
| Competition | Client switched to a competitor | Yes | Improve differentiation, add switching costs (value, not friction) |
| Life | Circumstances changed (moved, health, etc.) | No | Accept as natural churn (3-5% is normal) |
| Involuntary | Payment failed and was not recovered | Yes | Improve dunning sequence, pre-emptive card update reminders |

### Revenue Impact of Retention Improvements

**The Retention Leverage Calculation:**

```
Current state:
  100 customers, $200/month each, 5% monthly churn
  12-month revenue: $146,410

Improved state (3% monthly churn):
  100 customers, $200/month each, 3% monthly churn
  12-month revenue: $166,896

Revenue impact of 2% churn reduction: +$20,486 per 100 customers per year

If you have 500 customers: +$102,430 additional annual revenue
Cost to achieve (dedicated Customer Success hire): ~$48,000/year
ROI on retention investment: 113%
```

---

## Framework 3: Financial Forecasting

### Purpose

Project revenue 3, 6, and 12 months forward using multiple models to inform hiring decisions, budget allocation, and growth strategy.

### Model 1: Linear Projection (Simplest)

```
Formula:
  Projected Revenue (Month N) = Current Revenue x (1 + Average Monthly Growth Rate) ^ N

  Average Monthly Growth Rate = Geometric mean of last 3 months

  Example:
  Current MRR: $40,000
  Last 3 months growth: +8%, +12%, +6%
  Average growth: (1.08 x 1.12 x 1.06)^(1/3) - 1 = 8.6%

  Month +3: $40,000 x (1.086)^3 = $51,189
  Month +6: $40,000 x (1.086)^6 = $65,488
  Month +12: $40,000 x (1.086)^12 = $107,157

Scenarios:
  Conservative (80% confidence): Use lowest recent monthly growth rate
  Likely (50% confidence): Use average
  Optimistic (20% confidence): Use highest recent monthly growth rate
```

### Model 2: Cohort-Based Projection (Most Accurate for Subscription)

```
Formula:
  Future MRR = Sum of (each active cohort's expected revenue at Month N)

  For each cohort:
    Expected Revenue at Month N = Cohort Size x ARPC x Retention Rate at Month N

  Example:
  Jan cohort: 30 members x $200 x 72% retention at Month 3 = $4,320
  Feb cohort: 25 members x $200 x 79% retention at Month 2 = $3,950
  Mar cohort: 35 members x $200 x 88% retention at Month 1 = $6,160
  Apr cohort (projected): 30 new x $200 x 100% (Month 0) = $6,000
  Total projected April MRR: $20,430

  This model accounts for:
  - Different cohort sizes (growth in new signups)
  - Cohort-specific retention curves
  - Seasonal variation in new signups
```

### Model 3: Seasonal Adjustment

```
Formula:
  Projected Revenue = Base Projection x Seasonal Multiplier

  Seasonal multipliers derived from historical data:
  Jan: 1.15 (New Year energy)
  Feb: 0.95 (post-New Year drop)
  Mar: 1.00 (baseline)
  Apr: 1.05 (spring energy)
  May: 1.00
  Jun: 0.90 (summer approaching)
  Jul: 0.85 (summer low)
  Aug: 0.85 (summer low)
  Sep: 1.10 (back to business)
  Oct: 1.05
  Nov: 1.15 (Black Friday, holiday purchases)
  Dec: 0.90 (holiday distraction)

  These are defaults for info/education businesses. Actual multipliers
  should be calculated from 12+ months of the specific business's data.
```

### Forecast Output Template

| Scenario | Month +1 | Month +2 | Month +3 | Month +6 | Month +12 |
|----------|----------|----------|----------|----------|-----------|
| Conservative | $[x] | $[x] | $[x] | $[x] | $[x] |
| Likely | $[x] | $[x] | $[x] | $[x] | $[x] |
| Optimistic | $[x] | $[x] | $[x] | $[x] | $[x] |

---

## Framework 4: Channel ROI Analysis

### Purpose

Determine which acquisition and marketing channels produce the highest return per dollar invested, enabling evidence-based budget allocation.

### Channel ROI Calculation

```
For each channel:

  Revenue Attributed = Sum of revenue from customers acquired via this channel
  Total Investment = Ad spend + team time (at hourly rate) + tools + creative production
  ROI = (Revenue Attributed - Total Investment) / Total Investment x 100
  ROAS = Revenue Attributed / Ad Spend (for paid channels only)
  CPA = Total Investment / Customers Acquired
  Payback Period = CPA / Monthly Revenue Per Customer

  Channel-Specific CAC:
    Meta Ads CAC = (Meta Spend + Proportion of Team Time) / Meta-Attributed Customers
    Organic CAC = (Content Production Cost + Creator Time) / Organic-Attributed Customers
    Referral CAC = (Incentive Cost) / Referral-Attributed Customers
```

### Budget Allocation Framework

```
70/20/10 Rule:

  70% of growth budget → Proven channels
  (Consistent positive ROI for 3+ months, understood economics)

  20% of growth budget → Promising channels
  (Early positive signals, needs scale testing)

  10% of growth budget → Experimental channels
  (Unproven but strategically interesting)

Reallocation triggers:
  - Channel has negative ROI for 3+ months → Cut (unless strategic)
  - Channel has ROAS > 3x for 3+ months → Scale by 20%
  - Experimental channel shows positive ROI in first 60 days → Promote to Promising
  - Promising channel shows consistent ROAS > 2x for 90 days → Promote to Proven
```

### Channel Comparison Template

| Channel | Monthly Spend | Revenue | ROI | CPA | Payback | Customers | Category | Action |
|---------|-------------|---------|-----|-----|---------|-----------|----------|--------|
| Meta Ads | $[x] | $[x] | [x]% | $[x] | [x] mo | [n] | [Proven/Promising/Experimental] | [Scale/Maintain/Cut] |
| YouTube Ads | $[x] | $[x] | [x]% | $[x] | [x] mo | [n] | | |
| Organic (IG) | $[x]* | $[x] | [x]% | $[x] | [x] mo | [n] | | |
| Email | $[x] | $[x] | [x]% | $[x] | [x] mo | [n] | | |
| DM Outreach | $[x]* | $[x] | [x]% | $[x] | [x] mo | [n] | | |
| Referrals | $[x] | $[x] | [x]% | $[x] | [x] mo | [n] | | |
| Affiliates | $[x] | $[x] | [x]% | $[x] | [x] mo | [n] | | |

*Organic and DM costs calculated as team time x hourly rate + tool costs

---

## Framework 5: Break-Even Analysis

### Purpose

Determine exactly how many customers or how much revenue is needed to cover all costs, and how long it takes to reach profitability.

### Break-Even Calculation

```
Fixed Costs (Monthly):
  Team:           $[x]
  Tools:          $[x]
  Office:         $[x]
  Insurance:      $[x]
  Total Fixed:    $[x]

Variable Cost Per Customer:
  Payment processing: $[x]
  Delivery cost:      $[x]
  Commission:         $[x]
  Total Variable:     $[x] per customer

Revenue Per Customer (Monthly):  $[x]

Contribution Margin Per Customer = Revenue - Variable Cost = $[x]

Break-Even Customers = Fixed Costs / Contribution Margin = [n] customers

Break-Even Revenue = Break-Even Customers x Revenue Per Customer = $[x]

Current Customers: [n]
Gap to Break-Even: [n] customers / $[x] revenue
Months to Break-Even at Current Growth: [n] months
```

---

## Framework 6: Cash Flow Projection

### Purpose

Ensure the business can fund its growth operations. Revenue is not cash -- payment delays, refund windows, and variable expenses create cash flow timing mismatches.

### Cash Flow Timing Considerations

| Revenue Type | Cash Timing | Note |
|-------------|-----------|------|
| Course/program (one-time) | Immediate (minus processor hold) | Stripe: 2-day rolling payout |
| Payment plan | Split over 2-6 months | Account for default rate (typically 5-10%) |
| Subscription | Monthly on billing date | Accounts for failed payments |
| High-ticket coaching | May include deposit + installments | Front-loaded cash flow |

### Cash Flow Template

```
MONTHLY CASH FLOW PROJECTION

              Month 1    Month 2    Month 3
INFLOWS:
  New sales    $[x]       $[x]       $[x]
  Recurring    $[x]       $[x]       $[x]
  Installments $[x]       $[x]       $[x]
  Total In:    $[x]       $[x]       $[x]

OUTFLOWS:
  Team         $[x]       $[x]       $[x]
  Ads          $[x]       $[x]       $[x]
  Tools        $[x]       $[x]       $[x]
  Contractors  $[x]       $[x]       $[x]
  Refunds      $[x]       $[x]       $[x]
  Taxes (est.) $[x]       $[x]       $[x]
  Total Out:   $[x]       $[x]       $[x]

NET CASH:      $[x]       $[x]       $[x]
CUMULATIVE:    $[x]       $[x]       $[x]
RUNWAY:        [x] months [x] months [x] months
```

### Cash Flow Rules

1. **Maintain 3+ months of operating expenses in reserve.** This is the minimum safety buffer.
2. **Fund ad spend from revenue, not savings.** If you cannot fund your ad spend from this month's revenue, your unit economics may not support scaling.
3. **Account for payment plan defaults.** At least 5-10% of payment plan subscribers will default. Build this into projections.
4. **Tax reservation.** Set aside 25-30% of net profit for tax obligations. This is not optional and not available for reinvestment.
5. **Seasonal cash planning.** If revenue is seasonal (as most creator businesses are), ensure reserves can cover low months without cutting essential spending.
