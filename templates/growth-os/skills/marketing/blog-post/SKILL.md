# /blog-post

> Write an SEO-optimized blog article with keyword targeting, internal linking, and conversion CTAs.

## Usage

```
/blog-post <topic> [--type pillar|cluster|comparison|howto|case-study|listicle] [--word-count 1500-5000] [--keyword "primary keyword"]
```

**Arguments:**
- `<topic>` (required) — The article topic or title concept
- `--type` — Article type (default: inferred from topic)
- `--word-count` — Target word count (default: 2000)
- `--keyword` — Primary target keyword (if not specified, agent will research and recommend)

**Examples:**
```
/blog-post "how to build a personal brand" --type pillar --word-count 4000
/blog-post "best coaching platforms" --type comparison --keyword "best coaching platforms 2026"
/blog-post "step-by-step email funnel setup" --type howto --word-count 2500
/blog-post "client success story: doubling revenue" --type case-study
/blog-post "10 mistakes killing your online business" --type listicle --word-count 3000
/blog-post "complete guide to audience building" --type pillar --word-count 5000 --keyword "how to build an audience online"
```

## What It Does

Produces a complete, publish-ready SEO article including:
- Full article content written in the creator's brand voice
- SEO metadata (title tag, meta description, URL slug)
- Header hierarchy (H1 > H2 > H3) with keyword placement
- FAQ section targeting "People Also Ask" featured snippets
- Internal linking map with anchor text recommendations
- Image recommendations with alt text
- CTA placements for lead magnet or offer conversion
- Content cluster positioning (pillar/cluster relationship)

## Agent

**seo-blog** — The SEO and Blog Content Specialist handles all long-form written content.

## Destination

```
output/marketing/blog/[type]-[sanitized-topic]-[YYYY-MM-DD].md
```

## Prerequisites

| Document | Path | Required Data |
|----------|------|---------------|
| ICP Document | reference/icp.md | Pain points, desires, search behavior, language |
| Brand Voice Profile | reference/brand-voice.md | Tone, vocabulary, sentence structure |
| Positioning Document | reference/positioning.md | Mechanism, differentiation |
| Offer Document | reference/offers.md | Lead magnet details, offer for CTA |

## Process

### Step 1: Load Foundations
Read all prerequisite documents. Extract:
- ICP pain points related to the topic (what are they searching for?)
- Language patterns (how do they describe this problem?)
- Brand voice parameters for long-form writing
- Mechanism name for natural reference throughout
- Lead magnet and offer details for CTA placement

### Step 2: Keyword Research
If `--keyword` is not provided, conduct research:
- Identify primary keyword (100-10K monthly volume, under 40 difficulty)
- Identify 3-5 secondary keywords (semantically related)
- Identify 3-5 "People Also Ask" questions for FAQ section
- Classify search intent (informational, commercial, transactional)
- Validate keyword relevance to ICP (traffic must be from potential buyers)

### Step 3: Select Article Architecture
Based on type:
- **Pillar:** 3000-5000 words, comprehensive, table of contents, links to all cluster articles
- **Cluster:** 1500-2500 words, focused subtopic, links up to pillar page
- **Comparison:** 2000-3500 words, feature tables, verdict, pros/cons, winner recommendation
- **How-To:** 1500-3000 words, numbered steps, screenshots, tips, common mistakes
- **Case Study:** 1500-2500 words, problem > approach > results > lessons, specific metrics
- **Listicle:** 2000-4000 words, numbered items, brief descriptions, actionable takeaways

### Step 4: Write SEO Metadata
- Title tag: Under 60 characters, primary keyword in first 30 characters
- Meta description: Under 155 characters, compelling + keyword + call to action
- URL slug: Short, keyword-containing, hyphenated
- Focus snippet type: Paragraph, list, table, or none

### Step 5: Write the Article
Structure with clear header hierarchy:
- H1: Article title with primary keyword
- Opening 2 paragraphs: Hook + credibility + promise + primary keyword
- H2 sections: Major topic areas with secondary keywords
- H3 subsections: Supporting detail, steps, examples
- FAQ section: 3-5 questions with concise snippet-optimized answers
- Conclusion: Summary + key takeaway + CTA

Writing rules:
- Brand voice throughout (not generic blog voice)
- ICP pain points woven into problem sections
- Mechanism referenced naturally where relevant
- Short paragraphs (2-4 sentences for mobile readability)
- Subheading every 200-300 words
- Primary keyword density 1-2%
- External links to 2-3 authoritative sources
- At least one data point or statistic per major section

### Step 6: Build Internal Linking Map
Define 3-5 internal links:
- Anchor text (descriptive, keyword-rich)
- Target URL
- Placement position within the article
- Plus: list existing articles that should link TO this new article

### Step 7: Define Image Strategy
Recommend 3-5 images:
- Hero image after H1
- Supporting visuals in key sections
- Screenshots or diagrams for how-to content
- Alt text with relevant keywords for each

### Step 8: Place CTAs
Insert natural CTAs:
- In-content CTA after the highest-value section (lead magnet or free resource)
- End-of-article CTA (offer or email list)
- Sidebar/sticky CTA recommendation

### Step 9: Run On-Page SEO Checklist
Verify:
- [ ] Primary keyword in title tag, meta description, H1, first 100 words, at least one H2
- [ ] Secondary keywords in H2s and body naturally
- [ ] Alt text on all images
- [ ] Internal links to 3-5 related articles
- [ ] External links to 2-3 authoritative sources
- [ ] URL slug is short and keyword-containing
- [ ] Table of contents for articles over 2000 words
- [ ] FAQ section targeting "People Also Ask"
- [ ] Mobile-friendly formatting

## Output Format

```markdown
# SEO ARTICLE: [Title]
**Type:** [Type]
**Primary Keyword:** [KW] — Vol: [X]/mo — Diff: [X]/100
**Secondary Keywords:** [List]
**Search Intent:** [Intent type]
**Word Count:** [X words]
**Buyer Stage:** [Stage]

## SEO METADATA
**Title Tag:** [Under 60 chars]
**Meta Description:** [Under 155 chars]
**URL Slug:** /[slug]
**Snippet Target:** [Type]

---

## ARTICLE

[Full article content with H1/H2/H3 hierarchy]
[Written in brand voice]
[ICP pain points woven throughout]
[Mechanism referenced naturally]
[FAQ section at end]

---

## INTERNAL LINKING MAP
| Anchor Text | Target URL | Position |
|-------------|------------|----------|
[Links from this article to others]
[Links from other articles to this one]

## IMAGE RECOMMENDATIONS
| Position | Description | Alt Text |
|----------|-------------|----------|
[3-5 image recommendations]

## CTA PLACEMENTS
[In-content, end-of-article, sidebar CTAs with copy]

## CONTENT CLUSTER
[Pillar/cluster relationship, content gaps]

## ON-PAGE SEO CHECKLIST
[Completed verification]
```

## Quality Gates

- [ ] Primary keyword appears in title tag, meta description, H1, first 100 words, and at least one H2
- [ ] Keyword density is 1-2% (not stuffed)
- [ ] Search intent is correctly matched (format matches what searchers expect)
- [ ] Article is genuinely the most comprehensive answer available for this keyword
- [ ] Header hierarchy is clean (H1 > H2 > H3, no skipped levels)
- [ ] FAQ section targets real "People Also Ask" queries
- [ ] Internal linking map is defined with anchor text
- [ ] Image alt text includes relevant keywords
- [ ] Brand voice is maintained throughout (not generic content mill)
- [ ] ICP pain points are addressed using audience language
- [ ] CTA placements feel natural (not disruptive)
- [ ] Mobile formatting is applied (short paragraphs, frequent subheadings)
- [ ] Article length meets the specified word count target
