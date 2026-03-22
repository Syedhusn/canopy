# Team & SOP Frameworks

> Complete frameworks for 6 SOP types, 8 hiring role briefs, and the case study production system. Each framework includes templates, decision trees, quality criteria, and implementation guidance.

---

## Part 1: SOP Frameworks (6 Types)

### SOP Type 1: Sales Process SOP

**Purpose:** Document every step from lead arrival to closed deal, eliminating guesswork and enabling delegation of the sales function.

**Trigger:** A new inbound lead arrives (form submission, DM, referral, ad response).

#### Procedure

**Step 1: Lead Triage (0-5 minutes)**
- Tool: CRM (GoHighLevel / HubSpot) > Inbox > New Leads
- Time: 2 minutes per lead
- Action: Check lead source, review any form data or message content
- Decision Point:
  - If lead submitted application form with qualifying data --> Proceed to Step 2
  - If lead sent a DM or comment with interest signal --> Respond within 5 minutes, proceed to Step 2
  - If lead is a cold inbound with no context --> Send automated qualifying message, wait for response

**Step 2: Initial Qualification (BANT Framework)**
- Tool: Phone/SMS (first attempt) or DM (if social lead)
- Time: 5-10 minutes per lead
- Action: Apply BANT qualification:

```
BANT Qualification Checklist:
B - Budget: "What have you invested in solving this before?" / "What's your budget range?"
    ├── Has invested $1K+ before --> Score: High
    ├── Willing to invest but hasn't before --> Score: Medium
    └── Price-sensitive / no budget --> Score: Low (disqualify if below offer minimum)

A - Authority: "Are you the decision-maker for this investment?"
    ├── Sole decision-maker --> Score: High
    ├── Needs to consult spouse/partner --> Score: Medium (book both on call)
    └── Making decision for someone else --> Score: Low (require decision-maker on call)

N - Need: "On a scale of 1-10, how urgent is solving [problem] for you right now?"
    ├── 8-10 --> Score: High (priority booking)
    ├── 5-7 --> Score: Medium (standard booking)
    └── 1-4 --> Score: Low (nurture sequence, do not book call)

T - Timeline: "When do you want to have this solved by?"
    ├── This month --> Score: High
    ├── This quarter --> Score: Medium
    └── Someday / no timeline --> Score: Low (nurture sequence)
```

- Quality Check: Lead must score Medium or higher on at least 3 of 4 BANT criteria to book a call

**Step 3: Book the Call**
- Tool: Calendly / GHL Calendar > Closer's Calendar
- Time: 2 minutes
- Action: Send booking link with pre-call questionnaire
- Confirmation sequence: Immediate booking confirmation email + SMS reminder 24hr before + SMS reminder 1hr before

**Step 4: Pre-Call Brief (Closer)**
- Tool: CRM > Lead Profile
- Time: 5 minutes before each call
- Action: Review BANT scores, form responses, any notes from setter, social media profile
- Deliverable: 1-paragraph brief on who this person is and what they need

**Step 5: Sales Call Execution**
- Tool: Zoom / Phone
- Time: 30-45 minutes
- Structure:
  1. Rapport (3 min): Build connection, reference something from their application
  2. Discovery (10 min): Deep dive into their situation, pain, failed attempts
  3. Mechanism (8 min): Explain how the methodology works and why it is different
  4. Pitch (7 min): Present the offer, value stack, guarantee
  5. Close (7 min): Ask for the sale, handle objections, present payment options
  6. Next steps (5 min): If yes: payment + onboarding. If no: note objection, schedule follow-up

- Decision Point:
  - If CLOSED --> Trigger onboarding sequence, update CRM to "Closed Won"
  - If "I need to think about it" --> Schedule 48-hour follow-up call, send follow-up email with FAQ
  - If hard NO --> Note reason in CRM, tag for non-buyer nurture sequence
  - If NO SHOW --> Send "sorry we missed you" SMS + reschedule link within 15 minutes

**Step 6: Follow-Up Cadence (for non-closed leads)**
- Day 0: Post-call summary email with offer details and FAQ
- Day 2: Follow-up call or SMS: "Any questions since our chat?"
- Day 5: Value email: relevant case study matching their situation
- Day 10: Final check-in: "Want to revisit the conversation?"
- Day 15: Move to long-term nurture sequence

#### Escalation Triggers

| Trigger | Escalate To | Channel | Response SLA |
|---------|------------|---------|-------------|
| Lead claims refund/chargeback from previous purchase | Operations Manager | Slack #escalations | 2 hours |
| Lead mentions legal or compliance concern | Creator directly | Direct message | 4 hours |
| Lead requests discount or custom pricing | Creator or Sales Manager | Slack #pricing | 24 hours |
| Setter cannot determine qualification (edge case) | Closer for quick assessment | Slack DM | 1 hour |

#### KPIs

| Metric | Target | Owner | Cadence |
|--------|--------|-------|---------|
| Lead response time | < 5 minutes (phone/SMS) | Setter | Per lead |
| Qualified booking rate | > 75% of BANT-qualified leads book a call | Setter | Weekly |
| Call show rate | > 80% | Setter (reminders) | Weekly |
| Close rate | 25-40% | Closer | Weekly |
| Follow-up completion rate | 100% of non-closed leads receive full cadence | Setter | Weekly |

---

### SOP Type 2: Content Production SOP

**Purpose:** Transform the content calendar into published, platform-native assets on schedule without the creator being the bottleneck.

**Trigger:** Content calendar week begins (every Monday at 8am).

#### Procedure

**Step 1: Weekly Briefing (Monday, 30 minutes)**
- Tool: Content calendar (Notion/Airtable) > This Week view
- Action: Content Manager reviews the week's assignments, confirms topic/angle/platform for each piece
- Decision Point:
  - If creator filming is needed --> Confirm filming time on creator's calendar
  - If repurposing from existing content --> Identify source material and assign to editor
  - If guest content --> Confirm guest availability and prep questions

**Step 2: Script/Brief Preparation (Monday-Tuesday)**
- Tool: Google Docs > Content Scripts folder
- Time: 30-60 minutes per piece
- Action: Content Manager writes script outlines or content briefs for each piece
- Quality Check: Each brief includes hook, key points, CTA, and brand voice reminders

**Step 3: Recording/Creation (Tuesday-Wednesday)**
- Tool: Camera setup / screen recording / design tool
- Action: Creator records or Content Manager produces the asset
- Decision Point:
  - If video content --> Creator records, send raw files to editor by Wednesday EOD
  - If written content --> Content Manager drafts, creator reviews Thursday
  - If graphic/carousel --> Designer creates from brief, Content Manager reviews

**Step 4: Editing and Production (Wednesday-Thursday)**
- Tool: Video editing software / Canva / Design tool
- Time: 1-4 hours per piece depending on format
- Action: Editor produces final version according to brand guidelines

**Step 5: Quality Review (Thursday)**
- Tool: Review queue (Notion/Airtable status change)
- Time: 10-15 minutes per piece
- Checklist:
  - [ ] Brand voice aligned (compare to reference/brand-voice.md)
  - [ ] CTA matches buyer journey stage for this content
  - [ ] Hashtags/keywords appropriate for platform
  - [ ] Captions/subtitles added (for video)
  - [ ] Thumbnail/cover image on brand
  - [ ] No spelling/grammar errors

**Step 6: Scheduling and Publishing (Friday)**
- Tool: Later / Buffer / Native platform schedulers
- Action: Schedule all content for the following week
- Confirmation: All scheduled posts visible in the scheduling tool

**Step 7: Performance Tracking (Following Monday)**
- Tool: Platform analytics + tracking spreadsheet
- Action: Record performance metrics for previous week's content
- Metrics: Views, engagement rate, saves, shares, link clicks, DMs received

---

### SOP Type 3: Client Onboarding SOP

**Purpose:** Get every new client from payment to first milestone within 7 days, maximizing engagement and minimizing early churn risk.

**Trigger:** Payment confirmed in Stripe/payment processor.

#### Procedure

**Step 1: Welcome Sequence (Within 1 hour of payment)**
- Tool: CRM automation trigger
- Action: Auto-send welcome email with login credentials, community invite, and "What to expect in your first week" guide
- Decision Point:
  - If high-ticket ($3K+) --> Customer Success sends personal welcome video within 4 hours
  - If mid-ticket ($500-$3K) --> Personal welcome email within 24 hours
  - If low-ticket (<$500) --> Automated welcome sequence only

**Step 2: Access Setup (Within 4 hours)**
- Tool: Course platform (Kajabi/Teachable) + Community (Circle/Skool) + CRM
- Action: VA grants access to all platforms, adds to relevant groups, updates CRM status
- Quality Check: Client can log in and see their dashboard within 4 hours

**Step 3: Kickoff Call or Video (Day 1-2)**
- Tool: Zoom / Loom
- Time: 30 minutes (call) or 10 minutes (personalized Loom)
- Agenda: Introduction, set expectations, identify primary goal, assign first action item
- Deliverable: Written summary of goals and first action sent within 24 hours

**Step 4: First Milestone Assignment (Day 2-3)**
- Action: Assign the specific first deliverable the client must complete
- The First Milestone must be achievable within 5 days and produce a visible result
- Examples: Complete intake assessment, finish Module 1, submit first draft, attend first group call

**Step 5: Day 7 Check-In (Day 7)**
- Tool: Email or DM
- Action: Check if client completed first milestone
- Decision Point:
  - If milestone COMPLETE --> Congratulate, assign next milestone, flag as "Healthy" in CRM
  - If milestone IN PROGRESS --> Encourage, offer help, schedule 1-on-1 check-in
  - If milestone NOT STARTED --> ESCALATE: personal call within 48 hours, flag "At Risk"

---

### SOP Type 4: Lead Management SOP

**Purpose:** Ensure every lead is captured, scored, routed, and nurtured without any falling through the cracks.

**Trigger:** Continuous -- runs automatically with manual oversight.

#### Key Steps

1. **Lead Capture:** All forms, chat widgets, and opt-ins feed into CRM automatically. VA audits for duplicates weekly.
2. **Lead Scoring:** Automated scoring based on: source quality (ad vs organic vs referral), engagement level (emails opened, pages visited), and explicit actions (application submitted, webinar attended).
3. **Lead Routing:** Score 0-30 = nurture sequence. Score 31-60 = setter outreach within 24 hours. Score 61+ = priority setter outreach within 5 minutes.
4. **Nurture Assignment:** Low-score leads enter automated email sequence. Sequence selection based on lead source and interest topic.
5. **Sales Handoff:** When a nurture lead reaches score 60+ or takes a high-intent action (books call, submits application), handoff to setter with full lead history.

---

### SOP Type 5: Quality Assurance SOP

**Purpose:** Ensure every client-facing deliverable meets brand and quality standards before publication or delivery.

**Trigger:** Any content, email, or client deliverable enters the review queue.

#### Key Steps

1. **Brand Voice Check:** Compare against reference/brand-voice.md. Does it sound like the creator? Check vocabulary, sentence structure, tone.
2. **ICP Alignment Check:** Does the content address a documented pain point or desire from reference/icp.md?
3. **CTA Appropriateness:** Does the CTA match the buyer journey stage?
4. **Accuracy Check:** Are all claims substantiated? Numbers correct? Links working?
5. **Platform Compliance:** Meets platform-specific requirements (character limits, image dimensions, video length)?

---

### SOP Type 6: Reporting SOP

**Purpose:** Ensure decision-quality data is available at the right cadence for the right audience.

#### Report Cadence

| Report | Frequency | Owner | Audience | Deadline |
|--------|-----------|-------|----------|----------|
| Daily dashboard | Daily | VA/Admin | Creator | 9am |
| Weekly metrics | Weekly | Marketing + Sales | Creator + Team | Monday 10am |
| Monthly P&L | Monthly | Financial Analyst | Creator | 5th of month |
| Quarterly review | Quarterly | Growth Director | Creator + Team leads | 2 weeks after quarter end |

---

## Part 2: Hiring Role Briefs (8 Roles)

### Role 1: Setter (Appointment Setter)

| Field | Detail |
|-------|--------|
| Department | Sales |
| Reports To | Sales Manager or Creator |
| Compensation | $2K-$4K/month base + $50-$150 per qualified booking |
| OTE | $4K-$8K/month |
| Revenue Impact | Direct -- fills the closer's pipeline |
| Hire When | Revenue > $20K/mo, more leads than creator can personally handle |

**Key KPIs:** Lead response time (<5 min), Qualified booking rate (>75%), Call show rate (>80%), Bookings per day (target: 3-5)

**Day in the Life:** 9am: Review new leads in CRM. 9:30-12: Outbound calls/DMs to warm leads. 12-1: Lunch. 1-4: Continue outreach, follow up on pending leads. 4-5: Update CRM, prepare tomorrow's lead list. 5-5:30: Send end-of-day report.

**Interview Questions (Behavioral):**
1. "Tell me about a time you had to follow up with someone 5+ times before getting a response." -- Looking for: persistence without being pushy
2. "Describe a situation where you had to quickly assess if someone was a good fit." -- Looking for: systematic qualification thinking

### Role 2: Closer (Sales Closer)

| Field | Detail |
|-------|--------|
| Compensation | $3K-$5K/month base + 5-10% of closed revenue |
| OTE | $8K-$20K/month |
| Revenue Impact | Direct -- converts pipeline to revenue |
| Hire When | Revenue > $30K/mo, consistent call volume |

**Key KPIs:** Close rate (25-40%), Revenue per call ($500+), Refund rate on deals closed (<5%), Show rate (>85%)

### Role 3: SDR/Dialer

| Field | Detail |
|-------|--------|
| Compensation | $2K-$3K/month base + $25-$75 per qualified lead |
| OTE | $4K-$7K/month |
| Revenue Impact | Direct -- creates pipeline from cold/warm outbound |
| Hire When | Revenue > $50K/mo, outbound strategy defined |

**Key KPIs:** Dials per day (80-120), Conversations per day (15-25), Qualified leads per day (3-5), Transfer/booking rate (>20%)

### Role 4: Content Manager

| Field | Detail |
|-------|--------|
| Compensation | $3K-$5K/month + quarterly performance bonus |
| Hire When | Content is the growth bottleneck, creator cannot maintain cadence |

**Key KPIs:** Content calendar adherence (>90%), Brand voice consistency (>95% pass rate), Cross-platform publishing on schedule, Engagement rate trends

### Role 5: Video Editor

| Field | Detail |
|-------|--------|
| Compensation | $2K-$4K/month salary or per-project rates ($100-$500/video) |
| Hire When | Video is the primary content channel |

**Key KPIs:** Turnaround time (48hr for short-form, 5 days for long-form), Revision rate (<2 rounds per video), Brand guideline adherence, Retention rate on published videos

### Role 6: Customer Success Manager

| Field | Detail |
|-------|--------|
| Compensation | $3K-$5K/month + retention bonus (bonus if churn below target) |
| Hire When | 20+ active clients |

**Key KPIs:** Client health score average (>7/10), Churn rate (<5% monthly), NPS score (>8 average), First milestone completion within 7 days (>90%)

### Role 7: VA/Admin (Virtual Assistant)

| Field | Detail |
|-------|--------|
| Compensation | $1.5K-$3K/month + quarterly performance bonus |
| Hire When | Creator spending >10 hours/week on admin tasks |

**Key KPIs:** Task completion rate (>95%), Response time to requests (<2 hours during business hours), Error rate (<2%), Creator hours freed (target: 10+/week)

### Role 8: Marketing Manager

| Field | Detail |
|-------|--------|
| Compensation | $4K-$7K/month + percentage of revenue growth |
| Hire When | Ad spend > $5K/mo, marketing needs dedicated strategic management |

**Key KPIs:** ROAS (>3x), Cost per lead (<target), Lead volume (meeting monthly targets), Campaign launch adherence (on time, on budget)

---

## Part 3: Case Study Framework

### The SCSR Structure

| Section | Word Count | Purpose | Must Include |
|---------|-----------|---------|-------------|
| Situation | 150-250 words | Mirror the ICP's current reality | Demographics, starting conditions, emotional state |
| Challenge | 150-250 words | Mirror the ICP's pain points | Primary pain, failed attempts, limiting belief, urgency |
| Solution | 200-300 words | Reference the mechanism | Discovery, initial skepticism, key insight, implementation steps |
| Results | 200-300 words | Prove transformation | Primary measurable result, secondary results, timeline, ongoing trajectory |

### Testimonial Quality Levels

| Level | Description | Conversion Power |
|-------|-------------|-----------------|
| 1 | Generic praise ("Great product!") | Near zero |
| 2 | Specific result, no story ("Increased revenue 40%") | Low-medium |
| 3 | Result + mechanism reference | Medium |
| 4 | Skepticism + result ("I was skeptical, but...") | High |
| 5 | Regret framing ("I wish I found this 2 years ago") | Very high |
| 6 | Full documented journey (video) | Maximum |

### Funnel Position Mapping

| Position | Case Study Type | Best Format |
|----------|----------------|-------------|
| Top of funnel | Aspirational results | Social snippet, before/after graphic |
| Middle of funnel | Relatable journey | Written case study, video interview |
| Bottom of funnel | Detailed transformation | Full case study, results timeline |
| Post-purchase | Peer validation | Community post |

### Mentee Interview Guidelines

- Text, do not email -- keep it casual
- 15-25 minutes maximum
- No prep questions sent in advance (spontaneity = authenticity)
- Record with permission
- Conversation flow: Warm-up (2-3 min) > Before (5-7 min) > Decision (3-5 min) > Journey (5-7 min) > Results (3-5 min) > Reflection (2-3 min)
- Listen for: specific numbers, emotional inflection points, "I almost didn't..." statements, "The thing that changed everything was..." moments

### Case Study Portfolio Coverage Targets

| Dimension | Minimum Coverage |
|-----------|-----------------|
| ICP segments | At least 1 case study per major segment |
| Starting points | Range from beginners to experienced |
| Result types | Revenue + lifestyle + speed results |
| Funnel positions | Top + Middle + Bottom |
| Objection types | At least 1 per top-5 ICP objection |
