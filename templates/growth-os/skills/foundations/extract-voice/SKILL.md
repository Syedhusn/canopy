# /extract-voice

> Analyze a creator's existing content to extract and document their authentic brand voice patterns, tone, vocabulary, and style.

## Usage

```
/extract-voice [--sources <urls_or_paths>]
```

**Arguments:**
- `--sources <urls_or_paths>` — Optional comma-separated list of URLs or local file paths pointing to the creator's content. If omitted, the agent will attempt to discover content from `company.yaml` social links, website, and any content files in the project.

**Examples:**
```
/extract-voice
/extract-voice --sources "https://youtube.com/@creator, https://twitter.com/creator, ./content/emails/"
/extract-voice --sources "./transcripts/ep1.txt, ./transcripts/ep2.txt, ./sales-pages/main.html"
```

## What It Does

Analyzes a minimum of 10 pieces of the creator's existing content across platforms and formats to extract their authentic voice patterns. This is NOT about creating or designing a new voice — it is about capturing, documenting, and making explicit the voice that already exists in the creator's content.

The resulting Brand Voice Profile serves as the operating manual for all downstream copy and content. Every piece of marketing, email, sales page, and social post produced by the Growth OS should sound like the creator wrote it themselves. The voice profile makes that possible at scale.

## Agent

`brand-voice` — Brand Voice Extractor

## Destination

- **Reference copy:** `reference/brand-voice.md` (approved version for downstream agents)
- **Full output:** `output/foundations/brand-voice-profile.md` (complete profile with analysis notes and source catalog)

## Prerequisites

| Prerequisite | Location | Requirement |
|-------------|----------|-------------|
| Creator content | Various (URLs, files, or discoverable from `company.yaml`) | Minimum 10 pieces of content across 2+ platforms/formats |
| ICP Document | `reference/icp.md` | Recommended (for voice-ICP alignment check) |
| Positioning Document | `reference/positioning.md` | Recommended (for voice-positioning alignment) |

**Strict requirement:** At least 10 pieces of creator content must be available for analysis. Without sufficient content, voice extraction produces unreliable patterns. If fewer than 10 pieces are available, the agent will report the gap and request additional content before proceeding.

**Recommended (not required):** The ICP Document and Positioning Document enable the voice-ICP alignment assessment in Section 12 of the profile. If they are not available, that section is marked as pending.

## Process

### 1. Content Discovery & Cataloging
- Check `company.yaml` for social links, website URL, content platforms
- If `--sources` provided, use those as the primary content set
- Catalog all available content with: title, format, platform, date, URL/path
- Verify minimum 10 pieces across 2+ platforms/formats
- If fewer than 10: STOP and report the gap — do not proceed with insufficient data

### 2. Content Analysis (Per Piece)
For each of the 10+ content pieces, analyze and document:
- **Format:** Video, email, social post, blog, sales page, podcast, etc.
- **Platform:** YouTube, email, Twitter/X, LinkedIn, website, etc.
- **Date:** When it was created (recency affects relevance — recent content weighted higher)
- **Voice observations:** 3-5 bullet points on tone, vocabulary, structure
- **Notable phrases:** Sentences or phrases that feel "most like them"
- **Emotional register:** What emotions are present and how they are expressed

### 3. Voice Pattern Extraction (Six Dimensions)
Synthesize across all analyzed content:

**a. Sentence Structure**
- Average sentence length, variety, fragment usage
- Question frequency, command frequency
- Paragraph length, list vs. prose preference

**b. Vocabulary Patterns**
- Signature words (overused tells)
- Avoided words (what they never say)
- Jargon level, profanity usage, coined terms
- Filler patterns ("Look," "Here's the thing")

**c. Humor Style**
- Type (self-deprecating, sarcastic, observational, dark, puns, absurdist, none)
- Frequency and context (when do they deploy humor?)
- Boundaries (what they would never joke about)

**d. Metaphor & Analogy Patterns**
- Source domains (sports, war, cooking, building, nature)
- Frequency, originality, use of extended metaphors
- Favorite recurring analogies

**e. Emotional Range**
- Which emotions appear and how frequently
- How each emotion is expressed (specific markers)
- Emotional floor (flattest register) and ceiling (most intense)

**f. Authority Markers**
- How they establish credibility
- Certainty language patterns
- How they handle disagreement

### 4. Tone Spectrum Mapping
Plot the voice on seven spectrums:
- Authoritative ←→ Approachable
- Provocative ←→ Nurturing
- Formal ←→ Casual
- Earnest ←→ Ironic
- Dense ←→ Accessible
- Fast-paced ←→ Measured
- Prescriptive ←→ Exploratory

### 5. Language Level Assessment
Measure:
- Reading grade level (Flesch-Kincaid equivalent)
- Jargon density (low/medium/high)
- Formality index (1-10 scale)
- Sentence complexity distribution (simple/compound/complex)
- Vocabulary diversity (unique words per 1000)

### 6. Anti-Pattern Definition
Define 5+ things this voice NEVER sounds like:
- Each anti-pattern with reason it is wrong for this voice
- Bad example showing what NOT to write
- Good alternative showing the correct approach
- Red flags that indicate copy is off-voice

### 7. Example Rewrites
Take 5+ generic marketing/teaching/selling statements and rewrite them in the creator's voice:
- Cover different contexts: teaching, selling, storytelling, responding to objections, casual social
- For each rewrite, annotate which voice patterns from the profile are demonstrated
- The rewrites should be immediately recognizable as "this person" to anyone who follows them

### 8. Platform Adaptation Mapping
For each platform the creator is active on:
- How does the voice adapt? (shorter on Twitter, more structured on email, etc.)
- What stays consistent across all platforms? (core identity markers)

### 9. Voice-ICP Alignment Check
If ICP Document is available:
- Does this voice match what the ICP responds to?
- Are there alignment gaps (e.g., creator is very casual but ICP expects authority)?
- Minor recommendations for optimization (adjust, not reinvent)

## Output Format

### Brand Voice Profile (12 sections)

```
# Brand Voice Profile: [Creator Name]
Date | Content Analyzed: [X] pieces across [Y] platforms
Confidence Level: [High/Medium/Low]

1. Voice Summary (2-3 sentences, specific enough to distinguish from any competitor)
2. Tone Spectrum (7 visual spectrums with position marked)
3. Vocabulary Patterns (overused words, avoided words, signature phrases, coined terms)
4. Sentence Structure (length, variety, fragments, questions, commands, paragraphs)
5. Emotional Range (emotions present, frequency, expression markers, floor/ceiling)
6. Humor Style (type, frequency, context, boundaries, examples)
7. Authority Markers (credibility methods, certainty language, disagreement handling)
8. Authenticity Markers (what makes the voice feel real, when they are most themselves)
9. Anti-Patterns (5+ with bad examples and good alternatives, red flags)
10. Example Rewrites (5+ generic → this voice, with annotation)
11. Platform-Specific Adaptations (how voice adapts per platform, what stays consistent)
12. Voice-ICP Alignment (match assessment, gaps, recommendations)
```

## Quality Gates

| Gate | Requirement | Pass Criteria |
|------|------------|---------------|
| Content Volume | Sufficient source material | >= 10 pieces of content analyzed |
| Platform Diversity | Cross-platform analysis | Content from 2+ distinct platforms/formats |
| Voice Summary Specificity | Distinguishable profile | Summary specific enough to tell this creator apart from any other in their space |
| Example Rewrites | Voice demonstrated in action | >= 5 rewrites across different contexts (teaching, selling, storytelling, objections, casual) |
| Anti-Patterns Defined | Guardrails established | >= 5 anti-patterns with bad examples, good alternatives, and red flags |
| Signature Phrases | Recurring language identified | >= 5 signature phrases with verbatim sourcing from content |
| All Sections Present | Document completeness | All 12 sections have substantive content (Section 12 may be "pending" if ICP unavailable) |
| Creator Validation | Authenticity check | Profile should be presented for creator confirmation ("Does this sound like you?") |
| Vocabulary Documentation | Words cataloged | Overused words, avoided words, and coined terms all documented with examples |
| Consistency Assessment | Cross-platform coherence | Profile notes which patterns are consistent vs. platform-specific |
