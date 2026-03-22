# /define-niche

> Define competitive positioning, design the unique mechanism, and build narrative architecture for a creator's niche.

## Usage

```
/define-niche [--segment <segment>]
```

**Arguments:**
- `--segment <segment>` — Optional target segment within the niche if the market research identified multiple viable segments. If omitted, uses the primary segment from the research brief.

## What It Does

Takes validated market research and a completed ICP profile and transforms them into competitive positioning that makes the creator's offer the obvious choice for their ideal customer. This includes conducting an Old Vehicle Autopsy (documenting what the ICP has tried and failed with), engineering a Vehicle Switch (fundamentally different approach, not incrementally better), designing a named Unique Mechanism, crafting the Core Belief Statement, and building the narrative architecture that connects the creator's story to the ICP's transformation.

This is the strategic bridge between understanding the market (research + ICP) and designing the offer. Without clear positioning, the offer is just another option in a crowded market.

## Agent

`niche-architect` — Niche Architect

## Destination

- **Reference copy:** `reference/positioning.md` (approved version for downstream agents)
- **Full output:** `output/foundations/positioning-document.md` (complete deliverable with working notes)

## Prerequisites

| Prerequisite | Location | Requirement |
|-------------|----------|-------------|
| Market Research Brief | `reference/market-research.md` | Must exist with viability score and market maturity stage |
| ICP Document | `reference/icp.md` | Must exist with completeness score >= 80/100 |

Both documents are required. The Niche Architect will refuse to proceed if either is missing or if the ICP completeness is below 80.

**Key data pulled from prerequisites:**
- From Research Brief: competitive landscape (3-5 competitors), market maturity stage, whitespace opportunities, market economics
- From ICP Document: limiting belief diagnosis, awareness level, "What They've Tried & Failed" section, pain points, desires, exact language patterns

## Process

### 1. Load Prerequisites
- Read `reference/market-research.md` and `reference/icp.md`
- Verify ICP completeness >= 80
- Extract market maturity stage (determines positioning intensity)
- If `--segment` specified, focus on that segment within the data

### 2. Old Vehicle Autopsy
- Pull "What They've Tried & Failed" from the ICP Document
- For each of 3-5 failed methods, document:
  - Vehicle Name (what they tried)
  - Promise Made (what it was supposed to do)
  - Why It Failed (structural reason — not "they didn't try hard enough")
  - Emotional Residue (what belief the failure installed)
  - ICP Language (verbatim phrases from ICP language patterns section)
- Ensure each vehicle failure is documented with the ICP's own words

### 3. Vehicle Switch Design
- Design a fundamentally different approach (not a "2.0" of an existing vehicle)
- Test against five validation criteria:
  - **Category Test:** Cannot be described as "[competitor] but better"
  - **Contrast Test:** A/B comparison is immediately intuitive
  - **Simplicity Test:** A 12-year-old can understand the core difference
  - **Believability Test:** ICP believes this could work for them
  - **Ownability Test:** No competitor could credibly claim the same thing
- All 5 tests must pass. If any fail, redesign before proceeding.

### 4. Mechanism Design
- Create a named mechanism using the [Adjective] + [Noun] + [Result] pattern
- Verify it is explainable in 30 seconds or less
- Connect to the ICP's dominant limiting belief:
  - Worthless → status/identity mechanisms
  - Helpless → process/simplification mechanisms
  - Hopeless → safety/proof mechanisms
- Document what makes it ownable (not a generic concept)
- Provide at least one proof element (creator's results, client results, logical framework)

### 5. Core Belief Statement
- Craft using the exact frame: "If I can get [ICP] to believe that [mechanism] is the key to [dream outcome], and that [old vehicles] were the real reason they haven't achieved [result] yet, then they will see [offer] as the obvious next step."
- Validate: contains exactly ONE belief (not two or three)
- Validate: references mechanism by name
- Validate: points to specific dream outcome from ICP desires section

### 6. Narrative Architecture
Build the creator-as-hero story arc:
- **Origin:** Creator's own struggle with the same problem
- **Discovery:** How the creator found or built the mechanism
- **Transformation:** Creator's own results (with specifics)
- **Mission:** Why the creator now teaches this
- **Invitation:** Natural bridge to the offer

### 7. Category Creation Assessment
- If market maturity is Stage 3 or higher, category creation is **required** — not optional
- Define the new category name, boundaries, and why it is distinct from existing categories
- Position the creator as the category founder

### 8. Final Positioning Statement
- Synthesize everything into a single positioning statement:
  "For [ICP] who [situation], [Creator] is the [category] that [differentiator] because [mechanism] unlike [old vehicles] which [why they fail]."

## Output Format

Two documents produced:

### Niche Validation Document
```
# Niche Validation: [Niche]
- Niche Boundaries (who/what/how/not)
- Competitive Positioning Map (table)
- Whitespace Analysis
- Viability Assessment
```

### Positioning Document (primary deliverable)
```
# Positioning Document
1. Old Vehicle Autopsy (3-5 vehicles with ICP language)
2. Vehicle Switch (old category → new category, 5 test results)
3. Unique Mechanism (name, explanation, belief connection, proof)
4. Core Belief Statement (singular, validated)
5. Narrative Architecture (5-stage story arc)
6. Positioning Statement (final synthesis)
```

## Quality Gates

| Gate | Requirement | Pass Criteria |
|------|------------|---------------|
| Prerequisites Verified | Both research and ICP exist | Research brief present, ICP completeness >= 80 |
| Old Vehicle Completeness | 3-5 vehicles documented | Each has all 5 elements including ICP language |
| Vehicle Switch Validation | All 5 tests passed | Category, Contrast, Simplicity, Believability, Ownability |
| Mechanism Named | Mechanism has a name | Follows [Adj] + [Noun] + [Result] pattern (or compelling variation) |
| Mechanism Differentiated | Mechanism is ownable | No competitor could claim the same thing |
| Mechanism Explainable | 30-second explanation exists | Plain language, no jargon required |
| Core Belief Singular | Exactly one belief | Not two beliefs joined by "and" |
| Competitors Referenced | Named competitors | Minimum 3 from research brief referenced by name |
| Category Creation (Stage 3+) | New category defined | Category named with clear boundaries |
| Narrative Complete | All 5 stages present | Origin, Discovery, Transformation, Mission, Invitation |
