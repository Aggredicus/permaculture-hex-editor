## Agent Routing Rules (Token‑Efficient Orchestration)

This document defines how AI agents should be **activated and scoped** for work on the permaculture hex editor. It implements a **Slate‑style orchestration**:

> **Router / Systems Architect → Frontend Implementer → Verifier**  
> (with optional dormant specialists)

The goals are:

- Minimize **active agents** per task (max **3** by default)
- Keep **context small** by targeting specific files and regions
- Replace full transcripts with **structured episode summaries**

---

## Core Agents

These three agents form the normal execution pipeline for most issues.

### 1. Router / Systems Architect

**Responsibilities**
- Read:
  - Issue description and acceptance criteria
  - `docs/ARCHITECTURE_MAP.md`
  - 1–3 relevant entries from `docs/AGENTS/EPISODE_LOG.md`
- Classify the task (UI, import/export, performance, docs, etc.)
- Choose which agents to activate
- Define:
  - Token budget tier (small/medium/large)
  - Relevant files and **region IDs** in `index.html`
  - Which prior episodes (if any) to surface to other agents

**Outputs**
- A short routing decision (which agents are active, which regions they may read)
- A **Router episode** appended to `EPISODE_LOG.md`

### 2. Frontend Implementer

**Responsibilities**
- Read only the files/regions selected by Router, typically:
  - `index.html` with specific `// REGION:` sections
  - Any directly related docs/examples
- Apply code or docs changes with tight, focused diffs
- Avoid expanding context unless strictly necessary; if more context is read, record it in the episode.

**Outputs**
- Implementation diffs
- An **Implementer episode** describing:
  - `files_read`, `regions_read`, `files_changed`
  - Key observations and actions taken

### 3. Verifier

**Responsibilities**
- Read:
  - The diff (preferred) or narrow snippets around the changed regions
  - Issue description + acceptance criteria
- Perform:
  - Behavioral reasoning (what might break / what scenarios to test)
  - Basic UX/accessibility sanity checks for visible UI changes
- Decide whether:
  - The change meets the criteria, or
  - Another iteration is required within the allowed review rounds

**Outputs**
- A **Verifier episode** that records:
  - Checks performed
  - Result and confidence
  - Any follow‑up notes for future tasks

---

## Dormant Specialists

These roles are **not active by default**. The Router activates them only when a task clearly needs their expertise.

- **Performance Engineer**
  - Trigger: rendering speed problems, large grid performance, expensive canvas operations.
  - Reads: `index.html` regions `hex-geometry`, `rendering`, and relevant episodes.

- **Security Engineer**
  - Trigger: JSON import/export, file handling, untrusted user input, MCP/WebSocket changes.
  - Reads: `index.html` regions `import-export`, `mcp-bridge`, plus any security‑related docs.

- **Accessibility Specialist**
  - Trigger: touch/gesture interactions, keyboard navigation, contrast/labeling issues.
  - Reads: UI portions of `index.html`, pointer/keyboard handling, and any design docs.

- **Documentation Steward**
  - Trigger: docs or process changes, out‑of‑date READMEs or agent docs.
  - Reads/writes: `docs/`, especially `AGENTS/` and `ARCHITECTURE_MAP.md`.

- **Data / Spatial Engineer**
  - Trigger: GIS data, plant dictionaries, CSV schema issues, coordinate representations.
  - Reads: `index.html` regions `import-export`, CSV parsing logic, and example data under `examples/`.

- **Human Ethicist / AI Ethicist**
  - Trigger: governance rules, automation boundaries, human‑in‑the‑loop constraints, or data ethics.
  - Reads: relevant docs, policy notes, and prior episodes touching on ethics.

Router should **always justify** in its episode why a specialist was activated.

---

## Task Classification Matrix

Use this as a default routing table. The Router may adjust based on context, but should log any deviation.

### UI / Layout / Interaction Issue
- **Agents**:
  - Router / Systems Architect
  - Frontend Implementer
  - Verifier
- **Typical regions**:
  - `state-model`, `hex-geometry`, `input-handling`, `rendering`, `legend-sidebar`

### Import / Export / Schema Issue
- **Agents**:
  - Router / Systems Architect
  - Frontend Implementer
  - Verifier
  - Security Engineer (optional, when changing formats/validation)
- **Typical regions**:
  - `import-export`, `state-model`, plus any related docs/examples

### Performance Issue (Rendering, Large Maps)
- **Agents**:
  - Router / Systems Architect
  - Frontend Implementer
  - Performance Engineer
  - Verifier
- **Typical regions**:
  - `hex-geometry`, `rendering`, `state-model`, `undo-redo`

### Accessibility / Mobile UX Issue
- **Agents**:
  - Router / Systems Architect
  - Frontend Implementer
  - Accessibility Specialist
  - Verifier
- **Typical regions**:
  - UI/layout and `input-handling` (pointer/touch/keyboard)

### Documentation‑Only Issue
- **Agents**:
  - Router / Systems Architect
  - Documentation Steward
- **Typical regions**:
  - `docs/`, `README.md`, `docs/AGENTS/*`

---

## Token Budgets & Review Limits

To prevent runaway token usage:

- **Default maximum active agents**: **3**
  - Router may momentarily “consult” a specialist, but the active set at any time should remain small.
- **Token budget tiers (guideline)**:
  - **Small change** (e.g., single region, small bugfix): ~1–2K tokens.
  - **Medium change** (multi‑region, modest refactor): ~3–6K tokens.
  - **Large change** (cross‑cutting behavior, new feature): ~8–10K tokens, should be rare.
- **Max review rounds**:
  - Verifier should request **no more than 2 additional iterations** unless a critical bug persists.

Router records the chosen tier and any deviation from these defaults in its episode.

---

## Context Loading Rules

All agents should practice **context pruning**:

- Router provides:
  - Issue statement + acceptance criteria
  - Relevant files
  - A list of **region names** for `index.html` (e.g., `["hex-geometry", "input-handling"]`)
  - At most **1–3 relevant episodes** from `docs/AGENTS/EPISODE_LOG.md`
- Implementer and Verifier:
  - Start with the Router‑provided context only.
  - If more context is required (for example, an upstream helper function), they may read it, but must record the additional files/regions in their **episode**.

Agents should **avoid**:
- Loading the entirety of `index.html` unless absolutely necessary.
- Reading every prior episode; instead focus on the few that Router surfaces.

---

## Lightweight Workflow (End‑to‑End)

1. **Router / Systems Architect**
   - Reads issue, acceptance criteria, `ARCHITECTURE_MAP.md`, and a few relevant episodes.
   - Classifies task, selects agents, defines token tier, and lists target files/regions.
   - Writes a short Router episode to `EPISODE_LOG.md`.

2. **Frontend Implementer**
   - Reads only the specified files/regions.
   - Makes focused changes, keeps diffs small.
   - Writes an Implementer episode capturing:
     - `files_read`, `regions_read`, `files_changed`
     - `observations`, `actions_taken`

3. **Verifier**
   - Reads the diff and acceptance criteria (and any minimal surrounding context).
   - Performs behavioral reasoning and basic UX/accessibility checks where relevant.
   - Writes a Verifier episode including:
     - Checks performed
     - Result (`implemented`, `blocked`, etc.) and confidence

4. **(Optional) Specialists**
   - When activated, behave similarly to Implementer/Verifier:
     - Read only the minimal relevant regions and prior episodes.
     - Append their own episode entry explaining what they reviewed or changed.

This workflow should be followed for **every non‑trivial task** to keep reasoning focused and memory compact.

