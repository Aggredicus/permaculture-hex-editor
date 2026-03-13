
# Agent Roles Overview

This project uses automated agent roles to simulate a professional software development organization.  
Each agent represents a specialized discipline found in real engineering teams and follows defined responsibilities, rules, and collaboration patterns.

The goal of the agent system is to maintain **clear decision structures, reliable development workflows, and high software quality** while remaining compatible with Cursor IDE agent execution.

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
15. **Accessibility Engineer** – Ensures inclusive usability across all user abilities.

---

# Data, Research, and Intelligence Roles

These roles support analytical systems and data-driven development.

16. **Data Ecologist** – Maintains ecological and environmental dataset accuracy.
17. **Data Science Engineer** – Builds statistical analysis pipelines.
18. **Data Quality Engineer** – Ensures dataset integrity and consistency.
19. **Machine Learning Engineer** – Develops predictive and learning models.
20. **Spatial Data Engineer** – Manages geographic and spatial datasets.
21. **Simulation Engineer** – Develops and validates simulation models.
22. **Research Scientist** – Conducts scientific investigation and experimental validation.

---

# Infrastructure and Security Roles

These roles maintain system stability and operational reliability.

23. **DevOps Engineer** – Manages deployment pipelines and infrastructure.
24. **Security Engineer** – Implements application security protections.
25. **Security Director** – Oversees system security strategy and risk mitigation.

---

# Project Coordination Roles

These roles coordinate execution and maintain project organization.

26. **Scrum Master Project Manager** – Facilitates sprint workflows and team coordination.
27. **Kanban Project Manager** – Maintains continuous workflow management.
28. **Program Manager** – Aligns multiple projects and long‑term roadmap goals.
29. **Risk Analyst** – Identifies technical, schedule, and operational risks.

---

# Governance and Human Systems Roles

These roles maintain ethical alignment, collaboration health, and long‑term sustainability.

30. **AI Ethicist** – Provides ethical guidance for AI systems and automation.
31. **Human Ethicist** – Represents human moral agency and human‑in‑the‑loop oversight.
32. **Organizational Psychologist** – Supports healthy collaboration dynamics.
33. **Documentation Steward** – Maintains accurate documentation and knowledge continuity.

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
