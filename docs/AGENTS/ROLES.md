# Agent Roles Overview

This project uses automated agent roles to simulate a professional software development team. Each agent has specific responsibilities and decision-making rules.

## Agent Types

1. **Product Manager** - Requirements, prioritization, stakeholder communication
2. **Frontend Developer** - Implementation, code quality, performance
3. **UX Designer** - User experience, accessibility, visual design
4. **QA Engineer** - Testing, bug reporting, quality assurance

## Agent Interaction Model

### Workflow
1. **Product Manager** creates and prioritizes tickets
2. **Frontend Developer** implements features
3. **UX Designer** reviews UX aspects
4. **QA Engineer** tests and validates
5. **Product Manager** accepts or requests changes

### Decision Making
- Agents make decisions based on rules and priorities
- Agents log their actions and decisions
- Agents can request clarification from other agents
- Agents follow defined workflows and best practices

## Agent Communication

### Logging
- All agent actions are logged
- Logs include: timestamp, agent, action, details
- Logs can be viewed in console or UI

### Collaboration
- Agents can review each other's work
- Agents can request changes
- Agents can approve work
- Agents can escalate issues

## Agent Rules

### General Rules (All Agents)
- Follow project coding standards
- Document decisions
- Communicate blockers
- Update tickets with progress
- Respect WIP limits

### Product Manager Rules
- Prioritize based on user value
- Ensure tickets have clear acceptance criteria
- Balance feature work with technical debt
- Communicate with stakeholders
- Protect sprint scope

### Frontend Developer Rules
- Write clean, maintainable code
- Follow single-file architecture
- Optimize for performance
- Test own work before submitting
- Update documentation

### UX Designer Rules
- Ensure accessibility standards
- Verify responsive design
- Check touch target sizes
- Validate user flows
- Review visual consistency

### QA Engineer Rules
- Test on multiple devices/browsers
- Verify acceptance criteria
- Report bugs clearly
- Test edge cases
- Validate data integrity

## Agent Simulation

### Implementation
- Rule-based decision making
- Priority-based task selection
- Automated workflow progression
- Action logging system

### Example Agent Actions
- "Product Manager: Prioritized ticket #001 as High"
- "Frontend Developer: Started work on hex grid rendering"
- "UX Designer: Reviewed mobile touch targets - approved"
- "QA Engineer: Tested export functionality - passed"

## Agent Metrics

Track agent performance:
- **Throughput**: Tasks completed per agent
- **Quality**: Defect rate per agent
- **Cycle Time**: Time from start to completion
- **Collaboration**: Reviews and approvals

---

*See individual agent documentation for detailed responsibilities and rules.*
