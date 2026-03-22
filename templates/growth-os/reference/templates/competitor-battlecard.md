# Competitor Battlecard -- Output Template

> Signal: `S=(data, report, inform, markdown, competitor-battlecard)`
>
> A focused intelligence brief on a single competitor. Used to inform
> positioning decisions, identify exploitable gaps, and arm sales
> conversations with specific counter-arguments. One battlecard per
> competitor. Multiple battlecards aggregate into the competitive
> landscape section of the Market Research Brief.

## When to Use This Template

Use this template when:
- The `/analyze-competitor <name>` skill is invoked
- A specific competitor needs detailed analysis beyond what the Market Research Brief provides
- The creator encounters a new competitor during sales or marketing
- Competitive landscape has shifted and individual competitor data needs updating

Do NOT use this template when:
- The request is for a full market overview (use `market-research-brief.md` Section 5)
- No Market Research Brief exists and the creator has no basic market context (run `/research` first -- the battlecard needs market context to assess threat level)
- The "competitor" is in a completely different category and does not compete for the same buyer dollars

---

## Template Structure

### Section 1: Competitor Overview

**Purpose**: Quick-reference identification. An agent or creator loading this battlecard should know exactly who this competitor is within 30 seconds of reading this section.

**Contents**:
- **Name**: Full company or personal brand name
- **URL**: Primary website
- **Founded / Active Since**: When they entered this market (if discoverable)
- **Positioning Statement**: How they describe themselves. Pull from their website hero section, about page, or primary ad copy. Use their exact words -- do not paraphrase.
- **Target Market**: Who they claim to serve. Be specific about their ICP as they define it.
- **Pricing**: All known price points, tiers, and models. Include:
  - Tier names and prices
  - Delivery model per tier (DIY / DWY / DFY)
  - Any known discounts, payment plans, or promotional pricing
  - If pricing is not public, state "Pricing not publicly listed -- requires sales call / inquiry" and note any estimates from reviews or forums.
- **Primary Channels**: Where they acquire customers (paid ads, organic content, webinars, podcast, affiliates, etc.)
- **Estimated Scale**: Any discoverable metrics -- monthly traffic (SimilarWeb), social following, team size, testimonial volume, years in business, number of clients claimed.

**Rules**:
- ALWAYS include pricing. This is the single most valuable competitive intelligence data point. If not publicly available, note the gap and include any estimated data from reviews.
- NEVER use the competitor's marketing language uncritically. Capture their positioning in their words, but do not endorse it. The analysis (strengths/weaknesses) provides the critical lens.
- Positioning statement must be their ACTUAL words from their site or ads, in quotes.
- Every data point must cite its source (website URL, ad library, review platform, social profile)

---

### Section 2: Strengths

**Purpose**: Honest assessment of what this competitor does well. Understanding their strengths prevents underestimating them and helps the creator avoid positioning against their strongest points.

**Contents**:
- 3-5 evidence-based strengths, each with:
  - **Strength**: What they do well (e.g., "Strong social proof with 500+ video testimonials")
  - **Evidence**: Specific, verifiable proof. Sources include:
    - Positive reviews (platforms, star ratings, specific quotes)
    - Traffic and engagement data (monthly visits, social engagement rates)
    - Ad longevity (ads running 30+ days in Meta Ad Library = profitable)
    - Community metrics (group size, post frequency, member engagement)
    - Content quality and consistency (publication frequency, production value)
    - Social proof volume (testimonial count, case study depth, named logos)
  - **Implication for Creator**: What this means for competitive strategy. (e.g., "Do not compete on testimonial volume. Compete on testimonial specificity -- their testimonials are generic, ours should show exact metrics from similar businesses.")

**Rules**:
- EVERY strength must be supported by specific evidence. "They're well-known" is not a strength. "They have 240K YouTube subscribers and average 15K views per video in this niche" is.
- NEVER omit strengths to make the competitive picture look easier. Honest threat assessment prevents strategic blunders.
- ALWAYS include the implication for the creator -- a strength without strategic context is just a fact
- Minimum 3 strengths per competitor. If fewer than 3 are discoverable, the competitor may not be significant enough for a full battlecard.

---

### Section 3: Weaknesses

**Purpose**: Identify exploitable vulnerabilities. These gaps become the creator's positioning opportunities and counter-arguments in sales conversations.

**Contents**:
- 3-5 evidence-based weaknesses, each with:
  - **Weakness**: What they do poorly or fail to deliver (e.g., "No ongoing support after purchase -- customers report feeling abandoned")
  - **Evidence**: Specific, verifiable proof. Sources include:
    - 1-star and 2-star reviews (extract verbatim complaints, count frequency by theme)
    - Reddit/forum complaints (link to threads where possible)
    - Feature gaps visible in their offer (what's missing from their deliverables)
    - Customer churn signals (complaints about cancellation, refund requests)
    - Content gaps (topics they avoid, questions they don't answer)
    - Delivery failures (broken links, outdated content, unresponsive support -- only if documented)
  - **Exploitable Gap**: How the creator can specifically capitalize on this weakness. (e.g., "Our offer includes 90 days of post-purchase implementation support specifically because their buyers report feeling abandoned. This becomes a key differentiator in head-to-head comparisons.")
  - **Verbatim Complaint** (minimum 1 per weakness): An actual quote from a dissatisfied customer, with source attribution.

**Rules**:
- EVERY weakness must include at least one verbatim customer complaint with source attribution
- NEVER invent or exaggerate weaknesses. Inaccurate competitive intelligence backfires when the creator encounters the competitor's actual customers.
- ALWAYS frame each weakness as an exploitable gap with a specific action the creator can take
- Minimum 3 weaknesses per competitor. Focus on weaknesses that the CREATOR can address with their offer -- not weaknesses irrelevant to the positioning.

---

### Section 4: Messaging Analysis

**Purpose**: Decode how the competitor communicates. Understanding their messaging reveals their strategy, their audience assumptions, and the angles the creator should either counter or avoid.

**Contents**:
- **Key Angles**: The 2-3 primary messages they lead with across their marketing. (e.g., "They lead with speed: 'Get results in 7 days.' Secondary angle is ease: 'No technical skills required.' Tertiary is authority: 'Used by 10,000+ businesses.'")
- **Ad Copy Themes**: If running paid ads (check Meta Ad Library, Google Ads Transparency Center):
  - What hooks do they use? (first line of ad copy)
  - What CTAs do they use?
  - What creative formats (video, image, carousel)?
  - How long have their top ads been running? (longevity = proven)
  - What offers do they promote in ads vs. on their website?
- **Content Strategy**: What topics do they create content about? What format (video, blog, podcast)? What's their publishing frequency? What content performs best (highest views, engagement)?
- **Messaging Gaps**: What do they NOT talk about? What topics, objections, or audience segments do their messaging ignore? These gaps are opportunities.

**Rules**:
- ALWAYS check Meta Ad Library for active ads. Ad copy is the most honest indicator of what messaging is working -- they are paying money behind these words.
- NEVER speculate about messaging strategy without evidence. Base analysis on actual content, ads, and communications that are publicly visible.
- Messaging gaps are as important as messaging presence. What they avoid reveals either a strategic choice or a blind spot -- both are useful.
- If the competitor has no active paid ads, note this explicitly -- it indicates they either rely on organic/referral channels or are not scaling aggressively.

---

### Section 5: Pricing Comparison

**Purpose**: Side-by-side pricing comparison that enables the creator to make informed pricing decisions and arm sales conversations.

**Contents**:
- **Comparison Table**:

| Dimension | Competitor | Creator (if offer exists) |
|-----------|-----------|--------------------------|
| Tier 1 (name + price) | | |
| Tier 2 (name + price) | | |
| Tier 3 (name + price) | | |
| Delivery model | | |
| Duration / access period | | |
| Guarantee | | |
| Payment plans | | |
| Key inclusions | | |
| Key exclusions | | |

- **Price-to-Value Analysis**: At each price point, what does the buyer actually receive? Is the competitor's pricing justified by their deliverables?
- **Pricing Strategy Assessment**: What pricing strategy does the competitor appear to use? (Penetration pricing, premium pricing, value-based, competitor-matched, freemium-to-paid)
- **Implication for Creator Pricing**: Based on this comparison, how should the creator position their price? Price above (premium positioning), below (value positioning), or laterally (different value dimensions)?

**Rules**:
- ALWAYS fill in the comparison table even if some cells require "Unknown" -- the structure itself is valuable for identifying data gaps
- If the creator's offer does not yet exist, leave the Creator column blank and note "Offer pending -- use this data to inform pricing decisions in the Offer Document"
- NEVER recommend pricing without connecting the recommendation to the competitive context AND the ICP's willingness-to-pay data from the Market Research Brief
- Include payment plan options if discoverable -- they affect perceived affordability

---

### Section 6: Opportunity Gaps

**Purpose**: The actionable output. What specific opportunities exist because of what this competitor fails to provide or fails to do well? Each gap should map to a potential positioning angle or offer element.

**Contents**:
- 3-5 opportunity gaps, each with:
  - **Gap**: What the competitor's customers wish existed but the competitor does not provide. (e.g., "Customers repeatedly ask for industry-specific templates but are given generic ones")
  - **Evidence**: Source -- reviews, comments, forum threads, feature request pages. Include verbatim quotes where available.
  - **How the Creator Can Fill It**: Specific action or offer element. (e.g., "Build 5 industry-specific template packs as a core deliverable in our offer. This directly addresses the #1 complaint in their reviews.")
  - **Estimated Impact**: How significant is this gap? (High: directly affects purchase decision / Medium: affects satisfaction post-purchase / Low: nice-to-have, not a deal-breaker)

**Rules**:
- EVERY gap must cite evidence from actual customer feedback, not from the creator's assumptions about what customers want
- ALWAYS prioritize gaps by estimated impact. High-impact gaps first.
- The "How the Creator Can Fill It" must be specific and actionable, not generic. "Offer better support" fails. "Include a dedicated Slack channel with 4-hour response SLA" passes.
- NEVER list gaps that the creator cannot realistically address with their resources and expertise. A gap is only an opportunity if it is executable.

---

### Section 7: Threat Assessment

**Purpose**: A calibrated assessment of how dangerous this competitor is to the creator's success. This drives strategic prioritization -- high-threat competitors demand positioning against, low-threat competitors can be ignored.

**Contents**:
- **Threat Score**: 1-10 integer, where:
  - 1-3: Low threat. Competitor exists but does not significantly impact the creator's ability to win customers. Ignore or monitor casually.
  - 4-6: Moderate threat. Competitor competes for the same customers and has some advantages. Differentiate clearly.
  - 7-8: High threat. Competitor is well-established, well-funded, or occupies the exact positioning the creator wants. Direct strategy needed.
  - 9-10: Critical threat. Competitor dominates the space. Creator must either find a niche they cannot serve or create a new category.
- **Scoring Justification**: Rate each dimension:
  - Market share / visibility (1-10)
  - Offer quality (1-10)
  - Customer satisfaction (1-10)
  - Marketing sophistication (1-10)
  - Pricing competitiveness (1-10)
  - Average → Threat Score
- **Strategic Recommendation**: Based on the threat level:
  - Low (1-3): Monitor quarterly. No active positioning against.
  - Moderate (4-6): Differentiate on [specific dimensions]. Include in comparison content.
  - High (7-8): Position directly against. Build specific counter-messaging. Target their dissatisfied customers.
  - Critical (9-10): Avoid head-to-head. Create a subcategory or niche they cannot serve. Or target a segment they underserve.

**Rules**:
- NEVER assign a threat score without the dimensional scoring methodology. A number without reasoning is an opinion, not an assessment.
- ALWAYS include a strategic recommendation that matches the threat level
- Threat scores should be calibrated relative to the CREATOR's specific situation, not the competitor's absolute strength. A massive competitor may be low-threat if they serve a completely different segment.
- Revisit threat assessments quarterly or when significant competitive changes occur (new product launch, pricing change, acquisition, public failure)

---

## Shannon Constraints

| Constraint | Limit |
|-----------|-------|
| Total document length | 800 - 1,500 words per competitor |
| Competitor Overview (Section 1) | Max 250 words |
| Strengths | 3-5, each max 80 words |
| Weaknesses | 3-5, each max 100 words (including verbatim quote) |
| Messaging Analysis | Max 300 words |
| Opportunity Gaps | 3-5, each max 80 words |
| Threat Assessment | Max 200 words including dimensional scoring |

Battlecards are operational documents, not research papers. They are loaded during sales calls, positioning sessions, and offer design. Density and scannability matter more than comprehensiveness. If it cannot be parsed in under 5 minutes, it is too long.

## Quality Gate Criteria

This battlecard PASSES the quality gate when:

1. **Pricing data is included** or explicitly marked as undiscoverable with explanation
2. **Every strength and weakness cites specific evidence** -- no unsourced claims
3. **Weaknesses include minimum 1 verbatim customer complaint each** with source attribution
4. **Opportunity gaps cite customer evidence** -- not creator assumptions
5. **Threat score includes dimensional scoring methodology** -- not just a number
6. **Strategic recommendation matches the threat level** -- actionable, not generic
7. **All data points cite their source** (URL, platform, date where applicable)
8. **Messaging analysis references actual ad copy or content** -- not speculation

This battlecard FAILS the quality gate when:

1. No pricing information and no acknowledgment of the gap
2. Strengths or weaknesses are listed without evidence
3. Weaknesses contain no verbatim customer language
4. Opportunity gaps are based on the creator's assumptions rather than customer evidence
5. Threat score is assigned without justification
6. The battlecard could describe a competitor in a different market with minimal changes (specificity failure)
7. Messaging analysis contains no reference to actual ads, content, or public communications
8. The document exceeds 1,500 words (noise exceeds signal -- compress)
