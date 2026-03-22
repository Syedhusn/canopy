# ICP Document -- Output Template

> Signal: `S=(data, spec, commit, markdown, icp-profile)`
>
> The single source of truth for who this creator serves. Every piece of copy,
> every ad, every email, every sales call references this document. If the ICP
> is wrong, everything downstream speaks to the wrong person.

## When to Use This Template

Use this template when:
- The `/build-icp` skill is invoked
- Phase 2 of the sequential dependency chain is active
- A Market Research Brief exists and has passed its quality gate (viability score present, 3+ source cross-validation met)
- The creator needs to define or refine their ideal customer profile

Do NOT use this template when:
- No Market Research Brief exists (redirect to `/research` first -- hard dependency)
- The request is for market-level analysis, not customer-level profiling (use `market-research-brief.md`)
- The creator has a validated ICP scoring >= 80 and has not changed their niche or audience

---

## Template Structure

### Section 1: Summary

**Purpose**: A compressed loading payload for L0 context injection. This summary is stored in `company.yaml` and loaded at boot by every downstream agent. It must be dense enough to orient any agent in two sentences.

**Contents**:
- 2-3 sentences that answer: Who is this person? What is their core problem? What transformation are they seeking?
- Must include: audience label, primary pain, desired outcome

**Example format**: "[Audience label] who [core situation]. They struggle with [primary pain] and want [desired outcome]. Currently at [awareness level] awareness -- they [key behavioral indicator]."

**Rules**:
- NEVER exceed 50 words
- ALWAYS make it specific enough that a stranger could identify this person in a room
- NEVER use jargon the audience themselves would not use

---

### Section 2: Demographics

**Purpose**: The observable, measurable characteristics of the ideal customer. These drive targeting parameters in paid media and partnership selection.

**Contents**:
- **Age Range**: e.g., 28-45 (not "millennials" -- be specific)
- **Gender Distribution**: e.g., 70% male / 30% female, or "gender-neutral"
- **Income / Revenue Range**: Personal income or business revenue, depending on B2C vs B2B. Include currency.
- **Location / Geography**: Countries, regions, urban/rural. Include language if relevant.
- **Occupation / Business Type**: Job titles, industries, business models. Be specific -- "agency owner" not "entrepreneur"
- **Business Stage**: Startup (pre-revenue), early (< $100K), scaling ($100K-$1M), established ($1M+), or equivalent life stage for B2C

**Rules**:
- EVERY demographic must cite its evidence source (from Market Research Brief, survey, platform data)
- NEVER use generational labels as the primary identifier ("millennials" is a demographic description, not a targeting parameter)
- ALWAYS include income/revenue -- this is the single most important demographic for offer pricing

---

### Section 3: Psychographics

**Purpose**: The internal landscape -- what drives decisions, what they value, how they see themselves. Psychographics explain WHY they buy. Demographics explain WHO they are.

**Contents**:
- **Values**: What principles guide their decisions? (e.g., freedom over security, growth over comfort, family over career). Rank the top 3-5.
- **Identity Aspirations**: Who do they want to BECOME? Not what they want to have -- who they want to BE. (e.g., "the go-to expert in their niche," "a present parent who also builds wealth," "someone who doesn't trade time for money")
- **Decision-Making Style**: How do they make purchase decisions? Analytical (research-heavy, comparison shoppers), emotional (buy on feeling, justify with logic), social (buy what peers recommend), authority (buy what experts endorse).
- **Risk Tolerance**: How comfortable are they with uncertainty? Risk-averse (need guarantees, social proof), moderate (need logical justification), risk-seeking (early adopters, willing to bet on themselves).

**Rules**:
- ALWAYS ground psychographics in observed behavior or language, not assumptions. "They value freedom" must be supported by evidence like "73% of Reddit posts in this niche mention wanting to 'escape the 9-5' or 'be my own boss'"
- NEVER list psychographics without connecting them to messaging implications
- Identity aspirations must be stated in the audience's own language, not marketing jargon

---

### Section 4: Limiting Belief Diagnosis

**Purpose**: Identify the dominant belief pattern that keeps the audience stuck. This drives the entire belief installation strategy in the offer and content.

**Contents**:
- **Dominant Pattern**: Classify as one of three archetypes:
  - **Worthless**: "I'm not good enough / smart enough / experienced enough to succeed at this." The problem is internal identity. They need permission and proof that someone like them can do it.
  - **Helpless**: "I don't know HOW to do this. I need a system / process / framework." The problem is missing capability. They need a mechanism and a map.
  - **Hopeless**: "I've tried everything and nothing works for me. Maybe this problem can't be solved." The problem is exhausted trust. They need differentiation from everything they have tried before.
- **Secondary Pattern** (if mixed): Many audiences carry a primary + secondary. Note the secondary if evidence supports it.
- **Evidence for Diagnosis**: Cite specific language patterns from the Market Research Brief's Voice of Customer section that support this classification. Minimum 3 verbatim quotes mapped to the diagnosis.
- **Offer Implication**: How this belief pattern should shape the offer design:
  - Worthless → Offer must lead with identity transformation and social proof from similar people
  - Helpless → Offer must lead with a named mechanism/system and clear step-by-step path
  - Hopeless → Offer must lead with "this is different because..." and risk-reversal (strong guarantee)

**Rules**:
- NEVER assign a limiting belief pattern without citing specific language evidence
- ALWAYS connect the diagnosis to an offer architecture implication
- NEVER use all three patterns equally ("they're a mix of all three") -- one must be dominant. If evidence is genuinely equal, flag it as an unresolved question requiring more research.

---

### Section 5: Awareness Level

**Purpose**: Determine how much the audience already knows about their problem and available solutions. This dictates the messaging approach from first touch to sale.

**Contents**:
- **Current Level**: Classify on the awareness spectrum:
  - **Unaware**: Does not know they have the problem. Messaging must agitate latent pain. Lead with story, not solution.
  - **Problem Aware**: Knows the problem exists but not that solutions exist. Messaging must name the problem and introduce the category of solution.
  - **Solution Aware**: Knows solutions exist but has not chosen one. Messaging must differentiate -- why THIS solution over alternatives.
  - **Product Aware**: Knows your specific product but has not bought. Messaging must overcome final objections and create urgency.
  - **Most Aware**: Knows, trusts, and is ready. Messaging needs only the offer and a reason to act now.
- **Evidence for Assessment**: What specific market behavior indicates this awareness level? (e.g., "Search volume for 'how to fix [problem]' is 10x higher than '[product category] reviews,' indicating Problem Aware dominance")
- **Messaging Implication**: What type of content and copy approach is required at this awareness level?

**Rules**:
- ALWAYS provide evidence for the awareness classification -- never assign it by gut feel
- NEVER assume the audience is Product Aware or Most Aware unless there is direct evidence (branded search volume, retargeting audience data)
- Note if the audience spans multiple awareness levels and identify the PRIMARY level (where the plurality sits)

---

### Section 6: Pain Points

**Purpose**: Catalog the audience's pain in sufficient depth to write copy that makes them feel understood. Surface pains open doors. Deep pains close sales.

**Contents**:
- Minimum 5 pain points, each documented at four layers:
  - **Surface Pain**: What they say out loud. The complaint as stated. (e.g., "I can't get enough clients")
  - **Deep Pain**: What they feel at 3am. The emotional reality beneath the surface. (e.g., "I'm terrified I'll have to go back to a job and admit this didn't work")
  - **Compounding Cost**: What inaction costs over 6-12 months. Quantify where possible. (e.g., "Every month without a system costs $5K-$15K in revenue they should be capturing")
  - **Exact Language**: Verbatim phrase(s) from research that express this pain. Source attributed.

**Rules**:
- NEVER list fewer than 5 pain points
- EVERY pain point must include the exact language layer with a real verbatim phrase
- NEVER fabricate the deep pain layer -- it must be inferrable from the surface language and research context
- ALWAYS quantify the compounding cost where data supports it. If no data exists, describe the qualitative compounding effect.
- Surface pains must be stated in the audience's vocabulary, not the creator's

---

### Section 7: Desires & Dream Outcome

**Purpose**: Define what the audience actually wants -- both what they say and what they really mean. The dream outcome becomes the north star for offer design.

**Contents**:
- **Stated Desires**: What they explicitly say they want. (e.g., "I want more clients," "I want to hit $10K/month," "I want a proven system")
- **Unstated Desires**: What they actually want beneath the surface. (e.g., status among peers, freedom from financial anxiety, proving doubters wrong, being seen as successful)
- **Dream Outcome Sentence**: One sentence that captures the complete transformation. Format: "They want to go from [current painful state] to [desired state] and feel [emotional payoff]."
- **Transformation Type**: Classify the primary transformation:
  - **Status**: They want to be seen differently by others (peers, family, industry)
  - **Capability**: They want to be able to DO something they currently cannot
  - **Safety**: They want to eliminate a threat or secure their position

**Rules**:
- ALWAYS distinguish stated from unstated desires -- they are rarely the same
- The dream outcome sentence must be specific to THIS audience, not a generic aspiration
- NEVER ignore the emotional payoff. "Make $10K/month" is the stated desire. "Finally feel like I'm not failing" is the real one.
- Transformation type must connect back to the limiting belief diagnosis (Worthless -> Status, Helpless -> Capability, Hopeless -> Safety -- though exceptions exist with justification)

---

### Section 8: What They've Tried & Why It Failed

**Purpose**: Map the graveyard of previous attempts. This is critical for positioning -- the creator must differentiate from everything that has already disappointed this audience.

**Contents**:
- **Previous Solutions Attempted**: List 3-7 specific solutions, products, or approaches the audience has tried. (e.g., "Bought [Competitor X] course for $997," "Hired a freelance marketer for $2K/month," "Tried to figure it out from YouTube videos")
- **Why Each Failed** (from their perspective): Not why it objectively failed, but why THEY believe it failed. (e.g., "Too generic -- didn't apply to my specific situation," "Required too much time I didn't have," "The guru disappeared after the sale")
- **Money Already Spent**: Estimate the total investment the audience has made in trying to solve this problem. This anchors pricing -- they've already demonstrated willingness to pay.
- **Trust Damage**: How have these failures affected their willingness to try again? (e.g., "Highly skeptical of courses," "Won't buy anything without a guarantee," "Only trusts peer recommendations now")

**Rules**:
- ALWAYS include specific product/service names where known -- "online course" is not enough, "[Creator X]'s $497 program" is useful
- NEVER minimize the trust damage. If the audience has been burned, acknowledge the depth of that damage -- it shapes the entire sales approach
- Money already spent MUST be estimated. This is the single best predictor of willingness to pay for the creator's offer.
- Failed solutions must come from research evidence (reviews, Reddit threads, survey data), not assumptions

---

### Section 9: Objections

**Purpose**: Anticipate and decode the top reasons this audience resists purchasing. Every objection has a surface layer (what they say) and a real layer (what they mean).

**Contents**:
- Top 5 objections, each with three layers:
  - **Surface Objection**: What they say. (e.g., "It's too expensive")
  - **Real Objection**: What they mean. (e.g., "I'm not confident this will work for me specifically, so any price feels like a risk")
  - **Response Framework**: The strategic approach to addressing the real objection. Not a script -- a framework. (e.g., "Show case study of someone in their exact situation who got results. Reframe price against cost of inaction. Offer guarantee that eliminates the risk they're actually worried about.")

**Rules**:
- NEVER list fewer than 5 objections
- ALWAYS decode the real objection -- surface-level handling loses sales
- Response frameworks must connect to specific proof points or offer elements, not generic reassurance
- Objections must be sourced from actual market language (reviews, sales call transcripts, forum threads), not invented

---

### Section 10: Buying Intelligence

**Purpose**: Map the actual buying process -- how this audience goes from "I have a problem" to "I'm giving someone money." This drives funnel architecture and sales process design.

**Contents**:
- **Research Sources**: Where do they go to evaluate solutions? (e.g., YouTube reviews, Reddit threads, Google search, asking in Facebook groups, checking Trustpilot)
- **Trusted Recommenders**: Whose endorsement would move them to purchase? Name specific people, publications, or communities.
- **Purchase Triggers**: What life events, pain thresholds, or circumstances push them from "thinking about it" to "buying now"? (e.g., "Lost a major client," "Hit a revenue ceiling for 3+ months," "Saw a peer succeed with a similar solution")
- **Decision Timeline**: Is this an impulse purchase (< 24 hours), a considered purchase (1-4 weeks), or a high-deliberation purchase (1-3 months)?
- **Other Decision Makers**: Is anyone else involved in the buying decision? (e.g., business partner, spouse, team, board). What are THEIR objections?

**Rules**:
- ALWAYS include purchase triggers -- these define the targeting criteria for ads and outreach timing
- NEVER assume the decision is made alone. B2B purchases almost always involve multiple stakeholders. Even B2C purchases in high-ticket categories involve partners.
- Decision timeline must be evidence-based, not assumed

---

### Section 11: Information Diet

**Purpose**: Map the media ecosystem the audience inhabits. This drives organic content strategy, partnership opportunities, and ad placement decisions.

**Contents**:
- **Podcasts**: Specific podcast names with approximate audience size if discoverable. Not genres -- names.
- **YouTube Channels**: Specific channels with subscriber counts. Include what type of content performs best on these channels.
- **Books / Newsletters**: What books are referenced in community discussions? What newsletters do they subscribe to?
- **Communities**: Specific Reddit subreddits, Facebook groups, Skool communities, Discord servers, Slack groups. Include size and activity level.
- **Influencers / Thought Leaders**: Named individuals with platform and following size. Note the nature of their influence (tactical advice vs. aspirational vs. entertainment).

**Rules**:
- EVERY entry must be a specific, named entity -- not a category. "Business podcasts" fails. "My First Million (podcast, ~1M downloads/episode)" passes.
- ALWAYS include audience size or activity metric where discoverable
- Minimum 3 entries per subsection, or explicitly flag the gap if fewer than 3 are discoverable
- This section feeds directly into partnership and guest appearance strategy -- accuracy matters more than volume

---

### Section 12: Exact Language Patterns

**Purpose**: The raw linguistic material that feeds every piece of copy produced downstream. These phrases are used verbatim in headlines, hooks, bullet points, email subject lines, and ad copy.

**Contents**:
- **Problem Language** (minimum 5 phrases): How they describe what is wrong. Raw, unedited.
- **Desire Language** (minimum 5 phrases): How they describe what they want. Raw, unedited.
- **Emotional Trigger Words** (minimum 5 phrases): Words and phrases that carry outsized emotional weight for this audience.
- **Purchase Readiness Indicators** (minimum 5 phrases): Language that signals they are actively looking to buy. (e.g., "Can anyone recommend...", "I'm willing to invest in...", "What's the best program for...")

**Total minimum: 20 verbatim phrases across all subsections**

**Rules**:
- NEVER paraphrase. The entire value of this section is that the language is REAL. "Customers want better outcomes" is worthless. "I just need something that actually f***ing works" is gold.
- ALWAYS attribute each phrase to its source (platform, thread, date if available)
- NEVER fabricate phrases. If the research surfaced fewer than 20, include what exists and flag "Language gap: only [N] phrases collected. Additional research needed in [specific sources]."
- Phrases should be organized by category but NOT deduplicated -- slight variations in how different people say the same thing reveal nuance

---

### Section 13: Completeness Score

**Purpose**: Self-assessment of the ICP document's readiness for downstream consumption. The score determines whether the offer architecture agent can begin work.

**Contents**:
- Score each subsection:

| Section | Max Score | Scoring Criteria |
|---------|-----------|-----------------|
| Demographics | /10 | All 6 fields populated with sourced data |
| Psychographics | /20 | All 4 fields populated with evidence-based insights, identity aspiration in audience language |
| Pain Points | /20 | 5+ pain points, all 4 layers per pain, verbatim language sourced |
| Objections | /15 | 5+ objections with all 3 layers decoded, response frameworks connected to proof |
| Buying Intelligence | /15 | All 5 fields populated, purchase triggers evidence-based |
| Awareness Level | /10 | Level classified with evidence cited, messaging implication stated |
| Language Patterns | /10 | 20+ verbatim phrases, attributed to sources, organized by category |
| **TOTAL** | **/100** | |

- **Threshold**: Score must be >= 80 before downstream agents (offer architecture, positioning) consume this document
- **Gap Report**: For any subsection scoring below 50% of its max, list exactly what is missing and what research would fill the gap

**Rules**:
- NEVER inflate the score. An honest 72 that identifies gaps is more valuable than a fraudulent 85 that hides them.
- ALWAYS include the gap report for low-scoring subsections
- If total score is < 80, the document status in `company.yaml` must remain `draft` and the offer architecture agent must not proceed

---

## Shannon Constraints

| Constraint | Limit |
|-----------|-------|
| Total document length | 2,000 - 4,000 words |
| Summary (Section 1) | Maximum 50 words |
| Individual section (2-11) | No section should exceed 500 words |
| Language Patterns (Section 12) | Minimum 20 verbatim phrases |
| Pain Points | Minimum 5, each with 4 layers |
| Objections | Minimum 5, each with 3 layers |
| Information Diet entries | Minimum 3 per subsection |

The ICP document is a reference spec, not a narrative. Density over length. Every sentence must carry information a downstream agent needs. If a sentence could be deleted without any agent losing capability, delete it.

## Quality Gate Criteria

This ICP document PASSES the quality gate when:

1. **Completeness score >= 80/100** with methodology shown per subsection
2. **Summary is <= 50 words** and specific enough to identify the person in a room
3. **Limiting belief diagnosis cites minimum 3 verbatim quotes** as evidence
4. **Awareness level cites specific behavioral evidence** (search patterns, content consumption, purchase history)
5. **Pain points include minimum 5 entries** each with all 4 layers (surface, deep, compounding, exact language)
6. **Exact language section contains minimum 20 verbatim phrases** from real sources
7. **All verbatim language is attributed** to its source -- no orphaned quotes
8. **Every psychographic claim links to observable evidence** -- no unsupported personality assertions
9. **Buying intelligence includes purchase triggers** with real-world examples

This ICP document FAILS the quality gate when:

1. Completeness score < 80 (document remains in draft status)
2. Language patterns are paraphrased instead of verbatim
3. Limiting belief diagnosis is assigned without evidence
4. Summary exceeds 50 words
5. Fewer than 5 pain points are documented
6. Psychographics are stated without evidence ("they value growth" with no supporting data)
7. The document could describe a different niche's audience with minimal changes (specificity failure)
8. Information diet contains categories instead of named entities ("business podcasts" instead of specific names)
9. Buying intelligence omits purchase triggers
