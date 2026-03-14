## Episode Log (Rolling Task Summaries)

This file is a **rolling log of structured episodes** summarizing past work. Each entry should follow the JSON schema in `docs/AGENTS/EPISODE_SCHEMA.md`.

- New episodes are appended to the **bottom** of this file.
- When the file grows large, episodes may be:
  - Moved to an archive file (e.g., `EPISODE_LOG_ARCHIVE.md`), or
  - Replaced by a higher‑level meta‑episode that summarizes several related tasks.

When starting a new task, the Router should:

1. Look for **recent episodes related to the same files/regions**.
2. Select at most **1–3** of them as context for the current task.
3. Include those episodes in the Router’s reasoning context (instead of scanning the entire log).

---

### Example Episodes

#### HEX-050 – Install token‑efficient agent architecture

```json
{
  "task_id": "HEX-050",
  "agent": "ArchitectRouter",
  "objective": "Introduce router→implementer→verifier workflow and token-efficient docs",
  "files_read": [
    "index.html",
    "docs/AGENTS/ROLES.md"
  ],
  "regions_read": [
    "state-model",
    "hex-geometry",
    "input-handling",
    "rendering",
    "import-export",
    "overlay-controls",
    "undo-redo",
    "legend-sidebar",
    "mcp-bridge"
  ],
  "files_changed": [
    "docs/ARCHITECTURE_MAP.md",
    "docs/AGENTS/ROUTING_RULES.md",
    "docs/AGENTS/EPISODE_SCHEMA.md",
    "docs/AGENTS/EPISODE_LOG.md",
    "docs/AGENTS/ROLES.md",
    "index.html"
  ],
  "observations": [
    "Existing agent docs described many roles but not a pruned core set",
    "index.html contained several logical areas but no explicit region markers",
    "A structured episode format was missing, leading to potential long transcripts"
  ],
  "actions_taken": [
    "Documented repo layout and index.html regions in docs/ARCHITECTURE_MAP.md",
    "Defined router→implementer→verifier routing rules and dormant specialists",
    "Introduced a JSON episode schema and created an initial episode log",
    "Inserted REGION comments into index.html to support region-scoped edits",
    "Updated AGENTS/ROLES.md to emphasize three core agents and dormant specialists"
  ],
  "verification_required": [
    "Confirm new docs compile logically and match current code layout",
    "Ensure region markers in index.html do not affect runtime behavior",
    "Verify future tasks can be scoped to specific regions using the new docs"
  ],
  "result": "implemented",
  "confidence": 0.9
}
```

#### DOC-002 – Clarify episode usage

```json
{
  "task_id": "DOC-002",
  "agent": "DocumentationSteward",
  "objective": "Clarify how episodes and routing rules interact",
  "files_read": [
    "docs/AGENTS/ROUTING_RULES.md",
    "docs/AGENTS/EPISODE_SCHEMA.md",
    "docs/AGENTS/EPISODE_LOG.md"
  ],
  "regions_read": [],
  "files_changed": [
    "docs/AGENTS/ROUTING_RULES.md",
    "docs/AGENTS/EPISODE_LOG.md"
  ],
  "observations": [
    "Router responsibilities and episode use needed a concise workflow description",
    "Episode log required guidance on pruning and archive behavior"
  ],
  "actions_taken": [
    "Documented the lightweight Router→Implementer→Verifier workflow in routing rules",
    "Clarified how many episodes to reference and when to prune the log"
  ],
  "verification_required": [
    "Check that future tasks follow the documented workflow",
    "Confirm new contributors can understand episode usage from docs alone"
  ],
  "result": "implemented",
  "confidence": 0.86
}
```

