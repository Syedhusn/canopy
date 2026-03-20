# Agent Format Standard

> The standard for writing agent definitions in OSA Operations. Deep behavioral
> definitions with organizational fields and Signal Theory encoding.

## File Convention

Every agent file lives in `agents/{category}/{role-slug}.md` and follows a YAML
frontmatter + Markdown body convention. The frontmatter is machine-readable (parsed by
orchestrators, adapters, and UIs). The body is the agent's injected system prompt.

## Frontmatter Schema

```yaml
---
name: string                    # Display name ("Deal Strategist")
id: string                      # Unique slug ("deal-strategist")
role: string                    # Functional role ("closer", "engineer", "analyst")
title: string                   # Full title ("Senior Deal Strategist")
reportsTo: string | null        # Agent id of manager, or null if top-level
budget: number                  # Monthly USD cap for this agent's API calls
color: string                   # Hex color for UI display (#1B4D3E)
emoji: string                   # Single emoji identifier
adapter: string                 # Default runtime adapter (see below)
signal: string                  # Signal Theory default encoding
tools: [string]                 # Tool slugs this agent can use
skills: [string]                # Skill slugs this agent can invoke (from skills/)
context_tier: string            # Default context loading depth (l0 | l1 | full)
---
```

### Required Fields

All fields are required except:
- `reportsTo` — null for top-level agents (CEO, board)
- `tools` — empty list if agent uses no tools
- `skills` — empty list if agent uses no skills
- `context_tier` — defaults to `l1` if omitted

### Adapter Values

| Adapter | ID | Description |
|---------|-----|------------|
| OSA Native | `osa` | Full feature support including engine commands |
| Claude Code | `claude_code` | Bridge via CLAUDE.md injection |
| Codex | `codex_local` | OpenAI Codex CLI |
| Cursor | `cursor` | Editor context only |
| OpenClaw | `openclaw` | Multi-channel gateway |
| Process | `process` | External process (shell script, HTTP API) |
| HTTP | `http` | HTTP webhook adapter |

### Signal Encoding

The `signal` field encodes the agent's default output mode per Signal Theory:

```
signal: S=(mode, genre, type, format, structure)
```

All 5 dimensions must be resolved. Examples:

```yaml
# A deal strategist who produces MEDDPICC scorecards
signal: S=(linguistic, report, decide, markdown, meddpicc-scorecard)

# A backend engineer who produces system architecture specs
signal: S=(code, spec, commit, markdown, system-architecture)

# An SRE who produces SLO dashboards
signal: S=(data, report, inform, markdown, slo-framework)
```

### Skills

Skills are slash commands defined in `skills/{category}/{skill-slug}/SKILL.md`. The `skills`
field lists which skills this agent is authorized to invoke. At runtime, when a skill is
invoked, the agent reads the corresponding SKILL.md and follows its Process section.

Skills bridge the gap between agent identity (who they are) and agent capability (what they
can do). An agent's `tools` field covers raw integrations; `skills` covers structured
multi-step procedures the agent can execute on demand.

```yaml
# A code reviewer who can invoke /code-review and /lint
skills: [code-review, lint]

# A devops agent who can invoke /deploy, /build, and /health
skills: [deploy, build, health]

# An orchestrator who can invoke all development skills
skills: [build, test, lint, deploy, review, commit, create-pr]
```

## Body Sections

The Markdown body below the frontmatter MUST contain these 8 sections in order:

### 1. Identity & Memory

Role definition, personality traits, domain experience, and persistent context the
agent carries across sessions. Written in second person ("You are...").

```markdown
# Identity & Memory
- **Role**: [functional description]
- **Personality**: [3-4 traits]
- **Memory**: [what the agent remembers across sessions]
- **Experience**: [domain expertise and perspective]
```

### 2. Core Mission

Numbered list of 3-5 primary capabilities. Each is a verb phrase describing what
this agent does.

```markdown
# Core Mission

1. **[Capability verb phrase]** — [description]
2. **[Capability verb phrase]** — [description]
3. **[Capability verb phrase]** — [description]
```

### 3. Critical Rules

Hard behavioral constraints that override any instruction. Written as imperatives.

```markdown
# Critical Rules

- NEVER [prohibited behavior]
- ALWAYS [required behavior]
- When [condition] -> [required action]
```

### 4. Process / Methodology

Domain frameworks, decision trees, and operating procedures. Numbered steps where
order matters. Tables where tradeoffs exist.

```markdown
# Process / Methodology

## [Framework Name]
### Step 1: [Phase]
...
```

### 5. Deliverable Templates

Exact output templates the agent produces. Named and formatted. The agent MUST use
these templates for tracked deliverables — no freeform output.

```markdown
# Deliverable Templates

### Template: [Deliverable Name]
```markdown
# [Title]
## Section 1
...
```

### 6. Communication Style

How the agent communicates, what it leads with, and how it calibrates to receivers.

```markdown
# Communication Style
- **Tone**: [direct / consultative / formal / conversational]
- **Lead with**: [decision / finding / question / action]
- **Default genre**: [brief / spec / report / pitch / ...]
- **Receiver calibration**: [what downstream agents/humans expect]
```

### 7. Success Metrics

Quantified targets the agent self-evaluates against.

```markdown
# Success Metrics
- [Metric]: [target]
- [Metric]: [target]
```

### 8. Skills

Which skills this agent activates and when. Maps skill slugs from frontmatter to
activation conditions specific to this agent's domain.

| Skill | Activates When |
|-------|---------------|
| `/code-review` | On every PR before merge — run structured review |
| `/lint` | After writing code — check style compliance |

## Org Chart

The `reportsTo` field composes agents into a directed acyclic org chart. Cycles are
invalid. The root node is always an agent with `reportsTo: null`.

```
board (reportsTo: null)
  └── ceo (reportsTo: board)
       ├── cto (reportsTo: ceo)
       │    ├── software-architect (reportsTo: cto)
       │    └── sre (reportsTo: cto)
       └── cro (reportsTo: ceo)
            └── deal-strategist (reportsTo: cro)
```

Escalation always traverses upward via `reportsTo` until resolution.

## Validation Rules

An agent file is valid if:

1. YAML frontmatter parses without error
2. All required frontmatter fields are present
3. `signal` field has exactly 5 comma-separated dimensions
4. `reportsTo` references an existing agent id or is null
5. All 8 body sections are present (matched by `# Section Name` headers)
6. `skills` field references existing skill directories in `skills/`
7. No emoji in section headers (emoji are for display, not structure)
8. Deliverable templates are fenced in code blocks
