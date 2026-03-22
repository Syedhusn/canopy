# /analyze-competitor

> Analyze a competitor and produce a structured Battlecard with Threat Score and actionable opportunity gaps.

## Usage

```
/analyze-competitor <competitor_name_or_url> [--depth quick|standard|deep]
```

**Arguments:**
- `<competitor_name_or_url>` (required) — Competitor's name, website URL, or social media handle
- `--depth` — Analysis depth: `quick` (30-min overview), `standard` (full battlecard, default), `deep` (comprehensive with content audit)

**Examples:**
```
/analyze-competitor "Creator Academy" --depth standard
/analyze-competitor https://competitorsite.com --depth deep
/analyze-competitor @competitor_handle --depth quick
/analyze-competitor "John Smith Coaching" --depth standard
/analyze-competitor https://competitor.com --depth deep
```

## What It Does

Produces a structured Competitor Battlecard with a 7-section analysis and a quantified Threat Score (1-10). The battlecard provides actionable intelligence that informs positioning, content strategy, messaging, and offer design.

**Quick depth:** High-level overview of positioning, offer, and initial threat assessment. Suitable for fast competitive awareness.

**Standard depth:** Full 7-section battlecard with messaging analysis, pricing comparison, and opportunity gaps. The default for strategic planning.

**Deep depth:** Everything in standard plus a content audit (top-performing content analysis across platforms), audience overlap estimation, and detailed messaging teardown with specific copy examples.

## Agent

**research** (from foundations division) — The Research Agent handles competitive analysis as it requires web research, data synthesis, and strategic assessment capabilities.

Note: If the research agent is unavailable, the content-strategist agent can produce this analysis using available web search tools.

## Destination

```
output/marketing/competitive/battlecard-[competitor-slug]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Audience overlap assessment baseline |
| Offer Document | reference/offers.md | Pricing and value stack comparison baseline |
| Positioning Document | reference/positioning.md | Differentiation analysis baseline |
| Brand Voice Profile | reference/brand-voice.md | Messaging comparison baseline |

## Process

### Step 1: Research the Competitor
Gather intelligence from available sources:
- Website (homepage, about page, sales pages, pricing page)
- Social media profiles (follower counts, posting frequency, engagement rates)
- Content channels (YouTube, podcast, blog — volume and quality)
- Customer reviews and testimonials (third-party if available)
- Product/offer pages (what they sell, at what price, to whom)
- Press, interviews, or podcast appearances
- Email marketing (sign up for their lead magnet if available)

### Step 2: Build Section 1 — Overview
Document:
- Competitor name and primary URL
- Founded/active since
- Estimated audience size (social + email)
- Primary platforms (ranked by apparent priority)
- Target audience description (who are they serving?)
- Core positioning statement (how do they describe themselves?)
- Business model (courses, coaching, SaaS, agency, hybrid)
- Estimated revenue range (if determinable from public signals)

### Step 3: Build Section 2 — Strengths
Identify 5-7 competitive strengths:
- What do they do well?
- Where is their content strongest?
- What social proof do they have?
- What is their unique advantage?
- Where does their audience perceive high value?

Rate each strength's impact: High / Medium / Low

### Step 4: Build Section 3 — Weaknesses
Identify 5-7 competitive weaknesses:
- Where is their content or messaging weak?
- What complaints or objections appear in reviews?
- Where are gaps in their platform coverage?
- What audience segments are they ignoring?
- Where is their positioning vague or generic?

Rate each weakness's exploitability: High / Medium / Low

### Step 5: Build Section 4 — Messaging Analysis
Analyze their communication:
- Brand voice characterization (formal/casual, authoritative/friendly)
- Key messaging themes (what do they repeat?)
- Value proposition (how do they frame their offer?)
- ICP language usage (do they mirror audience language effectively?)
- Mechanism/methodology (do they have a named framework?)
- CTAs and conversion messaging (how do they drive action?)
- Belief stack (what must their audience believe to buy?)

For deep analysis, include specific copy examples from:
- Homepage headline and subheadline
- Sales page key sections
- Top 3 performing social posts
- Email subject lines (if available)

### Step 6: Build Section 5 — Pricing Comparison
Compare against our offer(s) from reference/offers.md:

| Element | Competitor | Our Offer |
|---------|-----------|-----------|
| Core offer | [Description] | [Description] |
| Price point | [Amount] | [Amount] |
| Value stack | [What's included] | [What's included] |
| Guarantee | [Terms] | [Terms] |
| Payment options | [Plans] | [Plans] |
| Perceived value gap | [Assessment] | [Assessment] |

### Step 7: Build Section 6 — Opportunity Gaps
Identify 5-10 actionable opportunities:
- Audience segments they are not serving
- Content types they are not producing
- Platforms they are ignoring or underperforming on
- Messaging angles they have not explored
- Pain points they are not addressing
- Positioning gaps (where they are generic, we can be specific)
- Trust signals they are missing
- Offer elements we can provide that they do not

Rank each opportunity by:
- Impact (High/Medium/Low)
- Effort to exploit (High/Medium/Low)
- Time to impact (1-3 months / 3-6 months / 6+ months)

### Step 8: Build Section 7 — Threat Assessment
Calculate the Threat Score (1-10) based on:

| Factor | Weight | Score (1-10) |
|--------|--------|-------------|
| Audience overlap with our ICP | 25% | [X] |
| Offer similarity to ours | 20% | [X] |
| Content quality and consistency | 15% | [X] |
| Brand strength and recognition | 15% | [X] |
| Pricing competitiveness | 10% | [X] |
| Growth trajectory | 10% | [X] |
| Innovation and adaptability | 5% | [X] |
| **Weighted Threat Score** | **100%** | **[X.X]** |

Threat Level Classification:
- 1-3: **Low Threat** — Different audience or weak execution
- 4-6: **Moderate Threat** — Some overlap, monitor quarterly
- 7-8: **High Threat** — Significant overlap, active differentiation needed
- 9-10: **Critical Threat** — Direct competitor, strategic response required

### Step 9: Generate Strategic Recommendations
Based on the full analysis, provide 3-5 specific, actionable recommendations:
- What to do differently in positioning
- What content to create that they are not
- What messaging angles to emphasize
- What offer adjustments to consider
- What platforms to prioritize

## Output Format

```markdown
# COMPETITOR BATTLECARD: [Competitor Name]
**Analysis Date:** [YYYY-MM-DD]
**Depth:** [Quick | Standard | Deep]
**Analyst:** [Agent ID]
**Threat Score:** [X.X] / 10 — [Low | Moderate | High | Critical] Threat

---

## 1. OVERVIEW
**Name:** [Name]
**URL:** [URL]
**Active Since:** [Year]
**Audience Size:** [Estimated total across platforms]
**Primary Platforms:** [Ranked list]
**Target Audience:** [Description]
**Positioning:** [How they position themselves]
**Business Model:** [Model type]
**Est. Revenue Range:** [Range if determinable]

## 2. STRENGTHS
| # | Strength | Impact | Evidence |
|---|----------|--------|----------|
| 1 | [Strength] | [H/M/L] | [Proof] |
| 2 | [Strength] | [H/M/L] | [Proof] |
[Continue for 5-7 strengths]

## 3. WEAKNESSES
| # | Weakness | Exploitability | Evidence |
|---|----------|----------------|----------|
| 1 | [Weakness] | [H/M/L] | [Proof] |
| 2 | [Weakness] | [H/M/L] | [Proof] |
[Continue for 5-7 weaknesses]

## 4. MESSAGING ANALYSIS
**Brand Voice:** [Characterization]
**Key Themes:** [List]
**Value Proposition:** [Their framing]
**Mechanism/Framework:** [Named methodology if any]
**ICP Language Match:** [Assessment]
**Belief Stack:** [What audience must believe]
**Copy Examples:** [If deep analysis]

## 5. PRICING COMPARISON
| Element | Competitor | Our Offer |
|---------|-----------|-----------|
[Full comparison table]

## 6. OPPORTUNITY GAPS
| # | Opportunity | Impact | Effort | Timeline | Action |
|---|-------------|--------|--------|----------|--------|
| 1 | [Gap] | [H/M/L] | [H/M/L] | [Timeframe] | [What to do] |
[Continue for 5-10 opportunities]

## 7. THREAT ASSESSMENT
| Factor | Weight | Score |
|--------|--------|-------|
[Full scoring table]

**Weighted Threat Score: [X.X] / 10**
**Classification: [Level]**

---

## STRATEGIC RECOMMENDATIONS
1. [Recommendation with rationale]
2. [Recommendation with rationale]
3. [Recommendation with rationale]
4. [Recommendation with rationale]
5. [Recommendation with rationale]

## MONITORING PLAN
- **Review frequency:** [Monthly | Quarterly]
- **Key signals to watch:** [List]
- **Escalation trigger:** [When to re-analyze]
```

## Quality Gates

- [ ] All 7 battlecard sections are completed
- [ ] Threat Score is calculated with weighted methodology (not guessed)
- [ ] Strengths and weaknesses are evidenced (not assumed)
- [ ] Messaging analysis references specific copy or content (not vague characterizations)
- [ ] Pricing comparison uses our actual offer data from reference/offers.md
- [ ] Opportunity gaps are actionable (each has a specific recommended action)
- [ ] Opportunity gaps are ranked by impact, effort, and timeline
- [ ] Strategic recommendations are specific and actionable (not generic advice)
- [ ] Deep analysis includes content audit and copy examples (if depth=deep)
- [ ] Assessment is objective — acknowledges competitor strengths honestly
- [ ] Monitoring plan defines review frequency and escalation triggers
- [ ] Analysis serves strategic decision-making, not just information collection
