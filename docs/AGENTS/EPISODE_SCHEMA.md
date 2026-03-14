## Episode Schema (Structured Agent Memory)

Episodes are **short, structured summaries** of what an agent did for a task. They replace long transcripts and allow future agents to recall key decisions with minimal tokens.

Each episode is a single JSON object with the following fields:

```jsonc
{
  "task_id": "HEX-042",                 // REQUIRED: stable identifier for the task/issue
  "agent": "FrontendImplementer",       // REQUIRED: logical agent name
  "objective": "Fix hex click misalignment", // REQUIRED: short human-readable goal

  "files_read": ["index.html"],         // REQUIRED: list of file paths consulted
  "regions_read": ["hex-geometry", "input-handling"], // OPTIONAL: index.html region IDs read
  "files_changed": ["index.html"],      // REQUIRED if any code/docs changed; empty or omitted if read-only

  "observations": [                     // REQUIRED: key findings / diagnoses (1–5 concise bullets)
    "render math used flat-top geometry but hit test used pointy-top"
  ],
  "actions_taken": [                    // REQUIRED for implementing agents, optional for read-only reviewers
    "updated hex coordinate conversion to match rendering orientation"
  ],

  "verification_required": [            // OPTIONAL: what should be tested or reviewed
    "desktop click selection",
    "mobile tap selection"
  ],

  "result": "implemented",              // REQUIRED: 'implemented' | 'partially_implemented' | 'blocked' | 'rejected'
  "confidence": 0.85,                   // REQUIRED: 0.0–1.0 self-assessed confidence

  "links": {                            // OPTIONAL: IDs or URLs for cross-reference
    "issue": "HEX-042",
    "pr": "https://github.com/Aggredicus/permaculture-hex-editor/pull/7"
  }
}
```

---

## Field Reference

### Identification

- **`task_id`** (string, required)  
  Stable identifier for the work item (e.g., `HEX-042`, `GH-issue-17`, `DOC-001`).

- **`agent`** (string, required)  
  Logical agent name. Recommended values include:
  - `ArchitectRouter`
  - `FrontendImplementer`
  - `Verifier`
  - `PerformanceEngineer`
  - `SecurityEngineer`
  - `AccessibilitySpecialist`
  - `DocumentationSteward`
  - `DataSpatialEngineer`
  - `HumanEthicist`
  - `AIEthicist`

- **`objective`** (string, required)  
  One–sentence statement of what the agent tried to accomplish.

### Files and Regions

- **`files_read`** (string[], required)  
  List of files the agent actually read (not what it *could* have read).

- **`regions_read`** (string[], optional)  
  Index.html region IDs or other logical segments read, e.g.:
  - `"state-model"`, `"hex-geometry"`, `"input-handling"`, `"rendering"`,
    `"import-export"`, `"overlay-controls"`, `"undo-redo"`, `"legend-sidebar"`, `"mcp-bridge"`.

- **`files_changed`** (string[], required when changes are made)  
  Files that were modified by this agent. For pure analysis episodes, this may be an empty array or omitted.

### Reasoning and Actions

- **`observations`** (string[], required)  
  1–5 concise bullets capturing:
  - What was discovered
  - Any surprising behaviors or constraints
  - Design or architectural implications

- **`actions_taken`** (string[], required for implementers, optional for others)  
  1–5 concise bullets describing concrete changes:
  - “Added region markers to hex-geometry and input-handling”
  - “Updated import payload validation to reject missing grid radius”
  - “Clarified performance routing rules in ROUTING_RULES.md”

### Verification and Result

- **`verification_required`** (string[], optional)  
  What should be tested to consider the work complete:
  - Behavioral tests, UX checks, performance probes, etc.

- **`result`** (string, required)  
  Simple outcome flag:
  - `implemented` – Work is believed complete and ready for verification.
  - `partially_implemented` – Some sub-parts are done, others remain.
  - `blocked` – Work could not proceed (missing info, failing constraints, etc.).
  - `rejected` – Approach deemed incorrect or reverted.

- **`confidence`** (number, required)  
  Self-assessed confidence in the result, between `0.0` and `1.0`.

### Links / Cross‑References

- **`links`** (object, optional)  
  Arbitrary key/value map for PRs, issues, design docs, etc. Keys should be short and stable (e.g., `"issue"`, `"pr"`, `"design_doc"`).

---

## Examples

### Example: Frontend Implementer (index.html bugfix)

```json
{
  "task_id": "HEX-051",
  "agent": "FrontendImplementer",
  "objective": "Fix selection highlight not matching painted tiles",
  "files_read": ["index.html"],
  "regions_read": ["hex-geometry", "rendering", "input-handling"],
  "files_changed": ["index.html"],
  "observations": [
    "selection highlight used an outdated grid radius check",
    "hover logic did not respect new multi-slot rendering"
  ],
  "actions_taken": [
    "aligned selection distance checks with hexDistance helper",
    "ensured selection stroke uses same keyOf/axial helpers as painting"
  ],
  "verification_required": [
    "Click and drag selection across grid edges",
    "Multi-select with brush radius > 0",
    "Hover/selection consistency in legend panel"
  ],
  "result": "implemented",
  "confidence": 0.9,
  "links": {
    "issue": "HEX-051"
  }
}
```

### Example: Verifier (docs-only change)

```json
{
  "task_id": "DOC-003",
  "agent": "Verifier",
  "objective": "Review new routing rules documentation",
  "files_read": [
    "docs/AGENTS/ROUTING_RULES.md",
    "docs/AGENTS/EPISODE_SCHEMA.md"
  ],
  "regions_read": [],
  "files_changed": [],
  "observations": [
    "Routing matrix matches existing agent role definitions",
    "Token budget tiers are documented but can be refined with usage data"
  ],
  "actions_taken": [],
  "verification_required": [
    "Confirm future tasks follow Router→Implementer→Verifier workflow",
    "Ensure episodes are appended for at least 3 subsequent issues"
  ],
  "result": "implemented",
  "confidence": 0.8
}
```

---

## Authoring Guidelines

- Keep episodes **short and information‑dense**; think “post‑hoc summary”, not step‑by‑step transcript.
- Prefer **high‑signal bullets** in `observations` and `actions_taken` over vague descriptions.
- Only list **files and regions actually touched** by this agent.
- When extra context is read beyond what the Router specified, record that explicitly in `files_read` / `regions_read`.

---

## Pruning Rules

- Episodes **replace** storing raw conversational logs.
- For long, multi‑phase tasks:
  - Prefer one episode per **major phase** (e.g., design spike, implementation, verification) rather than per micro‑step.
- When `docs/AGENTS/EPISODE_LOG.md` grows large:
  - Move older episodes into an archive file (e.g., `EPISODE_LOG_ARCHIVE.md`), or
  - Replace a cluster of related episodes with a single higher‑level meta‑episode that summarizes them.

