# Market Research & ICP Frameworks

> Operational frameworks for market validation and audience profiling. These are the specific methodologies, rubrics, and protocols this sub-agent applies when producing Market Research Briefs and ICP Documents.

---

## Framework 1: Tiered Data Source Framework

All market research data is sourced from a three-tier hierarchy. Higher tiers reflect more reliable data. Every research brief must document which tiers were used, and the minimum tier requirement depends on research depth.

### Tier 1: Behavioral Signals (High Reliability)

These sources reflect actual behavior -- what people search for, complain about, watch, and buy. They are always used, regardless of research depth.

| Source | What It Reveals | How to Use It |
|--------|----------------|---------------|
| **Google Trends** | Demand trajectory over time, seasonal patterns, geographic distribution | Compare niche terms over 5 years. Look for sustained growth vs. spikes. Compare related terms. |
| **Reddit** | Unprompted pain expression, community size, recurring questions, emotional language | Search niche subreddits. Sort by "top" and "controversial." Read comment threads for verbatim language. Track recurring complaints. |
| **YouTube** | Content consumption patterns, audience questions, competitor authority, engagement depth | Search niche topics. Analyze view counts vs. subscriber ratios. Read comments for pain language and objections. Note which creators dominate. |
| **Meta Ad Library** | Active advertisers, ad creative patterns, audience targeting, offer structures | Search niche keywords in the ad library. Count active advertisers. Analyze offer language and price points in ads. Track how long ads have been running (longevity = profitability). |
| **Google Autocomplete** | Actual search queries, question patterns, language the audience uses | Type niche-related stems ("how to [niche]", "best [niche]", "why can't I [niche]"). Document exact autocomplete suggestions. These are real queries from real people. |
| **Amazon Reviews** | Purchase-adjacent language, expectations vs. reality, pain points related to existing solutions | Find top-selling books and products in the niche. Read 3-star reviews (most nuanced). Extract verbatim language about what they hoped for and what disappointed them. |

### Tier 2: Commitment Signals (Medium-High Reliability)

These sources show where people invest money or significant time. Used for Standard and Deep research depth.

| Source | What It Reveals | How to Use It |
|--------|----------------|---------------|
| **Amazon Bestsellers** | What topics people are paying for, price sensitivity, market depth | Identify top 20 books in the niche. Analyze titles, pricing, review counts. Look for emerging subtopics. |
| **G2 / Capterra Reviews** | Tool adoption patterns, workflow pain points, willingness to pay for solutions | Search for tools in the niche. Read reviews for pain language and feature requests. Note pricing tiers. |
| **Job Boards** | Skills in demand, salary ranges, emerging roles, professional pain points | Search niche-related job titles. Note required skills, salary ranges, and job volume trends. |
| **Udemy / Skillshare** | Course enrollment patterns, topic demand, price points, what people are actively learning | Search niche courses. Note enrollment numbers, ratings, and pricing. Identify high-demand subtopics. |
| **Podcast Rankings** | Topic interest depth, audience commitment (podcast listeners invest significant time), influencer landscape | Search niche-related podcasts. Note ranking positions, episode counts, review volumes. Identify dominant voices. |

### Tier 3: Precision Analytics (High Precision, Tool-Dependent)

These sources provide quantified data but require paid tool access. Used for Deep research only.

| Source | What It Reveals | How to Use It |
|--------|----------------|---------------|
| **SEMrush / Ahrefs** | Search volume data, keyword difficulty, backlink profiles, content gaps, competitor traffic estimates | Pull exact search volumes for niche terms. Identify low-competition keywords. Analyze competitor domain authority. |
| **SparkToro** | Audience intelligence -- what they read, follow, listen to, visit | Profile the niche audience. Identify top websites, podcasts, YouTube channels, and social accounts they follow. |
| **SimilarWeb** | Website traffic estimates, traffic sources, engagement metrics, competitive benchmarking | Analyze competitor websites. Estimate traffic volumes. Identify traffic sources (organic, paid, social, referral). |

### Minimum Tier Requirements by Depth

| Research Depth | Tier 1 | Tier 2 | Tier 3 |
|---------------|--------|--------|--------|
| Shallow (quick validation) | Required (3+ sources) | Optional | Not used |
| Standard (full brief) | Required (all 6 sources) | Required (3+ sources) | Optional |
| Deep (comprehensive) | Required (all 6 sources) | Required (all 5 sources) | Required (2+ sources) |

---

## Framework 2: Evidence Hierarchy Application

Every data point collected during research must be classified by its evidence rank. This determines the weight assigned to the finding and how it is presented in the research brief.

### Classification Protocol

When documenting any finding, tag it with its evidence rank:

```
[PAID] Users are spending $297-$997 on courses in this niche (Meta Ad Library, March 2026)
[SPENT] 45-minute average watch time on niche YouTube videos (YouTube Analytics, March 2026)
[SAID] "I've been struggling with this for 3 years and nothing works" (Reddit r/niche, Feb 2026)
[SEARCHED] "how to [niche outcome] fast" — 12,400 monthly searches (Ahrefs, March 2026)
[ENGAGED] Top niche post received 2,300 likes and 450 comments (Instagram, March 2026)
[SURVEYED] 67% of respondents said they would pay for a course (Creator survey, n=200, Jan 2026)
```

### Conflict Resolution

When evidence from different ranks conflicts:

1. Higher-ranked evidence wins. If surveys say people will pay $2,000 but purchase data shows a $500 ceiling, the purchase data wins.
2. Document the conflict explicitly in the research brief with both data points.
3. Default to the conservative (higher-rank) interpretation for all strategic recommendations.

### Minimum Evidence Standards

| Claim Type | Minimum Evidence Rank | Minimum Sources |
|-----------|----------------------|-----------------|
| "People are buying this" | Paid (Rank 1) | 2+ sources showing purchases |
| "People want this" | Searched (Rank 4) or higher | 3+ sources |
| "People care about this" | Said Unprompted (Rank 3) or higher | 3+ sources |
| "This price point works" | Paid (Rank 1) | 2+ sources showing actual transactions |
| "The market is growing" | Searched (Rank 4) + Paid (Rank 1) | Trend data + purchase data |

---

## Framework 3: Cross-Validation Protocol

No finding enters a research brief or ICP document as validated without passing the cross-validation threshold. This protocol prevents the most common research error: mistaking a single anecdote for a market signal.

### Validation Thresholds

| Source Count | Classification | Treatment in Brief |
|-------------|---------------|-------------------|
| 1 source | **Anecdote** | Do NOT cite as a finding. Note in appendix only if relevant. |
| 2 sources | **Hypothesis** | Note as "preliminary finding, requires validation." Do not base strategy on it. |
| 3+ sources | **Signal** | Include as a validated finding. Can inform strategy. |
| 5+ sources | **Strong Signal** | Highlight prominently. High confidence. Foundational for strategy. |
| Contradictory | **Conflict** | Flag the conflict. Present both sides. Note which side has higher evidence rank. Do not suppress the contradiction. |

### Validation Process

1. Collect the finding from Source A (document the source, date, and exact data point).
2. Actively seek confirmation from Source B in a different platform or category (not just a different page on the same platform).
3. Actively seek confirmation from Source C from yet another independent source.
4. If 3+ sources confirm: classify as Signal. Document all sources.
5. If sources contradict: classify as Conflict. Present both sides with evidence ranks.

### Independence Requirement

Sources must be genuinely independent. Two Reddit threads in the same subreddit count as one source. A YouTube video and its comments count as one source. Independence means different platforms, different audiences, or different data collection methods.

---

## Framework 4: Viability Scoring Rubric

Every market research brief produces a viability score using this weighted rubric. The score determines the Go / Conditional / No-Go recommendation.

### Scoring Dimensions

| Dimension | Weight | What It Measures | Scoring Guide |
|-----------|--------|-----------------|--------------|
| **Demand Strength** | 25% | Search volume, content consumption, community activity, course enrollment | 0-25: No measurable demand. 26-50: Niche demand present. 51-75: Solid demand with growth. 76-100: Strong, proven demand. |
| **Pain Intensity** | 25% | Urgency of problem, emotional charge in language, frequency of complaints, willingness to pay for relief | 0-25: Mild inconvenience. 26-50: Real problem but not urgent. 51-75: Significant pain with emotional charge. 76-100: Acute pain driving active solution-seeking. |
| **Competition Level** | 20% | Number of competitors, quality of existing solutions, market saturation (inversely scored) | 0-25: Saturated, no gaps visible. 26-50: Crowded but gaps exist. 51-75: Moderate competition with clear whitespace. 76-100: Underserved market with few quality competitors. |
| **Market Trajectory** | 15% | Growing, stable, or declining over 12-24 months | 0-25: Declining. 26-50: Stable/flat. 51-75: Steady growth. 76-100: Accelerating growth. |
| **Monetization Evidence** | 15% | Proof that people pay for solutions in this space | 0-25: No monetization evidence. 26-50: Indirect evidence (adjacent markets monetize). 51-75: Direct evidence (competitors are profitable). 76-100: Strong evidence (high-price offers selling actively). |

### Score Calculation

```
Weighted Score = (Demand × 0.25) + (Pain × 0.25) + (Competition × 0.20) + (Trajectory × 0.15) + (Monetization × 0.15)
```

### Recommendation Thresholds

| Score Range | Recommendation | What It Means |
|-------------|---------------|---------------|
| 75-100 | **Go** | Strong market with clear opportunity. Proceed to ICP. |
| 50-74 | **Conditional** | Viable with specific positioning or narrowing. Document conditions. |
| 0-49 | **No-Go** | Insufficient evidence of viable market. Recommend pivot or adjacent niche. |

### Presentation Rule

Always show the full scoring breakdown, not just the total. The individual dimension scores reveal where the opportunity is strong and where it is weak, which directly informs positioning strategy.

---

## Framework 5: ICP Deep-Dive Framework

The ICP Document contains 13 sections. Each section has specific requirements, evidence standards, and strategic implications. This framework defines what goes in each section and why it matters.

### The 13 Sections

**Section 1: ICP Summary** (3-5 sentences)
A vivid, specific portrait. Not demographics. A narrative snapshot so specific the creator says "I know exactly who this person is." Include their current emotional state, their primary frustration, and what they secretly want.

**Section 2: Demographics**
Age range (with peak), gender distribution, income range, location, occupation, education, family status. Every data point needs a source citation. Demographics alone are never sufficient -- they frame the psychographic depth.

**Section 3: Psychographics**
Core values, identity (how they see themselves vs. how they want to be seen), aspirations, fears, worldview, information sources. This is where the ICP becomes a real person. Depth > breadth.

**Section 4: Limiting Belief Diagnosis**
The most strategically important section. Diagnose Worthless, Helpless, or Hopeless with 3-5 distinct evidence patterns. Each pattern must include a verbatim quote and source.

**Section 5: Awareness Level**
Classify Level 1-5 with 3+ evidence indicators. The awareness level determines copy length, proof density, and belief-building strategy for all downstream content.

**Section 6: Pain Points** (minimum 5)
Each pain point mapped across the 4-Layer Pain Architecture (see Framework 6). Must include verbatim language at the Language layer.

**Section 7: Desires & Dream Outcome**
The dream outcome (one sentence), intermediate desires (stepping stones), status outcome (how they want to be seen), emotional outcome (how they want to feel).

**Section 8: What They've Tried & Failed**
Minimum 3 entries. For each: what they tried, why they tried it, why it failed (structural reason), emotional residue left behind. This feeds directly into the Offer Architecture sub-agent's Old Vehicle Autopsy.

**Section 9: Objections** (minimum 5)
Each objection documented with: surface objection (what they say), real objection (what they mean), belief behind it (which limiting belief drives it), response strategy.

**Section 10: Buying Intelligence**
Buying triggers (what makes them buy NOW), purchase history (what they've bought before), price sensitivity, decision process (impulse/research/social proof), deal-breakers.

**Section 11: Information Diet**
Platforms, content formats, influencers they follow, books they read, communities they belong to, search behavior. This section determines the marketing channel strategy.

**Section 12: Exact Language Patterns** (minimum 20 phrases)
Verbatim quotes from forums, reviews, comments, conversations. Never paraphrased. Each with source attribution. Include: words they overuse, words they never use, emotional vocabulary, technical vocabulary.

**Section 13: Completeness Score**
Weighted rubric: Demographics 10%, Psychographics 20%, Pain Points 20%, Objections 15%, Buying Triggers 15%, Awareness Level 10%, Language Patterns 10%. Score must be >= 80/100 to submit.

---

## Framework 6: 4-Layer Pain Architecture

For every major pain point in the ICP (minimum 5), map the pain across four layers of depth. Surface-level pain descriptions are insufficient -- downstream agents need the full depth to design mechanisms, guarantees, and messaging.

### The Four Layers

| Layer | Definition | What to Capture | Example (Weight Loss for New Moms) |
|-------|-----------|-----------------|--------------------------------------|
| **Surface** | What they say the problem is. The symptom they describe. | The exact words they use when asked "what's your biggest challenge?" | "I can't lose the baby weight" |
| **Deep** | What the problem actually means to them. The identity, relationship, or life impact. | The meaning behind the symptom -- what it threatens or represents. | "I don't recognize myself anymore. I avoid mirrors." |
| **Compounding** | What happens if the problem persists. The cascade of secondary problems. | The downstream consequences they fear -- relationship, health, career, mental health. | "My marriage is suffering because I have no confidence. I have no energy for my kids. I'm missing out on their childhood." |
| **Language** | How they describe it in their own words. Verbatim, emotional, unfiltered. | The exact phrases from forums, reviews, comments. Include emotional intensity markers. | "I feel like a stranger in my own body" -- Reddit r/postpartum, Feb 2026 |

### Application Rules

1. Every pain point must have all four layers documented. A pain point with only the Surface layer is incomplete.
2. The Language layer must contain a verbatim quote with source attribution -- never a paraphrase.
3. The Deep and Compounding layers are where the real strategic value lives. They inform mechanism design, guarantee structure, and emotional messaging.
4. The progression from Surface to Language should feel like peeling back layers -- each layer reveals something the previous layer hid.

---

## Framework 7: Market Maturity Diagnosis Method

Market maturity must be diagnosed systematically, not guessed. This framework provides the specific indicators to evaluate and the evidence thresholds for each stage classification.

### Diagnostic Indicators

For each indicator, gather evidence and score the market:

| Indicator | Stage 1 (Naive) | Stage 2 (Aware) | Stage 3 (Skeptical) | Stage 4 (Exhausted) |
|-----------|-----------------|-----------------|---------------------|---------------------|
| **Competitor Count** | 0-4 active | 5-15 active | 15+ active | 15+ but many churning out |
| **Search Volume** | Low/emerging | Growing steadily | High/peaked | Declining or fragmented |
| **Audience Sentiment** | Curious, hopeful | Interested, evaluating | Cautious, "prove it" | Cynical, "I've heard it all" |
| **Average Price Points** | Low-mid, unestablished | Mid-tier, standardizing | Mid-high, premium entrants | Compressing at low end, premium at high end |
| **Content Saturation** | Minimal free content | Growing content library | Overwhelming amount | Content fatigue, "same advice everywhere" |
| **Failed Attempts** | No common failures | Some early failures | Widespread failure stories | Failure is the default expectation |
| **Category Language** | No established terms | Emerging terminology | Established jargon | Jargon becoming cliche |
| **Ad Longevity** | Few ads running | Ads running 1-6 months | Ads running 6-12+ months | Ad creative churning rapidly |

### Diagnosis Process

1. Evaluate all 8 indicators using Tier 1 data sources (minimum).
2. Assign each indicator to a stage (1-4).
3. The market's overall stage is the mode (most common stage across indicators).
4. If indicators are split evenly between two stages, classify as the higher stage (more conservative).
5. Document the evidence for each indicator in the research brief.

### Strategic Implications by Stage

| Stage | Positioning Strategy | Mechanism Need | Proof Requirement | Pricing Strategy |
|-------|---------------------|---------------|-------------------|-----------------|
| 1 (Naive) | Educate on the problem | Light | Low (promise is enough) | Test low-mid, market sets the range |
| 2 (Aware) | Differentiate on approach | Medium | Moderate (show why your way is better) | Mid-tier, differentiation justifies premium |
| 3 (Skeptical) | Create new category | Heavy | High (prove the mechanism works) | Mid-high, proof justifies premium |
| 4 (Exhausted) | Paradigm shift | Maximum | Maximum (demolish + rebuild) | Premium only (cheap = suspicious) |
