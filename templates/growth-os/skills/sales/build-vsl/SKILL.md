---
name: "Build VSL"
id: build-vsl
command: /build-vsl
agent: vsl-builder
version: 1.0.0
---

# /build-vsl

Build a complete Video Sales Letter script tailored to the ICP, offer, and brand voice.

## Usage

```
/build-vsl <type> [--length 15|30|45] [--traffic cold|warm|hot] [--ticket low|mid|high]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `type` | Yes | VSL type to build (see types below) |
| `--length` | No | Target length in minutes. Default varies by type. |
| `--traffic` | No | Traffic temperature. Default: warm |
| `--ticket` | No | Ticket level. Default: mid |

## Types

| Type | Slug | Default Length | Best For |
|---|---|---|---|
| Archetype-Based VSL | `archetype` | 20 min | Custom ICP segment, warm traffic |
| 15-Minute VSL | `short` | 15 min | Cold traffic, lower ticket |
| 30-Minute VSL | `standard` | 30 min | Warm traffic, mid-ticket |
| 45-Minute VSL | `deep` | 45 min | High-ticket, deep story |
| Webinar-Style VSL | `webinar` | 60 min | Presentation format, mixed traffic |
| Story-Driven VSL | `story` | 20 min | Narrative-first brands |
| Case Study VSL | `case-study` | 15 min | Results-focused, proof-heavy |

## Examples

```
/build-vsl standard
/build-vsl deep --length 45 --traffic warm --ticket high
/build-vsl short --traffic cold --ticket low
/build-vsl archetype --length 20
/build-vsl case-study --traffic warm
```

## Prerequisites

The following foundation documents must exist before building a VSL:

| Document | Path | Why It's Needed |
|---|---|---|
| ICP Document | `output/foundations/icp.*` | Pain points, objections, language, demographics for callout and story |
| Offer Document | `output/foundations/offer.*` | Value stack, belief stack, guarantee, bonuses, pricing for pitch section |
| Positioning | `output/foundations/positioning.*` | Differentiation, mechanism, unique angle |
| Brand Voice | `output/foundations/voice.*` | Tone, cadence, vocabulary for script authenticity |

If any prerequisite is missing, the agent will notify the user and suggest running the appropriate foundation skill first.

## Process

1. **Load prerequisites** — Read ICP, Offer, Positioning, and Brand Voice documents
2. **Select VSL type** — Match the requested type to the framework template
3. **Calibrate parameters** — Adjust length, depth, and proof density based on traffic temperature and ticket level
4. **Build the hook** — Demographic callout + viewer gain + credibility seed from ICP and proof points
5. **Construct the story arc** — 80% of script: origin, struggle, epiphany, journey, results using creator's story and ICP-resonant language
6. **Write the mechanism section** — 20% of script: framework name, why it works, why alternatives fail, 3-5 pillars
7. **Craft the pitch** — Value stack from offer document, bonuses (2nd best first, best last), investment level, guarantee
8. **Address objections** — Weave top 5-7 ICP objections into story and Q&A sections
9. **Add production notes** — Visual direction, tone cues, timing markers, edit suggestions
10. **Quality review** — Verify 80/20 ratio, objection coverage, voice match, CTA clarity

## Destination

```
output/vsl/{type}-vsl-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| Story Ratio | Story content as % of total script | 75-85% |
| Mechanism Ratio | Mechanism + pitch as % of total script | 15-25% |
| Objection Coverage | ICP objections addressed in script | 100% of top 5-7 |
| Mechanism Clarity | Mechanism is named, explained, and differentiated | Clear and specific |
| CTA Clarity | Single, unambiguous next step | One CTA, one action |
| Voice Match | Script reads in creator's documented voice | Natural and authentic |
| Length Accuracy | Word count matches target length (+/- 10%) | Within range |
| ICP Language | Script uses ICP's documented language patterns | 5+ instances minimum |
| Production Ready | Visual/tone/timing cues included | All sections annotated |

## Output Format

The deliverable is a complete VSL script in markdown with:
- Meta section (type, length, traffic, ticket, ICP segment)
- Full script organized by act (Hook, Story, Mechanism, Pitch)
- Timing markers for each section
- Visual and tone direction in brackets
- Objection tracking table (objection → where addressed → method)
- Production notes section
- [PERSONALIZE] tags where creator must insert their specific details

## Related Skills

| Skill | Relationship |
|---|---|
| build-funnel | VSL feeds into the VSL Funnel architecture |
| sales-script | VSL objection handling informs call scripts |
| objections | VSL uses the same objection library |
