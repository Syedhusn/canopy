# /research

> Conduct market research and validation for a niche, topic, or business idea, producing a scored Market Research Brief with Go/Conditional/No-Go recommendation.

## Usage

```
/research <niche_or_topic> [--depth shallow|standard|deep]
```

**Arguments:**
- `<niche_or_topic>` — The niche, market, or topic to research (required)
- `--depth` — Research depth level (optional, default: `standard`)
  - `shallow` — Tier 1 sources only, fastest turnaround, good for initial screening
  - `standard` — Tier 1 + Tier 2 sources, balanced depth and speed
  - `deep` — Tier 1 + Tier 2 + Tier 3 sources, maximum rigor, requires tool access

## What It Does

Systematically scans tiered data sources to assess whether a viable market exists for the given niche or topic. Produces a scored viability assessment with a clear recommendation, competitive landscape analysis, economics validation, and market maturity diagnosis. This is always the first step in the foundation chain — nothing else should be built until this research is complete.

The skill follows an evidence hierarchy where behavioral data (what people pay for, spend time on, search for) is weighted above stated preferences (surveys, polls). All major findings require cross-validation from 3+ independent sources before being classified as "signal."

## Agent

`research` — Market Research Analyst

## Destination

- **Primary output:** `output/research/{topic-slug}-brief.md`
- **Intelligence Card:** included at the top of the brief
- **Promotion path:** When approved by Growth Director, key findings are written to `reference/market-research.md`

## Prerequisites

- `company.yaml` should exist with creator context (recommended but not strictly required)
- No other foundation documents are required — this is the first step in the chain
- For `--depth deep`: access to Tier 3 tools (SEMrush, Ahrefs, SparkToro) is needed

## Process

### 1. Define Scope
- Parse the niche/topic from the user's input
- Establish macro market, sub-market, niche, and micro-niche boundaries
- Load creator context from `company.yaml` if available
- Determine depth level (shallow/standard/deep)

### 2. Scan Sources by Tier

**Tier 1 (always scanned):**
- Google Trends — search interest over time, related queries, geographic distribution
- Reddit — relevant subreddits, top posts, pain point language, solution discussions
- YouTube — video topics, view counts, comment sentiment, creator landscape
- Meta Ad Library — active ads in the space, ad creative patterns, advertiser count
- Google Autocomplete — what people are actually searching for
- Amazon Reviews — related books/products, what buyers praise and complain about

**Tier 2 (standard + deep):**
- Amazon Bestsellers — what's selling, pricing, review volume
- G2/Capterra — software/tool reviews in the space
- Job boards — roles being hired, salary ranges, skill demands
- Udemy/Skillshare — course topics, enrollment counts, ratings
- Podcast rankings — shows in the space, listener engagement

**Tier 3 (deep only):**
- SEMrush/Ahrefs — keyword volume, difficulty, content gaps
- SparkToro — audience intelligence, media consumption
- SimilarWeb — competitor traffic estimates

### 3. Cross-Validate Findings
- Tag each finding with its evidence hierarchy rank (Paid > Spent > Said Unprompted > Searched > Engaged > Surveyed)
- Cross-reference findings across sources:
  - 3+ sources confirming = **Signal** (include in brief)
  - 1-2 sources = **Noise** (note as preliminary only)
  - Contradictory findings = **Conflict** (present both sides with evidence strength)

### 4. Diagnose Market Maturity
- Stage 1 (Naive): Few competitors, low search volume, no established language
- Stage 2 (Aware): Growing volume, 5-15 competitors, emerging language
- Stage 3 (Skeptical): High volume, 15+ competitors, tried-and-failed audience
- Stage 4 (Exhausted): Declining engagement, cynicism, "tried everything"

### 5. Map Competitive Landscape
- Identify 3-5 direct competitors
- Document positioning, pricing, audience size, strengths, weaknesses, gaps
- Identify whitespace opportunities

### 6. Validate Economics
- Estimate CAC range based on ad library data and comparable offers
- Project LTV:CAC path under conservative assumptions
- Document monetization evidence (who is making money, how, at what scale)

### 7. Score Viability
Apply the weighted rubric:
| Dimension | Weight |
|-----------|--------|
| Demand Strength | 25% |
| Pain Intensity | 25% |
| Competition Level | 20% |
| Market Trajectory | 15% |
| Monetization Evidence | 15% |

Calculate weighted total (0-100).

### 8. Produce Deliverables
- Write the Intelligence Card (400 words max)
- Write the Full Research Brief (9 sections, 2000-5000 words depending on depth)
- Include viability score breakdown
- Include Go/Conditional/No-Go recommendation with top 3 reasons

## Output Format

The skill produces two artifacts in a single file:

### Intelligence Card (appears first, 400 words max)
```
# Intelligence Card: [Niche/Topic]
Viability Score: [XX/100] — [Go / Conditional / No-Go]
Market Maturity: Stage [1-4] — [Name]

Market Snapshot: [2-3 sentences]
Demand Signal: [2-3 sentences]
Competitive Position: [2-3 sentences]
Economics: [2-3 sentences]
Verdict: [2-3 sentences]
Key Risk: [1-2 sentences]
```

### Full Research Brief (follows Intelligence Card)
9 required sections:
1. Executive Summary
2. Market Definition
3. Market Maturity Assessment
4. Demand Analysis
5. Pain Intensity Assessment
6. Competitive Landscape
7. Market Trajectory
8. Economics Validation
9. Viability Scorecard (with weighted breakdown and recommendation)

## Quality Gates

| Gate | Requirement | Pass Criteria |
|------|------------|---------------|
| Section Completeness | All 9 brief sections present | Every section has substantive content (not placeholders) |
| Viability Score | Score calculated with breakdown | All 5 dimensions scored, weights applied, total computed |
| Source Citation | Sources cited for all data points | Every data point has platform + date + metric |
| Cross-Validation | Major findings validated | Each finding marked as signal has 3+ source confirmation |
| Evidence Hierarchy | Findings ranked | Each data point tagged with evidence rank |
| Intelligence Card | Card produced | <= 400 words, includes score and recommendation |
| Recommendation | Go/Conditional/No-Go stated | Recommendation present with top 3 supporting reasons |
| Depth Compliance | Correct tiers scanned for depth level | Shallow = Tier 1, Standard = T1+T2, Deep = T1+T2+T3 |
