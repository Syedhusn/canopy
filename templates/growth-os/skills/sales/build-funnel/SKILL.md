---
name: "Build Funnel"
id: build-funnel
command: /build-funnel
agent: funnel-assets
version: 1.0.0
---

# /build-funnel

Build a complete funnel architecture with page copy, email sequences, and automation triggers.

## Usage

```
/build-funnel <type> [--traffic cold|warm|hot] [--ticket low|mid|high]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `type` | Yes | Funnel type to build (see types below) |
| `--traffic` | No | Primary traffic temperature. Default: warm |
| `--ticket` | No | Ticket level. Default: mid |

## Types

| Type | Slug | Pages | Best For |
|---|---|---|---|
| VSL Funnel | `vsl` | Ad → VSL Page → Application/Checkout | Direct response, proven offer |
| Webinar Funnel | `webinar` | Ad → Registration → Webinar → Application | Education-first selling |
| Application Funnel | `application` | Ad → Long-Form Page → Application → Call | High-ticket services |
| Low-Ticket Funnel | `low-ticket` | Ad → Sales Page → Checkout → Upsell | Digital products, entry offers |
| Challenge Funnel | `challenge` | Ad → Registration → 5-Day Challenge → Pitch | Community-building launch |
| Book-a-Call Funnel | `book-call` | Ad → VSL → Booking Page → Confirmation+Nurture | Consultative sales |
| Tripwire Funnel | `tripwire` | Ad → Low-Price Offer → Upsell Sequence | Lead acquisition |

## Examples

```
/build-funnel vsl
/build-funnel webinar --traffic cold --ticket high
/build-funnel low-ticket --ticket low
/build-funnel application --traffic warm --ticket high
/build-funnel challenge
```

## Prerequisites

| Document | Path | Why It's Needed |
|---|---|---|
| ICP Document | `output/foundations/icp.*` | Pain points, objections, language for all copy |
| Offer Document | `output/foundations/offer.*` | Value stack, pricing, guarantee for pitch pages |
| VSL Script | `output/vsl/*` | Required for VSL and Book-a-Call funnels (optional for others) |
| Brand Voice | `output/foundations/voice.*` | Tone and style for all copy |

If the VSL funnel type is selected and no VSL script exists, the agent will suggest running `/build-vsl` first.

## Process

1. **Load prerequisites** — Read ICP, Offer, Brand Voice, and any existing VSL scripts
2. **Select funnel type** — Map the requested type to the architecture template
3. **Design page flow** — Define every page in the funnel with purpose and conversion goal
4. **Write above-the-fold copy** — Pre-headline, headline, sub-headline, hero direction, primary CTA for each page
5. **Write below-the-fold copy** — Problem agitation, solution intro, social proof, offer, value stack, bonuses, guarantee, FAQ, final CTA, P.S.
6. **Build email sequences** — Pre-event, post-event, and nurture sequences with full copy for each email
7. **Design confirmation/thank-you pages** — Post-conversion pages with long-form video slots and next-step guidance
8. **Write upsell/downsell copy** — If applicable, full copy for upsell offers with one-click acceptance
9. **Specify retargeting triggers** — Exit-intent, scroll-depth, and time-on-page triggers for ad retargeting
10. **Create mobile optimization notes** — Shortened copy variants and layout adjustments for mobile
11. **Define metrics and benchmarks** — Page-specific KPIs with target conversion rates

## Destination

```
output/funnels/{type}-funnel-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| Page Completeness | All pages in funnel have full copy | 100% coverage |
| CTA Presence | Every page has at least one CTA above the fold | All pages pass |
| Email Sequences | All stages have triggered email sequences | Complete sequences |
| Testimonial Slots | Social proof placement marked on every conversion page | Slots specified |
| Mobile Copy | Mobile-optimized lengths noted for headlines and body | All pages annotated |
| ICP Alignment | Headlines and bullets reference documented ICP pain/desire | 100% alignment |
| Funnel Logic | Every page links correctly to the next step | No dead ends |
| Confirmation Pages | Post-conversion pages have content (not just "thank you") | Value-add content |
| Upsell Flow | Upsell/downsell copy present if applicable to funnel type | Complete if needed |
| Metrics Defined | Target conversion rates set for every page | All pages benchmarked |

## Output Format

The deliverable is a complete funnel blueprint in markdown with:
- Architecture overview (funnel type, traffic source, ICP, ticket level, conversion path)
- Full page copy for every page (above-fold and below-fold)
- Complete email sequences with subject lines, body copy, and CTAs
- Upsell/downsell copy if applicable
- Retargeting trigger specifications
- Mobile optimization notes
- Metrics and benchmark targets per page

## Related Skills

| Skill | Relationship |
|---|---|
| build-vsl | VSL script feeds into VSL funnel and Book-a-Call funnel |
| sales-script | Call scripts complement Application and Book-a-Call funnels |
| crm-update | CRM automation tracks funnel stage progression |
| dm-sequence | DM sequences can drive traffic into funnel entry points |
