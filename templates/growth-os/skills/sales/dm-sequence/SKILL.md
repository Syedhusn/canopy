---
name: "DM Sequence"
id: dm-sequence
command: /dm-sequence
agent: dm-sales
version: 1.0.0
---

# /dm-sequence

Build a complete direct message sales sequence for any platform and conversation type.

## Usage

```
/dm-sequence <type> [--platform instagram|twitter|linkedin] [--ticket low|mid|high]
```

## Arguments

| Argument | Required | Description |
|---|---|---|
| `type` | Yes | DM sequence type to build (see types below) |
| `--platform` | No | Target platform. Default: instagram |
| `--ticket` | No | Ticket level. Default: mid |

## Types

| Type | Slug | Messages | Timeline | Best For |
|---|---|---|---|---|
| Cold DM Sequence | `cold` | 5-7 | 2-3 weeks | New prospects, no prior engagement |
| Warm DM Sequence | `warm` | 3-5 | 5-10 days | Engaged followers, commenters |
| Comment-to-DM | `comment` | 3-4 | 2-5 days | Comment section engagement |
| Story Reply Sequence | `story` | 3-5 | 3-7 days | Story engagement triggers |
| Closing Sequence | `closing` | 3-5 | 3-7 days | Qualified but undecided leads |

## Examples

```
/dm-sequence cold --platform instagram --ticket high
/dm-sequence warm --platform linkedin
/dm-sequence comment --platform twitter
/dm-sequence story --ticket mid
/dm-sequence closing --platform instagram --ticket high
```

## Prerequisites

| Document | Path | Why It's Needed |
|---|---|---|
| ICP Document | `output/foundations/icp.*` | Language patterns, pain points for personalization |
| Offer Document | `output/foundations/offer.*` | Value proposition for bridge messages |
| Brand Voice | `output/foundations/voice.*` | Tone calibration for platform-native messaging |

## Process

1. **Load prerequisites** — Read ICP, Offer, and Brand Voice documents
2. **Select sequence type** — Map to the correct conversation arc
3. **Calibrate for platform** — Adjust message length, tone, and format to platform norms (Instagram casual, LinkedIn professional, Twitter brief)
4. **Design the connection stage** — Value-first opening messages with personalization hooks and research checklists
5. **Build the curiosity stage** — Questions that uncover situation and pain without feeling like screening
6. **Write qualification messages** — Natural questions that assess fit (budget, authority, need, timeline)
7. **Create the bridge** — Permission-based transition to call booking (high-ticket) or offer presentation (low-ticket)
8. **Design follow-up cadence** — Re-engagement messages spaced 48-72 hours apart, each adding new value
9. **Write the graceful exit** — Final message that leaves the door open without desperation
10. **Add voice message scripts** — For high-ticket sequences, include 30-60 second voice message talking points
11. **Create branching paths** — Different response branches for positive, question, and no-response scenarios

## Destination

```
output/sequences/{type}-dm-{platform}-{date}.md
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|---|---|---|
| Conversational Tone | Messages sound like genuine 1:1 conversation | No corporate, salesy, or template language |
| Message Length | No single message exceeds 4 sentences or ~50 words | All messages pass |
| Personalization Hooks | Every message has [PERSONALIZE] tags requiring prospect-specific research | All messages tagged |
| No Spam Signals | No links in first 2 messages, no excessive emojis, no mass-DM patterns | Clean audit |
| Qualification Before Pitch | Offer is never presented before qualification is complete | Sequence verified |
| Platform Native | Tone and format match platform communication norms | Platform-appropriate |
| Follow-Up Spacing | No follow-ups less than 48 hours apart | Timing verified |
| Max Follow-Ups | No more than 2 unanswered follow-ups before graceful exit | Sequence ends gracefully |
| Voice Messages | High-ticket sequences include voice message alternatives | Present if ticket > mid |
| Research Checklist | Pre-sequence research requirements documented | Checklist complete |

## Output Format

The deliverable is a complete DM sequence in markdown with:
- Sequence meta (type, platform, ICP, offer, ticket level, goal)
- Pre-sequence research checklist (what to look at before sending Message 1)
- Full message copy for each step with [PERSONALIZE] tags
- Voice message talking points for high-ticket sequences
- Branching paths for different response scenarios
- Follow-up cadence with timing and value hooks
- Graceful exit message
- Performance benchmarks (response rate, qualification rate, booking rate)

## Related Skills

| Skill | Relationship |
|---|---|
| sales-script | DM qualification feeds prospects into sales calls |
| call-prep | DM conversation history informs pre-call briefs |
| build-funnel | DM sequences can drive traffic to funnel entry points |
| objections | DM closing sequences use the same objection reframes |
