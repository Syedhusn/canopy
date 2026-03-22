# /build-icp

> Build a comprehensive Ideal Customer Profile with 13 sections, verbatim language patterns, limiting belief diagnosis, and completeness scoring.

## Usage

```
/build-icp [--segment <segment_name>]
```

**Arguments:**
- `--segment <segment_name>` — Optional segment label if the market has multiple distinct ICP segments. If omitted, builds the primary ICP from the research brief. Multiple segments can be built by running the skill multiple times with different segment names.

## What It Does

Constructs a detailed, evidence-backed Ideal Customer Profile that goes far beyond demographics. The ICP Document contains 13 sections covering psychology, behavior, language, objections, and buying patterns. Every finding requires multi-source validation. The document includes a minimum of 20 verbatim buyer language phrases, a limiting belief diagnosis with evidence patterns, and a completeness score that must reach 80/100 before the document is approved for downstream use.

This is the second step in the foundation chain. The ICP feeds directly into positioning (Niche Architect), offer design (Offer Architect), and brand voice extraction (Brand Voice Extractor). A weak ICP means weak everything downstream.

## Agent

`icp-builder` — ICP Builder

## Destination

- **Reference copy:** `reference/icp.md` (approved version for downstream agents)
- **Full output:** `output/foundations/icp-document.md` (complete deliverable with working notes and source catalog)

## Prerequisites

| Prerequisite | Location | Requirement |
|-------------|----------|-------------|
| Market Research Brief | `reference/market-research.md` | Must exist with completed viability scoring |

The ICP Builder will refuse to begin without a validated Market Research Brief. The research brief provides the market context, competitive landscape, and initial audience signals that the ICP Builder expands into a full profile.

**Key data pulled from prerequisite:**
- Market definition (macro/sub/niche/micro-niche)
- Competitive landscape (to understand who else is serving this audience)
- Demand signals (what the audience is searching for, engaging with)
- Pain indicators (initial evidence to expand upon)
- Market maturity stage (informs default awareness level)

## Process

### 1. Ingest Research Brief
- Load `reference/market-research.md`
- Extract all audience-relevant data points
- Identify which ICP sections have partial coverage from research vs. which need primary research
- Note market maturity stage (Stage 1-2 default to Awareness Level 2-3; Stage 3-4 default to Level 3-4)

### 2. Source Mining for Buyer Language
Systematically scan sources for verbatim ICP language. Priority order:
1. Reddit threads (subreddits identified in research brief)
2. YouTube comments on competitor content
3. Amazon reviews on related books and products
4. Facebook/online community discussions
5. Competitor testimonials and case studies
6. Forum threads and Q&A sites
7. Support/FAQ pages of competitors

**Extraction protocol:**
- Copy language VERBATIM — do not clean up grammar, spelling, or profanity
- Record the source (platform, thread/page URL or description, date)
- Tag each phrase with its emotional context (complaining, hoping, ranting, asking, celebrating)
- Target minimum 20 unique phrases; aim for 30+

### 3. Build 13 Sections
Work through each section sequentially, cross-referencing findings:

1. **Summary** — Vivid 3-5 sentence portrait (not a list of demographics)
2. **Demographics** — Age, gender, income, location, occupation, education, family
3. **Psychographics** — Values, identity, aspirations, fears, worldview, information sources
4. **Limiting Belief Diagnosis** — Classify as Worthless/Helpless/Hopeless with 3-5 evidence patterns
5. **Awareness Level** — Classify 1-5 with evidence indicators
6. **Pain Points** — 5+ with 4-layer depth (Surface → Deep → Compounding → Language)
7. **Desires & Dream Outcome** — Dream outcome, intermediate desires, status outcome, emotional outcome
8. **What They've Tried & Failed** — 3-5 failed methods with structural failure reasons and emotional residue
9. **Objections** — 5+ with surface/real/belief/response framework
10. **Buying Intelligence** — Triggers, purchase history, price sensitivity, decision process, deal-breakers
11. **Information Diet** — Platforms, formats, influencers, books, communities, search behavior
12. **Exact Language Patterns** — 20+ verbatim phrases with source attribution
13. **Completeness Score** — Weighted rubric calculation with section-by-section breakdown

### 4. Cross-Validate All Findings
- Every claim included as a finding must have 3+ source confirmation
- Single-source observations are noted as preliminary, not presented as validated
- Contradictory findings are flagged with both sides presented

### 5. Score Completeness
Apply the weighted rubric:
| Section Group | Weight |
|--------------|--------|
| Demographics | 10% |
| Psychographics | 20% |
| Pain Points | 20% |
| Objections | 15% |
| Buying Triggers | 15% |
| Awareness Level | 10% |
| Language Patterns | 10% |

Score each section 0-100, apply weights, calculate total.

### 6. Quality Check
- If total >= 80: Submit for Growth Director validation
- If total 60-79: Identify weak sections, conduct additional targeted research, re-score
- If total < 60: Flag as insufficient, report gaps, request guidance on additional data sources

## Output Format

### ICP Document (13 sections)

```
# Ideal Customer Profile: [ICP Name/Label]
Creator: [name]
Niche: [niche]
Completeness Score: [XX/100]

1. ICP Summary (vivid portrait)
2. Demographics (with evidence sources)
3. Psychographics (values, identity, aspirations, fears, worldview)
4. Limiting Belief Diagnosis (Worthless/Helpless/Hopeless + 3-5 evidence patterns)
5. Awareness Level (1-5 with evidence indicators)
6. Pain Points (5+ with 4-layer depth analysis)
7. Desires & Dream Outcome
8. What They've Tried & Failed (3-5 methods with structural failures)
9. Objections (5+ with surface/real/belief/response)
10. Buying Intelligence (triggers, history, sensitivity, process, deal-breakers)
11. Information Diet (platforms, formats, influencers, books, communities)
12. Exact Language Patterns (20+ verbatim with sources)
13. Completeness Score (weighted breakdown table)
```

## Quality Gates

| Gate | Requirement | Pass Criteria |
|------|------------|---------------|
| Prerequisite Present | Market Research Brief exists | `reference/market-research.md` is present and complete |
| Completeness Score | Minimum threshold met | Total weighted score >= 80/100 |
| Verbatim Language | Sufficient buyer language | >= 20 unique verbatim phrases with source attribution |
| Limiting Belief | Diagnosis with evidence | One of Worthless/Helpless/Hopeless diagnosed with 3-5 evidence patterns |
| Pain Depth | Multi-layer analysis | All 5+ pain points have Surface/Deep/Compounding/Language layers |
| Objection Coverage | Sufficient objections mapped | >= 5 objections with surface/real/belief/response framework |
| Awareness Classification | Level determined with evidence | Level 1-5 assigned with 3+ evidence indicators |
| Cross-Validation | Multi-source confirmation | All major claims backed by 3+ independent sources |
| No Vague Audiences | Specificity check | ICP is NOT "anyone who wants to make money" or similarly generic |
| Failed Methods | Tried-and-failed documented | 3-5 methods with structural failure reasons (feeds Niche Architect) |
