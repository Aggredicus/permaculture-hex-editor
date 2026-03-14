
# Agent Roles Overview

This project uses automated agent roles to simulate a professional software development organization.  
Each agent represents a specialized discipline found in real engineering teams and follows defined responsibilities, rules, and collaboration patterns.

The goal of the agent system is to maintain **clear decision structures, reliable development workflows, and high software quality** while remaining compatible with Cursor IDE agent execution.

Most roles described here are **dormant specialists**. For typical work on the hex editor, only a small **core trio** is active:

- Router / Systems Architect
- Frontend Implementer
- Verifier

These three roles are orchestrated according to the routing rules in `docs/AGENTS/ROUTING_RULES.md`, and their work is summarized using the episode schema in `docs/AGENTS/EPISODE_SCHEMA.md`.

---

## Execution Model (Router → Implementer → Verifier)

1. **Router / Systems Architect**
   - Classifies the task (UI, import/export, performance, docs, etc.).
   - Selects which agents to activate (usually at most 3 at a time).
   - Defines token budget and relevant files/regions (see `docs/ARCHITECTURE_MAP.md`).
   - Chooses 1–3 relevant prior episodes from `docs/AGENTS/EPISODE_LOG.md`.

2. **Frontend Implementer**
   - Reads only the files and regions identified by the Router.
   - Applies code or documentation changes with focused diffs.
   - Records an episode describing files/regions read, changes made, and key observations.

3. **Verifier**
   - Reviews diffs and acceptance criteria.
   - Performs behavioral and basic UX/accessibility checks where relevant.
   - Records an episode describing checks performed, result, and confidence.

All other roles in this document are **available**, but the Router only activates them when the task clearly requires their specialty.

---

# Core Development Roles

These roles represent the primary product development workflow.

1. **Product Manager** – Defines requirements, prioritizes work, communicates user needs.
2. **Frontend Developer** – Implements UI features and maintains the main application interface.
3. **Backend Developer** – Implements data systems, services, and application logic.
4. **UX Designer** – Designs interface layout, usability, and visual clarity.
5. **UX Researcher** – Studies user behavior and recommends usability improvements.
6. **Lead Software Designer** – Ensures overall product design coherence.
7. **Systems Architect** – Defines system architecture and technical direction.  
   - **Activation**: Always active as part of the **Router** role.

---

# Quality and Validation Roles

These roles ensure system correctness, reliability, and usability.

8. **QA Analyst** – Converts requirements into structured test plans.
9. **QA Engineer** – Builds automated tests and validation systems.
10. **Test Automation Architect** – Designs the automated testing framework.
11. **Software QC Technician** – Performs exploratory testing and defect discovery.
12. **QC Engineer** – Builds diagnostic tools and validation utilities.
13. **QC Director** – Governs overall quality control and release readiness.
14. **Performance Engineer** – Ensures system performance and scalability.  
    - **Activation**: Dormant specialist; Router activates for rendering or performance issues.
15. **Accessibility Engineer** – Ensures inclusive usability across all user abilities.  
    - **Activation**: Dormant specialist; Router activates for accessibility or mobile UX tasks.

---

# Data, Research, and Intelligence Roles

These roles support analytical systems and data-driven development.

16. **Data Ecologist** – Maintains ecological and environmental dataset accuracy.  
    - **Activation**: Dormant specialist; Router activates when ecological datasets or plant dictionaries are in scope.
17. **Data Science Engineer** – Builds statistical analysis pipelines.  
    - **Activation**: Dormant specialist; rarely needed for core hex editor changes.
18. **Data Quality Engineer** – Ensures dataset integrity and consistency.  
    - **Activation**: Dormant specialist; used when validating or migrating large datasets.
19. **Machine Learning Engineer** – Develops predictive and learning models.  
    - **Activation**: Dormant specialist; used only for ML‑related extensions.
20. **Spatial Data Engineer** – Manages geographic and spatial datasets.  
    - **Activation**: Dormant specialist; Router activates for GIS/spatial integration work.
21. **Simulation Engineer** – Develops and validates simulation models.  
    - **Activation**: Dormant specialist; used for simulation‑heavy features.
22. **Research Scientist** – Conducts scientific investigation and experimental validation.  
    - **Activation**: Dormant specialist; used when research‑grade validation is required.

---

# Infrastructure and Security Roles

These roles maintain system stability and operational reliability.

23. **DevOps Engineer** – Manages deployment pipelines and infrastructure.  
    - **Activation**: Dormant specialist; Router activates for CI/CD or hosting changes.
24. **Security Engineer** – Implements application security protections.  
    - **Activation**: Dormant specialist; Router activates for import/export, file handling, or WebSocket/MCP security concerns.
25. **Security Director** – Oversees system security strategy and risk mitigation.  
    - **Activation**: Dormant specialist; used for high‑level security design decisions.

---

# Project Coordination Roles

These roles coordinate execution and maintain project organization.

26. **Scrum Master Project Manager** – Facilitates sprint workflows and team coordination.  
    - **Activation**: Dormant specialist; generally simulated only for process modeling.
27. **Kanban Project Manager** – Maintains continuous workflow management.  
    - **Activation**: Dormant specialist; used for flow/process improvements.
28. **Program Manager** – Aligns multiple projects and long‑term roadmap goals.  
    - **Activation**: Dormant specialist; used for multi‑initiative planning.
29. **Risk Analyst** – Identifies technical, schedule, and operational risks.  
    - **Activation**: Dormant specialist; used when risks must be explicitly modeled.

---

# Governance and Human Systems Roles

These roles maintain ethical alignment, collaboration health, and long‑term sustainability.

30. **AI Ethicist** – Provides ethical guidance for AI systems and automation.  
    - **Activation**: Dormant specialist; Router activates for governance, automation, or data‑ethics questions.
31. **Human Ethicist** – Represents human moral agency and human‑in‑the‑loop oversight.  
    - **Activation**: Dormant specialist; used when human impact or consent is central.
32. **Organizational Psychologist** – Supports healthy collaboration dynamics.  
    - **Activation**: Dormant specialist; rarely needed for code changes.
33. **Documentation Steward** – Maintains accurate documentation and knowledge continuity.  
    - **Activation**: Dormant specialist; Router activates for documentation‑heavy tasks.

---

# Agent Interaction Model

## Workflow

Typical feature workflow proceeds as follows:

1. **Product Manager** creates and prioritizes tickets
2. **Systems Architect / Lead Software Designer** validate technical and design approach
3. **Developers** implement the feature
4. **UX roles** review usability and interface clarity
5. **QA / QC roles** validate correctness and behavior
6. **Security and Performance roles** verify safety and scalability
7. **Project Managers** coordinate release readiness
8. **Product Manager** approves or requests revisions

---

# Decision Making

Agents operate according to structured rules:

- Agents follow their defined role responsibilities
- Agents log their actions and decisions
- Agents may request input from other agents
- Agents escalate risks or blockers when needed
- Agents maintain traceability between tasks and outcomes

---

# Agent Communication

## Logging

All agent actions are logged.

Logs include:

- timestamp
- agent role
- action performed
- relevant details

Logs may appear in the console or UI.

## Collaboration

Agents collaborate through:

- reviews
- approvals
- change requests
- issue escalation
- documentation updates

Agents should avoid duplicating responsibilities when another agent role is better suited.

---

# Agent Rules

## General Rules (All Agents)

- Follow project coding standards
- Document important decisions
- Communicate blockers early
- Update ticket progress regularly
- Respect workflow limits and priorities

---

# Example Agent Actions

Example system logs may include:

- "Product Manager: Created ticket for hex grid import feature"
- "Systems Architect: Approved architectural approach"
- "Frontend Developer: Implemented UI controls"
- "UX Researcher: Observed usability issue in tile selection"
- "QA Engineer: Added regression test"
- "Performance Engineer: Optimized rendering pipeline"
- "QC Director: Approved release readiness"

---

# Agent Simulation

The agent system operates using:

- rule‑based decision making
- workflow progression rules
- automated logging
- collaborative task review

This structure allows development activity to be simulated or guided within the Cursor IDE environment.

---

# Agent Metrics

Agent performance can be tracked using metrics such as:

- **Throughput** – tasks completed
- **Quality** – defect rate
- **Cycle Time** – development speed
- **Reliability** – stability of delivered features
- **Collaboration** – successful reviews and coordination

---

*See individual agent documentation in the AGENTS directory for detailed responsibilities.*
