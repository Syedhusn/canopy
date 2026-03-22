# /sms-sequence
> Design compliant SMS/text nurture sequences that drive action through personal, timely, and concise messaging

## Usage
```
/sms-sequence <type> [--length 3|5|7]
```

**Arguments:**
- `<type>` (required): One of `reminder`, `event`, `flash-sale`, `cart-abandon`, `check-in`, `countdown`
- `--length` (optional): Number of messages in the sequence. Defaults vary by type.

**Examples:**
```
/sms-sequence reminder --length 4
/sms-sequence event --length 5
/sms-sequence flash-sale
/sms-sequence cart-abandon --length 3
/sms-sequence countdown --length 7
/sms-sequence check-in
```

## What It Does

Produces a complete SMS sequence with full message copy (each message max 160 characters), strategic timing, compliance documentation, and performance targets. Every message is written in a personal, casual tone that feels like a genuine text from the creator, not an automated marketing message.

**Sequence types and defaults:**

| Type | Default Length | Trigger | Primary Metric |
|------|---------------|---------|----------------|
| `reminder` | 3-4 messages | Appointment booked | Show rate |
| `event` | 3-5 messages | Event registration | Attendance rate |
| `flash-sale` | 2-3 messages | Sale start | Click-through rate |
| `cart-abandon` | 2-3 messages | Cart abandoned | Recovery rate |
| `check-in` | 1-2 messages | Post-purchase or milestone | Reply rate |
| `countdown` | 5-7 messages | Launch window start | Conversion rate |

## Agent
`sms` — SMS & Text Nurture Specialist

## Destination
`output/sequences/sms-[type]-[date].md`

## Prerequisites
Required:
- `reference/brand-voice.md` — Brand voice profile (calibrated to a more casual register for SMS)

Recommended:
- `reference/icp.md` — ICP profile with communication preferences and language patterns
- `reference/offers.md` — Offer details (required for flash-sale, cart-abandon, and countdown types)

## Process

1. **Load Foundations** — Read reference/brand-voice.md and calibrate to a casual, personal SMS register (1-2 notches more informal than email). Load reference/icp.md for language patterns and communication preferences. Load reference/offers.md if the sequence involves any promotional content.

2. **Select Sequence Architecture** — Based on the requested type, determine the number of messages, timing intervals, and primary metric. Map each message to a specific purpose within the sequence.

3. **Determine Timing** — Assign send times for each message respecting the 9 AM - 8 PM local time constraint. For reminders, use the proven pattern: immediately after trigger, 24h before, 6h before, 2-3h before (personal text). For events, use: immediately, 48h before, 24h before, 1h before, live now.

4. **Write Messages** — Write each message following the SMS anatomy: Personal Opening (20-30 chars) + Core Message (80-100 chars) + Action/CTA (20-30 chars) + Sign-off (10-15 chars). Validate every message is 160 characters or fewer. Write in the creator's most casual, personal voice.

5. **Add Compliance Elements** — Include opt-out language ("Reply STOP to opt out") in the first message and every 5th message. Verify all send times fall within the 9 AM - 8 PM window. Document consent requirements.

6. **Character Count Verification** — Count every message character-by-character. Any message exceeding 160 characters must be rewritten.

7. **Compile Deliverable** — Assemble the complete sequence document with message map, full copy, character counts, timing schedule, compliance checklist, and performance targets.

## Output Format

```markdown
# SMS Sequence: [Name]
**Creator:** [name]
**Sequence Type:** [type]
**Trigger:** [what starts the sequence]
**Length:** [number of messages]
**Primary Metric:** [target metric]
**Compliance:** Opt-in required, opt-out included, 9AM-8PM send window

## Sequence Map
| # | Timing | Purpose | Chars | CTA |
|---|--------|---------|-------|-----|
| 1 | [when] | [purpose] | [X]/160 | [action] |
| 2 | [when] | [purpose] | [X]/160 | [action] |
| ... | ... | ... | ... | ... |

---

## Message 1: [Purpose]
**Send:** [timing]
**Window:** [9AM-8PM constraint]

> [Message text — max 160 chars]

**Characters:** [X]/160
**CTA:** [desired action]
**Compliance:** [opt-out if applicable]

---
[Repeat for all messages]

## Compliance Checklist
- [ ] Opt-out in message 1
- [ ] All sends within 9AM-8PM
- [ ] Frequency <= 3x/week
- [ ] No false urgency
- [ ] Consent required

## Performance Targets
| Metric | Target |
|--------|--------|
| Delivery rate | [X]% |
| Click rate | [X]% |
| Opt-out rate | < [X]% |
| Primary metric | [X]% |
```

## Quality Gates

| Gate | Criteria | Pass Condition |
|------|----------|----------------|
| Character Limit | Every message is 160 characters or fewer | 100% compliance |
| Personal Tone | Every message sounds like a personal text, not a brand message | Voice audit passes |
| Time Window | All send times fall within 9 AM - 8 PM local time | 100% compliance |
| Frequency Cap | Sequence does not exceed 3 messages per week (except active events/launches) | Frequency verified |
| Opt-Out Present | Opt-out language included in first message and every 5th message | Compliance check passes |
| Creator Sign-Off | Messages include creator's first name as sign-off where appropriate | Personalization verified |
| Single CTA | Each message drives one clear action | CTA clarity verified |
| Timing Rationale | Every message has a documented reason for its specific send time | Timing map complete |
