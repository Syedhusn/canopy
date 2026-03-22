# /retarget
> Produce re-engagement sequences for cold or inactive leads based on their last engagement point and ICP segment

## Usage
```
/retarget <audience-segment> [--channel email|sms|ads]
```

**Arguments:**
- `<audience-segment>` (required): Description of the audience segment to retarget. Examples: `"cold-email-30d"`, `"webinar-no-show"`, `"cart-abandoners"`, `"lead-magnet-no-open"`, `"trial-expired"`, `"past-purchasers-inactive"`
- `--channel` (optional): Delivery channel for the retarget sequence. Defaults to `email`. Options: `email`, `sms`, `ads`

**Examples:**
```
/retarget "cold-email-30d" --channel email
/retarget "webinar-no-show" --channel sms
/retarget "cart-abandoners" --channel email
/retarget "lead-magnet-no-open" --channel email
/retarget "past-purchasers-inactive" --channel email
/retarget "cold-email-60d" --channel ads
```

## What It Does

Produces a complete re-engagement sequence tailored to a specific audience segment based on their last engagement point, the reason they likely went cold, and the most effective re-engagement strategy for their position in the buyer journey. The output adapts to the selected channel (email, SMS, or ad copy).

**Common audience segments and strategies:**

| Segment | Last Engagement | Likely Reason Cold | Re-engagement Strategy |
|---------|-----------------|-------------------|----------------------|
| `cold-email-30d` | Opened emails 30+ days ago | Content fatigue, irrelevance | Fresh value + curiosity hook |
| `cold-email-60d` | No opens in 60+ days | Lost interest, inbox changes | Break-up email, re-opt-in |
| `webinar-no-show` | Registered but did not attend | Schedule conflict, low urgency | Replay access + FOMO |
| `cart-abandoners` | Added to cart, did not purchase | Price objection, distraction | Objection handling + incentive |
| `lead-magnet-no-open` | Downloaded but never opened | Forgot, did not see value | Re-deliver with urgency angle |
| `trial-expired` | Used free trial, did not convert | Uncertain about value | Case study + special offer |
| `past-purchasers-inactive` | Purchased before, gone quiet | Got value, moved on | New offer + loyalty angle |

**Channel-specific outputs:**

| Channel | Output Format | Key Constraint |
|---------|---------------|----------------|
| `email` | Full email sequence (3-5 emails) | Subject lines < 50 chars, single CTA |
| `sms` | SMS sequence (2-3 messages) | Max 160 chars per message |
| `ads` | Ad copy set (3-5 variations) | Platform-specific character limits |

## Agent
`email-sequence` — Email Marketing Sequence Architect (primary), adapts output for SMS and ads channels

## Destination
`output/sequences/retarget-[segment]-[channel]-[date].md`

## Prerequisites
Required:
- `reference/icp.md` — ICP profile with pain points, desires, objections, and awareness levels (to understand why the segment went cold and what will re-engage them)

Recommended:
- `reference/offers.md` — Current offer stack (for any promotional re-engagement angle)
- `reference/brand-voice.md` — Brand voice profile (for writing in the creator's voice)

## Process

1. **Load Foundations** — Read reference/icp.md and extract pain points, desires, objections, awareness levels, and language patterns. Load reference/offers.md to identify current offers for any promotional re-engagement. Load reference/brand-voice.md for voice calibration.

2. **Analyze Audience Segment** — Based on the provided segment description, determine:
   - Last known engagement point (what they last did)
   - Estimated awareness level at time of disengagement
   - Most likely reason for going cold (content fatigue, price objection, timing, relevance mismatch, life change)
   - Re-engagement temperature (how warm/cold they are now)

3. **Select Re-engagement Strategy** — Choose from proven strategies based on the segment analysis:
   - **Curiosity Revival:** New angle on a known pain point (for content fatigue)
   - **Value Bomb:** Deliver unexpected free value (for low-trust segments)
   - **Social Proof Surge:** Testimonials and results from since they left (for skeptics)
   - **Break-Up Sequence:** "Should I stop emailing you?" (for long-cold segments)
   - **Exclusive Access:** Special offer or early access (for past purchasers)
   - **FOMO Trigger:** Show what they missed (for no-shows and dropoffs)
   - **Direct Ask:** "What happened?" personal check-in (for high-value leads)

4. **Design Sequence Architecture** — Based on channel and strategy, determine:
   - Number of messages (email: 3-5, SMS: 2-3, ads: 3-5 variations)
   - Timing cadence (re-engagement is faster paced: Day 0, 2, 5 for email)
   - Escalation pattern (value first, then urgency, then break-up or final offer)

5. **Write Sequence Copy** — Write complete copy for all messages in the creator's voice, adapted for the selected channel. Each message has a clear strategic job within the re-engagement arc.

6. **Define List Hygiene Actions** — Specify what happens to subscribers who do not re-engage after the full sequence:
   - Suppress from regular sends (reduce cost, improve deliverability)
   - Move to low-frequency nurture (monthly instead of weekly)
   - Remove from list entirely (for break-up sequences where they do not respond)

7. **Compile Deliverable** — Assemble the complete retarget sequence with segment analysis, strategy rationale, full copy, timing schedule, and list hygiene rules.

## Output Format

```markdown
# Retarget Sequence: [Segment Name]
**Creator:** [name]
**Audience Segment:** [segment description]
**Channel:** [email / sms / ads]
**Sequence Length:** [number of messages/ads]
**Strategy:** [strategy name]

## Segment Analysis
- **Last Engagement:** [what they last did]
- **Estimated Awareness Level:** [level at disengagement]
- **Likely Reason Cold:** [analysis]
- **Re-engagement Temperature:** [cold / cool / warm]
- **Segment Size Estimate:** [if available]

## Strategy Rationale
[Why this re-engagement strategy was selected for this segment]

## Sequence Map
| # | Timing | Purpose | Strategy Layer |
|---|--------|---------|---------------|
| 1 | [when] | [purpose] | [value / proof / urgency / break-up] |
| ... | ... | ... | ... |

---

## Message 1: [Purpose]
**Send:** [timing]
[Full copy — format depends on channel]

---
[Repeat for all messages]

## List Hygiene Rules
- **If re-engaged:** [action — move back to active sequence]
- **If no response after full sequence:** [action — suppress / reduce frequency / remove]
- **Re-engagement success metric:** [what counts as re-engaged — open, click, reply, purchase]

## Performance Targets
| Metric | Target |
|--------|--------|
| Re-engagement rate | [X]% |
| Win-back conversion | [X]% |
| List cleaned | [X]% removed or suppressed |
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|------|----------|----------------|
| Segment Relevance | Sequence copy addresses the specific reason this segment went cold | Segment analysis matches copy |
| Channel Compliance | All messages meet channel-specific constraints (50-char subjects for email, 160-char limit for SMS, platform limits for ads) | 100% compliance |
| Escalation Arc | Sequence progresses from value/curiosity to urgency/break-up without starting aggressive | Arc pattern verified |
| List Hygiene Defined | Clear rules exist for what happens to non-responders after the sequence completes | Hygiene actions documented |
| Brand Voice | All copy matches creator's voice from brand-voice.md | Voice audit passes |
| ICP Alignment | Re-engagement hooks target real pain points and desires from icp.md | Pain point mapping verified |
| Value First | First message delivers value or curiosity — never opens with a pitch or guilt trip | First message reviewed |
| Break-Up Integrity | If a break-up sequence, the break-up email is genuine (actually stop emailing if they do not respond) | Follow-through documented |
