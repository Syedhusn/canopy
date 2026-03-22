# Evergreen Launch Plan: FitFoundation Express -- 8-Week Online Program

**Launch Type:** Evergreen (always-on automated funnel)
**Setup Period:** March 1-21, 2026 (3 weeks build + test)
**Go Live Date:** March 22, 2026
**Revenue Target:** $20,000/month steady state (Month 3+)
**Unit Target:** 20 sales/month at $997 each
**Creator:** Coach Marcus Rivera
**Niche:** Online fitness coaching for busy professionals (35-50) who want to lose 20-40lbs

---

## Revenue Math

```
Monthly Revenue Target:    $20,000
Price Per Unit:            $997
Units Needed Per Month:    ~20

Funnel Conversion Rate (target): 2.5% of opt-ins become buyers
Opt-ins Needed Per Month:  800

Landing Page Opt-in Rate:  35%
Landing Page Visitors:     2,286/month (~76/day

Ad CTR (target):           1.5%
Ad Impressions Needed:     152,400/month (~5,080/day)

Cost Per Opt-in (target):  $5.00
Monthly Ad Budget:         $4,000

Expected ROAS:             $20,000 / $4,000 = 5.0x
Target CPA:                $4,000 / 20 = $200

Profitability:
  Revenue:        $20,000
  Ad Spend:       $4,000
  Tool Costs:     $500 (funnel, email, deadline, webinar)
  Editor:         $800 (monthly retainer for ad creative refresh)
  Total Costs:    $5,300
  Net Profit:     $14,700 (73.5% margin)
```

---

## System Architecture

```
TRAFFIC SOURCES
├── Meta Ads (Primary): $3,000/month
│   ├── Cold traffic: Lookalike audiences (past buyers, engaged followers)
│   ├── Interest targeting: Fitness + Executive/Professional interests
│   └── Retargeting: Funnel visitors who did not convert
├── YouTube Ads (Secondary): $800/month
│   └── In-stream ads on fitness/productivity videos
└── Organic (Supplementary): Instagram + YouTube content
    └── Link in bio → opt-in page

FUNNEL FLOW
Step 1: Opt-in Page
  URL: fitfoundation.com/free-training
  Offer: "The Metabolic Momentum Method: 3 Steps to Lose Your First 10lbs
          Without Crash Dieting or Living at the Gym"
  Fields: First name, email
  Conversion target: 35%

Step 2: Thank You Page + Webinar Access
  URL: fitfoundation.com/training
  Auto-play: 45-minute pre-recorded webinar
  Content: Teach the 3-step framework, demonstrate mechanism, pitch at minute 32
  CTA: "Apply for FitFoundation Express" button below video
  Pixel: Track webinar start, 25% watched, 50% watched, 75% watched, CTA clicked

Step 3: Application / Sales Page
  URL: fitfoundation.com/apply
  Deadline funnel: 72-hour countdown unique to each visitor (starts on first visit)
  Content: Full sales page with offer details, testimonials, FAQ, guarantee
  CTA: "Enroll Now" → Checkout
  Pixel: Track page view, scroll depth, CTA clicks

Step 4: Checkout Page
  URL: fitfoundation.com/checkout
  Options: $997 one-time OR $397 x 3 monthly payments
  Order bump: "Meal Prep Mastery Guide" -- $47 (30% take rate expected)
  Pixel: Track checkout initiated, checkout completed

Step 5: Thank You / Onboarding
  URL: fitfoundation.com/welcome
  Content: Login credentials, onboarding video, first assignment
  Trigger: Onboarding email sequence starts
```

---

## Setup Timeline

### Week 1: Build (March 1-7)

| Day | Action | Owner | Deliverable |
|-----|--------|-------|------------|
| 1 | Record 45-minute evergreen webinar using Metabolic Momentum Method framework | Marcus | Raw webinar recording |
| 2 | Edit webinar: add lower thirds, slides, testimonial overlays, CTA graphics | Editor | Final webinar file |
| 3 | Build opt-in page (headline, subheadline, bullet benefits, opt-in form) | VA / Funnel Architect | Live page at fitfoundation.com/free-training |
| 4 | Build thank-you/webinar page with auto-play and CTA button | VA / Funnel Architect | Live page at fitfoundation.com/training |
| 5 | Build application/sales page with full copy, testimonials, FAQ, guarantee | Funnel Architect | Live page at fitfoundation.com/apply |
| 6 | Build checkout page with payment options and order bump | VA | Live page at fitfoundation.com/checkout |
| 7 | Set up deadline funnel (72-hour unique timer per visitor) | VA | Deadline integration tested |

### Week 2: Email Sequence + Ads (March 8-14)

| Day | Action | Owner | Deliverable |
|-----|--------|-------|------------|
| 8 | Write 7-email evergreen sequence (see below) | Email Strategist | 7 emails drafted |
| 9 | Load emails into ConvertKit with automation triggers | VA | Automation live (inactive) |
| 10 | Set up retargeting pixel on all funnel pages | VA | Pixel verified firing |
| 11 | Create 4 static ad images + 2 video ad clips (15-second and 30-second) | Editor + Designer | 6 ad creatives ready |
| 12 | Build ad campaigns in Meta Ads Manager (3 ad sets: cold, lookalike, retarget) | Marketing Manager | Campaigns built (paused) |
| 13 | Build YouTube ad campaign (in-stream, targeting fitness + professional interests) | Marketing Manager | Campaign built (paused) |
| 14 | Write retarget email sequence (3 emails for webinar watchers who did not apply) | Email Strategist | Retarget sequence loaded |

### Week 3: Test + Launch (March 15-22)

| Day | Action | Owner | Deliverable |
|-----|--------|-------|------------|
| 15 | Full funnel test #1: Marcus opts in, watches webinar, applies, checks out | Marcus | Bug list documented |
| 16 | Fix any issues from test #1 | VA | All issues resolved |
| 17 | Full funnel test #2: VA opts in with different email, complete journey | VA | Confirm clean journey |
| 18 | Full funnel test #3: Test on mobile device (iOS + Android) | VA + Marcus | Mobile experience verified |
| 19 | Activate email automation sequence (test mode with 5 internal test leads) | VA | Emails arriving on schedule |
| 20 | Launch Meta ads at $100/day test budget (split across 3 ad sets) | Marketing Manager | Ads live, initial data collecting |
| 21 | Launch YouTube ads at $25/day test budget | Marketing Manager | Ads live |
| 22 | GO LIVE: Monitor first 24 hours of real traffic through funnel | All | First opt-ins arriving |

---

## Email Sequence Architecture

### Main Evergreen Sequence (7 Emails Over 7 Days)

| Email | Day | Time | Subject Line | Angle | CTA |
|-------|-----|------|-------------|-------|-----|
| 1 | 0 | Immediate | "Your free training is ready (watch now)" | Delivery + expectations | Watch the webinar |
| 2 | 1 | 10am | "The lie the fitness industry tells busy professionals" | Pain agitation + mechanism intro | Watch the webinar (if not watched) |
| 3 | 2 | 10am | "How David lost 42lbs without giving up client dinners" | Client story + social proof | Watch webinar + visit sales page |
| 4 | 3 | 10am | "The Metabolic Momentum Method: why this works when diets don't" | Teaching + belief installation | Visit sales page |
| 5 | 4 | 10am | "FitFoundation Express: everything you get (full breakdown)" | Offer presentation + value stack | Apply / Enroll (deadline starts or continues) |
| 6 | 5 | 10am | "But will this work for ME?" (the 3 most common questions) | Objection handling + FAQ | Apply / Enroll |
| 7 | 6 | 10am | "Your access window closes tomorrow at [TIME]" | Deadline urgency + final testimonial | Apply / Enroll (deadline closing) |

### Retarget Sequence (For Webinar Watchers Who Did Not Apply -- 3 Emails)

| Email | Day After Webinar | Subject Line | Angle |
|-------|------------------|-------------|-------|
| R1 | +3 | "Did you catch this part of the training?" | Re-engage with key webinar moment |
| R2 | +5 | "Quick question about the training..." | Personal-feeling check-in |
| R3 | +7 | "Last chance: your special access expires tonight" | Final deadline push |

### Post-Deadline Sequence (For Non-Converters -- Nurture Loop)

| Email | Timing | Subject Line | Purpose |
|-------|--------|-------------|---------|
| N1 | +1 day after deadline | "No hard feelings -- here's something valuable" | Deliver free value, preserve relationship |
| N2 | +7 days | Educational content (blog post or YouTube link) | Continue nurturing |
| N3 | +14 days | Another client story | Keep belief installation going |
| N4 | +30 days | Re-entry offer: new lead magnet → restart funnel sequence | Re-enter funnel with new angle |

---

## Ad Creative Strategy

### Creative Rotation (Refresh Every 14-21 Days)

| Creative # | Format | Hook | Visual |
|-----------|--------|------|--------|
| 1 | Static image | "Busy professional? Here's how 200+ executives lost 20+lbs" | Before/after client photo (with permission) |
| 2 | Static image | "You don't need more willpower. You need the right system." | Marcus coaching a client (professional photo) |
| 3 | Video (15s) | "In 90 seconds, I'll show you why your diet keeps failing" | Marcus talking to camera, fast cuts |
| 4 | Video (30s) | "David was a VP working 60 hours a week. Here's what happened in 12 weeks." | David's before/after + Marcus voiceover |
| 5 | Static carousel | "3 fitness lies killing your results" (slide 1 of 3) | Educational carousel style |
| 6 | Video (15s) | "The one thing I changed that helped 200+ professionals lose weight" | Marcus, casual setting, direct to camera |

### Audience Targeting

| Ad Set | Audience | Budget Split | Expected CPA |
|--------|----------|-------------|-------------|
| Cold - Interests | Fitness + Executive/Business interests, age 30-55 | 40% ($1,200/mo) | $250-$350 |
| Cold - Lookalike | 1% LAL of past purchasers + 1% LAL of email list | 35% ($1,050/mo) | $150-$250 |
| Retarget | Funnel visitors (opt-in but not purchased) within 14 days | 25% ($750/mo) | $75-$150 |

---

## Optimization Cadence

| Frequency | Action | Owner | Decision Criteria |
|-----------|--------|-------|------------------|
| Daily | Check ad spend, CPA, and funnel opt-ins | Marketing Manager | Kill any ad set with CPA > $400 after 3 days |
| Weekly | Review email sequence metrics (per-email open/click/conversion) | Email Strategist | Flag any email with open rate < 20% or click rate < 2% |
| Bi-weekly | Refresh 2 ad creatives (swap lowest performers) | Editor + Designer | Replace creatives with CTR < 0.8% |
| Monthly | Full funnel audit: stage-by-stage conversion analysis | Launch Analyst | Report with optimization recommendations |
| Quarterly | Major refresh: re-record webinar intro, update all testimonials, review pricing | Marcus + Team | Reset creative fatigue |

---

## Key Metrics Dashboard (Monthly Tracking)

| Metric | Month 1 Target | Month 2 Target | Month 3+ Target |
|--------|---------------|---------------|----------------|
| Ad Spend | $3,000 | $3,500 | $4,000 |
| Opt-ins | 500 | 650 | 800 |
| Cost Per Opt-in | $6.00 | $5.40 | $5.00 |
| Webinar Watch Rate (>50%) | 30% | 35% | 40% |
| Application Rate | 8% | 10% | 12% |
| Close Rate (app to sale) | 15% | 20% | 25% |
| Sales | 6 | 13 | 20 |
| Revenue | $5,982 | $12,961 | $19,940 |
| ROAS | 2.0x | 3.7x | 5.0x |
| Net Profit | $1,682 | $8,161 | $14,640 |

**Note:** Month 1 is a learning period. Expect lower ROAS as ads optimize and the algorithm learns. Do not panic-cut budget in Month 1 unless CPA exceeds 2x target for 7+ consecutive days.

---

## Contingency Triggers

| Trigger | Threshold | Action |
|---------|----------|--------|
| CPA above $400 for 5+ days | Immediate | Pause worst ad set, test new creative, review landing page |
| Opt-in rate below 25% | After 500 visitors | A/B test new headline, review page load speed, test mobile experience |
| Webinar drop-off before pitch (min 32) | >70% drop before pitch | Shorten webinar, move pitch earlier, add pattern interrupts |
| Email sequence conversion < 1% | After 200 subscribers complete sequence | Rewrite underperforming emails, test subject lines, review CTA placement |
| Refund rate above 10% | After 20+ sales | Audit onboarding, survey refunders, review expectation-setting in sales page |
| ROAS below 2x for 30 days | End of Month 2 | Pause ads, audit entire funnel, consider offer repositioning |
