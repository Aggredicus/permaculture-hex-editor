## Repository Architecture Map

This project is a **single–page, single–file web application** for designing permaculture layouts on a hex grid. Most runtime behavior lives in `index.html`, with supporting documentation and simulation helpers in the `docs/` and `agent-simulation.js` files.

- **`index.html`**: Main deployable application. Contains:
  - Dark–themed UI (HUD + side panel)
  - Canvas–based hex grid editor
  - Import/export of JSON maps and PNG images
  - Background image overlay controls
  - Legend, selection inspector, and notes
  - MCP‑style WebSocket bridge and natural‑language command surface
- **`agent-simulation.js`**: Lightweight simulation harness for traditional “team roles” (Product Manager, Frontend Dev, UX, QA) used to model agent behavior and logging in the browser.
- **`docs/`**:
  - Design intent and project documentation
  - Agent role descriptions under `docs/AGENTS/`
  - (This file) high‑level architecture map for AI agents
- **`examples/`**:
  - Example JSON map exports
  - Example CSV plant dictionaries and related assets

Use this map to keep **context small**: when working on an issue, prefer loading only the files and regions listed below that are directly relevant.

---

## Major Regions Inside `index.html`

The main `<script>` block in `index.html` is organized into logical regions. Each region is marked with **line comments** so agents can search for a specific section (for example by `// REGION: hex-geometry`) and operate on that code without reading the entire file.

The regions are:

- **`state-model`**  
  - Comment markers: `// REGION: state-model` … `// END REGION: state-model`  
  - Responsibilities:
    - Application version constant
    - Hex layout orientation definitions
    - Core state containers (tiles, dictionaries, selection)
    - Camera configuration and grid radius
    - Undo/redo snapshot data structures

- **`hex-geometry`**  
  - Comment markers: `// REGION: hex-geometry` … `// END REGION: hex-geometry`  
  - Responsibilities:
    - Cube/axial coordinate helpers
    - Pixel↔hex conversion (`hexToPixel`, `pixelToHex`)
    - Corner generation for hex polygons
    - Distance and range utilities (`hexDistance`, `axialRange`, `generateHexagon`)

- **`rendering`**  
  - Comment markers: `// REGION: rendering` … `// END REGION: rendering`  
  - Responsibilities:
    - Canvas resize and device‑pixel‑ratio handling
    - Background image drawing in world space
    - Hex polygon drawing and stroke styles
    - Multi‑slot fill rendering and label drawing
    - Overall `draw()` function and chip updates

- **`input-handling`**  
  - Comment markers: `// REGION: input-handling` … `// END REGION: input-handling`  
  - Responsibilities:
    - Pointer/touch interactions (drag, pan, zoom, alt‑drag painting)
    - Brush radius–based multi‑select
    - Mouse wheel zoom behavior
    - Keyboard shortcuts (copy/paste selection, undo/redo, clear selection)

- **`import-export`**  
  - Comment markers: `// REGION: import-export` … `// END REGION: import-export`  
  - Responsibilities:
    - CSV parsing and column guessing for plant dictionaries
    - Loading of typed tile/plant dictionaries from CSV
    - Dictionary export as CSV
    - JSON export of the current map (`permahex-map-v2` payload)
    - JSON import of saved maps (including background and UI settings)
    - PNG export of the current view and “full background” PNG export

- **`overlay-controls`**  
  - Comment markers: `// REGION: overlay-controls` … `// END REGION: overlay-controls`  
  - Responsibilities:
    - Background image file input
    - Background opacity, grid opacity, and fill opacity sliders
    - Background lock, scale, reset, and clear controls
    - Camera alignment for “full background” export

- **`undo-redo`**  
  - Comment markers: `// REGION: undo-redo` … `// END REGION: undo-redo`  
  - Responsibilities:
    - History snapshot creation (`captureState`)
    - History application (`applyState`)
    - Undo/redo stacks and UI enablement
    - Time‑travel of tiles, view, and background configuration

- **`legend-sidebar`**  
  - Comment markers: `// REGION: legend-sidebar` … `// END REGION: legend-sidebar`  
  - Responsibilities:
    - Selection panel updates and derived text
    - Legend computation from painted tiles and slots
    - Legend DOM rendering and dirty‑flag refresh logic

- **`mcp-bridge`**  
  - Comment markers: `// REGION: mcp-bridge` … `// END REGION: mcp-bridge`  
  - Responsibilities:
    - MCP‑style tool and resource definitions
    - Natural‑language command parsing
    - WebSocket bridge for external tools
    - Live inspector panels and resource subscriptions

---

## How Agents Should Use Regions

- **Router / Systems Architect**
  - Reads this architecture map and the issue description.
  - Chooses which regions are relevant (for example, `hex-geometry` + `input-handling` for a hit‑testing bug).
  - Instructs implementer to only load those regions plus minimal surrounding context.

- **Frontend Implementer**
  - Searches for the appropriate `// REGION:` markers inside `index.html`.
  - Reads only the marked region and nearby lines to understand the local behavior.
  - Applies focused edits, keeping diffs contained to that region whenever possible.

- **Verifier**
  - Prefers reviewing **diffs** and region‑scoped snippets instead of the full file.
  - Uses the region labels to design targeted test passes (for example, import/export regression tests when `import-export` code changed).

By following these region boundaries, agents can keep **token usage low** while still performing deep, high‑quality reasoning on the parts of the code that matter for each task.

