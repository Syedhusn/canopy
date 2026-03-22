# Market Research Brief -- Output Template

> Signal: `S=(data, report, inform, markdown, market-research-brief)`
>
> The analytical foundation for every strategic decision that follows.
> If this document is wrong, every ICP, offer, and campaign built on it is wrong.

## When to Use This Template

Use this template when:
- A creator describes a new niche or business idea and needs market validation
- The `/research <niche>` skill is invoked
- Phase 1 of the sequential dependency chain is active
- An existing market research brief needs updating due to pivot or new data

Do NOT use this template when:
- The creator already has a validated brief scoring >= 50 viability and has not changed niches
- The request is for competitor-specific analysis only (use `competitor-battlecard.md` instead)

---

## Output Format: TWO Deliverables

Every `/research` produces TWO outputs:

### Output A: Intelligence Card (the 30-second view)

Present this FIRST. Compressed. Dense. Scannable. Structured as:

```markdown
# {Niche Name}

## Market Signal
| Metric | Value |
|--------|-------|
| Search Volume Trend | {+X% / -X% / Stable} with direction |
| Market Size | {TAM estimate} |
| Viability Score | {0-100}/100 |
| Market Maturity | {Naive / Aware / Skeptical / Exhausted} |

## Market Gaps
**{Gap Category Name}**
- {Specific friction point with data}
- {Specific friction point with data}

## The Opportunity
**{Named opportunity in 3-5 words}**
- {What to build / how to position}
- {Which segment to capture}

## Core Insight
> {One contrarian sentence that reframes how to win in this market.
> This is the single most valuable insight from the research.}

## Your Next 3 Moves
1. {Immediate action with specificity}
2. {Immediate action with specificity}
3. {Immediate action with specificity}
```

Rules for the Intelligence Card:
- NEVER exceed 400 words
- Every metric must cite its source
- The Core Insight must be something the creator did NOT already know
- Next 3 Moves must be executable THIS WEEK, not abstract strategy
- This card alone should be worth $1,000 to a consultant

### Output B: Full Research Brief (the deep dive)

Present this SECOND. This is the detailed document that feeds the ICP and Offer agents downstream.

---

## Template Structure (Full Brief)

### Section 1: Executive Summary

**Purpose**: Give the creator a clear go/no-go recommendation in under one page. This is the only section many stakeholders will read.

**Contents**:
- **Niche/Market Studied**: One-line definition of the market being evaluated
- **Viability Score**: 0-100 integer with one-sentence justification
- **Go / No-Go / Conditional Go**: The recommendation
- **Top 3 Findings**: Bullet points -- the three most important things discovered
- **Critical Risk** (if any): The single biggest reason this could fail
- **Recommended Next Step**: What the creator should do immediately based on this brief

**Rules**:
- NEVER exceed 300 words in this section
- ALWAYS include the viability score -- no brief is complete without it
- NEVER hedge the recommendation. Pick go, no-go, or conditional go. Not "it depends"
- The top 3 findings must each cite at least one source

---

### Section 2: Market Definition & Sizing

**Purpose**: Define the boundaries of the market and quantify the opportunity.

**Contents**:
- **Market Definition**: What this market is, in plain language. Who buys what from whom.
- **TAM (Total Addressable Market)**: The total revenue opportunity if 100% market share were achieved. Include methodology (top-down from industry reports, or bottom-up from unit economics).
- **SAM (Serviceable Addressable Market)**: The segment of TAM the creator can realistically reach given their delivery model, geography, and niche focus.
- **SOM (Serviceable Obtainable Market)**: The realistic share the creator can capture in 12-24 months. Must be defensible with assumptions shown.
- **CAGR**: Compound annual growth rate of this market. Source required.
- **Market Maturity Stage**: Classify using the maturity spectrum:
  - **Naive** -- Market does not know it has the problem yet. Education-heavy, first-mover advantage.
  - **Aware** -- Market knows the problem, exploring solutions. High demand, moderate competition.
  - **Skeptical** -- Market has been burned by bad solutions. Trust is the bottleneck. Proof-heavy positioning required.
  - **Exhausted** -- Market is saturated with offers. Differentiation or category creation required to compete.

**Rules**:
- NEVER present TAM/SAM/SOM without showing the methodology or calculation
- ALWAYS cite the source for CAGR and market size figures
- NEVER use a maturity stage label without providing evidence for the classification

---

### Section 3: Demand Signals -- What's WORKING

**Purpose**: Prove that real people are actively seeking solutions in this space. Demand signals are evidence that money, attention, or effort is flowing toward this problem.

**Contents**:
- **Search Demand**: Google Trends velocity (growing / stable / declining), absolute volume if available (via Glimpse or Ahrefs). Include the specific search terms analyzed and the trend direction over the past 12-24 months.
- **Content Demand**: YouTube view counts for relevant topics, podcast download estimates, blog traffic for niche keywords. What content is the market consuming?
- **Purchase Signals**: Amazon Best Seller Rank for relevant books/products, Udemy/Skillshare enrollment numbers, paid community membership counts (Skool, Circle), course sales evidence.
- **Ad Investment Signals**: Competitors running ads for 30+ days in Meta Ad Library (this proves the ad is profitable -- no one burns money for 30 days). Google Ads competitive density. Number of active advertisers.
- **Community Signals**: Reddit subreddit subscriber counts and post frequency, Facebook group sizes and engagement rates, Discord/Slack community activity.

**Rules**:
- EVERY signal must include the specific data point, not just a qualitative assessment. "Growing" is not enough -- "Google Trends score increased from 42 to 67 over 12 months for [term]" is a signal.
- NEVER claim demand exists without at least one quantified data point
- ALWAYS note the date the data was pulled -- demand signals decay rapidly

---

### Section 4: Pain Signals -- What's NOT WORKING

**Purpose**: Identify what the market hates about existing solutions. These gaps become the creator's positioning opportunities.

**Contents**:
- **Competitor 1-Star Reviews**: Extract the top recurring complaints from Amazon, G2, Trustpilot, or App Store reviews of competing products. Group by theme. Count frequency.
- **Reddit Complaints**: Search relevant subreddits for complaint threads. Extract verbatim language. Identify recurring frustration patterns.
- **YouTube Comments**: Analyze comment sections on competitor content or niche tutorial videos. What are viewers asking for that does not exist?
- **Feature Gaps**: What functionality, service level, or outcome does no competitor deliver well? Cross-reference across review sources.
- **Broken Promises**: What do competitors claim in their marketing that their customers say they failed to deliver? This is the highest-value gap -- proven demand with proven disappointment.

**Rules**:
- ALWAYS include verbatim quotes (minimum 5 across all subsections)
- NEVER paraphrase pain language -- the exact words matter for downstream messaging
- ALWAYS attribute each pain signal to its source (platform, date, context)
- A pain signal requires corroboration from 2+ independent sources to be classified as a pattern (vs. isolated complaint)

---

### Section 5: Competitive Landscape

**Purpose**: Map the existing players so the creator knows exactly who they are competing against and where the openings are.

**Contents**:
- **Direct Competitors (3-5)**: For each competitor, document:
  - Name and URL
  - Positioning statement (how they describe themselves)
  - Target market (who they claim to serve)
  - Pricing model and price points
  - Key strengths (what they do well, with evidence)
  - Key weaknesses (what they do poorly, with evidence from reviews/complaints)
  - Estimated scale (revenue range, team size, traffic, social following -- whatever is discoverable)
- **Indirect Competitors (2-3)**: Alternative solutions the market uses instead (e.g., hiring freelancers, DIY, using a different category of tool). Include why the market defaults to these.
- **Positioning Map**: A 2x2 matrix plotting competitors on two axes relevant to this market (e.g., Price vs. Depth of Service, DIY vs. Done-For-You, Beginner vs. Advanced). The creator's intended position should be marked.
- **Feature Comparison Matrix**: Table comparing core deliverables/features across competitors. Highlight gaps where no competitor delivers.

**Rules**:
- NEVER list a competitor without evidence-based strengths AND weaknesses. No one is all-good or all-bad.
- ALWAYS include pricing -- even if estimated. Price is the single most important competitive data point.
- NEVER include competitors you cannot verify actually exist and are active. Check for recent activity (content published, ads running, reviews within 6 months).
- The positioning map axes must be chosen based on what the TARGET MARKET cares about, not what looks clean on paper.

---

### Section 6: Voice of Customer -- Exact Language

**Purpose**: Capture the actual words the market uses to describe their problems, desires, and objections. This section feeds directly into the ICP Document and all downstream copy.

**Contents**:
- **Problem Descriptions** (minimum 5 verbatim phrases): How the market describes what is wrong. Sourced from Reddit posts, reviews, forum threads, YouTube comments, support tickets.
- **Desired Outcome Descriptions** (minimum 5 verbatim phrases): How the market describes what they want instead. What does "success" sound like in their words?
- **Emotional Triggers** (minimum 5 verbatim phrases): Words and phrases that carry strong emotional charge -- frustration, aspiration, fear, urgency. These become headline and hook material.
- **Objections** (minimum 5 verbatim phrases): What the market says when resisting a purchase. "I've been burned before," "How is this different from X," "I don't have time for another course."
- **Total minimum**: 20 verbatim phrases across all subsections

**Rules**:
- NEVER paraphrase or "clean up" the language. Typos, slang, and raw phrasing are the signal. "i literally wasted 3k on this garbage" is more valuable than "Customers expressed dissatisfaction with the price-to-value ratio."
- ALWAYS attribute each phrase to its source (Reddit r/subreddit, Amazon review, YouTube comment under [video], etc.)
- NEVER fabricate quotes. Every phrase must come from an actual source the researcher encountered. If the research did not surface enough verbatim language, flag the gap explicitly rather than inventing quotes.
- Organize phrases by emotional valence: negative (pain), positive (desire), mixed (objection)

---

### Section 7: Audience Intelligence

**Purpose**: Map where the target audience spends time, who they trust, and how they consume information. This drives channel strategy and partnership decisions.

**Contents**:
- **Where They Spend Time Online**: Specific subreddits (with subscriber counts), YouTube channels (with subscriber counts), Facebook groups, Skool communities, Discord servers, Twitter/X hashtags, podcasts, newsletters. Be specific -- "Reddit" is not useful. "r/Entrepreneur (4.2M members, 200+ posts/day)" is useful.
- **Who They Trust**: Named influencers, thought leaders, authors, podcast hosts in this space. Include why they are trusted (credentials, content quality, community size).
- **Content Formats They Consume**: Do they watch long-form YouTube? Listen to podcasts during commute? Read newsletters? Prefer short-form TikTok? Evidence-based, not assumed.
- **Willingness to Pay Evidence**: What have they already paid for in this space? Course prices, coaching rates, software subscriptions, community fees. Include specific products and prices. This is the single most important data point for offer pricing.

**Rules**:
- EVERY platform/channel mentioned must include a specificity marker (subscriber count, engagement metric, or activity level)
- NEVER list channels without evidence that the TARGET AUDIENCE is present there (not just that content exists there)
- ALWAYS include willingness-to-pay data -- this is non-optional. If no direct evidence exists, note "WTP data gap" explicitly so the offer agent knows to probe further.

---

### Section 8: Opportunity Assessment

**Purpose**: Synthesize all preceding sections into a clear verdict. This is where analysis becomes decision.

**Contents**:
- **Viability Score (0-100)**: The same score from the Executive Summary, now with full methodology shown.
  - Scoring dimensions (suggested weights, adjustable per niche):
    - Demand strength (0-25): Evidence of growing search, content, and purchase demand
    - Pain severity (0-20): How acute and costly the unresolved pain is
    - Competitive gap (0-20): Size and accessibility of gaps in the current market
    - Willingness to pay (0-20): Evidence that the market spends money on solutions
    - Creator-market fit (0-15): How well the creator's skills/experience match this market
  - Show the score for each dimension and the total
- **Top 3 Opportunity Gaps**: The three most promising openings in this market. Each gap must reference specific evidence from Sections 3-6.
- **Recommended Positioning Angle**: Based on the gaps and competitive landscape, what positioning should the creator pursue? One clear recommendation, not a menu of options.
- **Risk Flags**: Enumerate specific risks:
  - Market risk (declining demand, regulatory changes, platform dependency)
  - Competitive risk (well-funded incumbents, low barriers to entry)
  - Execution risk (requires capabilities the creator may not have)
  - Timing risk (too early, too late, seasonal)
- **Go / No-Go / Conditional Go**: Final recommendation with reasoning. If conditional, state exactly what conditions must be met.

**Rules**:
- NEVER produce a viability score without showing how it was calculated
- ALWAYS make the recommendation actionable -- "Go, and the first step is X" not just "Go"
- NEVER ignore risk flags to inflate the viability score. A market can be viable AND risky. Both must be stated.
- The recommended positioning angle must connect to a specific gap identified in Section 5

---

### Section 9: Methodology & Sources

**Purpose**: Make the research auditable. Anyone reading this brief should be able to verify the findings.

**Contents**:
- **Data Sources Used**: List every source consulted, with:
  - Platform/tool name
  - Specific queries or searches run
  - Date accessed
  - What signal type it provided (demand, pain, competitive, audience)
- **Tools Used**: Software, APIs, MCP servers, or manual processes employed
- **Known Limitations**: What the research could NOT access or verify. Gaps in data. Sources that were unavailable. Biases in the data (e.g., "Reddit skews younger and more tech-savvy than the general market").
- **Confidence Level**: Overall confidence in the findings (High / Medium / Low) with reasoning

**Rules**:
- NEVER omit the methodology section. Every brief must be auditable.
- ALWAYS disclose limitations. Overconfident research is more dangerous than honest uncertainty.
- NEVER list a source without the date it was accessed
- Include at minimum 5 distinct data sources. A brief based on fewer than 5 sources lacks sufficient cross-validation.

---

## Shannon Constraints

| Constraint | Limit |
|-----------|-------|
| Total document length | 2,000 - 5,000 words depending on market complexity |
| Executive Summary | Maximum 300 words |
| Individual section | No section should exceed 800 words |
| Voice of Customer phrases | Minimum 20 verbatim phrases total |
| Competitors analyzed | 3-5 direct, 2-3 indirect |
| Data sources cited | Minimum 5 distinct sources |

A simple, well-defined niche (e.g., "meal prep for busy moms") may produce a 2,000-word brief. A complex, multi-segment market (e.g., "AI-powered B2B sales tools") may require 5,000 words. The ceiling exists to prevent noise -- if you need more than 5,000 words, the market definition is too broad. Narrow it.

## Quality Gate Criteria

This brief PASSES the quality gate when:

1. **Viability score exists** and methodology is shown (not just a number)
2. **Every factual claim cites its source** -- no unsourced assertions
3. **Every major finding is corroborated by 2+ independent sources** (the cross-validation rule)
4. **Voice of Customer section contains minimum 20 verbatim phrases** from real sources
5. **All 9 sections are present** and substantively filled (no placeholder text)
6. **Competitive landscape includes pricing data** for at least 3 direct competitors
7. **Willingness-to-pay evidence exists** or the gap is explicitly flagged
8. **Methodology section lists all sources with dates**
9. **Go/No-Go recommendation is explicit** -- not hedged or deferred

This brief FAILS the quality gate when:

1. Any section is missing or contains only placeholder text
2. Viability score is present without scoring methodology
3. Fewer than 5 distinct data sources are cited
4. Voice of Customer phrases are paraphrased rather than verbatim
5. Claims appear without source attribution
6. Competitive landscape lacks pricing information
7. The brief could apply to a different niche with minimal changes (specificity failure)
8. The executive summary exceeds 300 words

## Evidence Hierarchy

When weighting findings, apply this hierarchy (strongest to weakest):

1. **Someone PAID money** -- purchase, enrollment, paid subscription (strongest signal)
2. **Company SPENT money** -- running ads 30+ days, hiring for the role (strong)
3. **Someone SAID IT unprompted** -- Reddit post, 1-star review, forum rant (good)
4. **Someone SEARCHED for it** -- Google Trends, autocomplete, PAA (good)
5. **Someone ENGAGED with it** -- upvote, share, save, comment (moderate)
6. **Someone SAID IT in a survey** -- lowest weight, people say what you want to hear

A finding supported by Level 1-2 evidence outweighs one supported only by Level 4-6 evidence, regardless of volume.

## Cross-Validation Rule

A finding is a **signal** only if it appears in 3+ independent sources.
A finding in 1-2 sources is **noise** until corroborated. Flag it as unvalidated if included.
