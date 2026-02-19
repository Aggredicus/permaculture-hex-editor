# Kanban Board Documentation

## Board Structure

Our Kanban board follows a standard workflow with five columns:

```
[Backlog] → [To Do] → [In Progress] → [Review] → [Done]
```

### Column Definitions

#### Backlog
- **Purpose**: All potential work items, features, and improvements
- **Entry Criteria**: Any idea, feature request, or identified work
- **Exit Criteria**: Item is prioritized and ready to be worked on
- **Owner**: Product Manager
- **Review Frequency**: Weekly during sprint planning

#### To Do
- **Purpose**: Prioritized work ready to be started
- **Entry Criteria**: 
  - Item has clear acceptance criteria
  - Dependencies are identified
  - Estimated effort is documented
- **Exit Criteria**: Developer picks up the item
- **Owner**: Development Team
- **WIP Limit**: 10 items maximum

#### In Progress
- **Purpose**: Work currently being actively developed
- **Entry Criteria**: Developer has started implementation
- **Exit Criteria**: Code is complete and ready for review
- **Owner**: Individual Developer
- **WIP Limit**: 3 items maximum per developer

#### Review
- **Purpose**: Completed work awaiting review and testing
- **Entry Criteria**: 
  - Code is complete
  - Developer has self-reviewed
  - Unit tests pass (if applicable)
- **Exit Criteria**: 
  - Code review approved
  - QA testing passed
  - Acceptance criteria met
- **Owner**: QA Engineer / Code Reviewer
- **WIP Limit**: 5 items maximum

#### Done
- **Purpose**: Completed, reviewed, and accepted work
- **Entry Criteria**: 
  - All reviews passed
  - All tests passed
  - Documentation updated
  - Deployed/merged (if applicable)
- **Exit Criteria**: N/A (final state)
- **Owner**: N/A

## Workflow Rules

### Moving Items

1. **Backlog → To Do**
   - Product Manager prioritizes during sprint planning
   - Items must have clear acceptance criteria
   - Estimated effort must be documented

2. **To Do → In Progress**
   - Developer selects item based on priority
   - Must check WIP limits before starting
   - Update ticket with start time and assignee

3. **In Progress → Review**
   - Developer marks item complete
   - Self-review checklist completed
   - All code committed and pushed

4. **Review → Done**
   - Code review approved
   - QA testing passed
   - Acceptance criteria verified
   - Documentation updated

5. **Review → In Progress** (Rejection)
   - If review fails, item returns to In Progress
   - Developer addresses feedback
   - Re-submit for review

### Blocked Items

- Items can be marked as "Blocked" in any column
- Blocked items are highlighted in red
- Blocking reason must be documented
- Daily standup should address blockers

### Priority Levels

1. **Critical**: Blocks other work, must be addressed immediately
2. **High**: Important feature or bug fix
3. **Medium**: Standard feature or improvement
4. **Low**: Nice-to-have, can be deferred

## Definition of Done

An item is considered "Done" when:

- [ ] Code is complete and functional
- [ ] Code follows project style guidelines
- [ ] Code is reviewed and approved
- [ ] All tests pass (unit, integration, manual)
- [ ] Documentation is updated (README, comments, docs/)
- [ ] No known bugs introduced
- [ ] Works on target platforms (mobile, desktop)
- [ ] Performance is acceptable
- [ ] Accessibility requirements met
- [ ] Acceptance criteria verified

## Daily Standup

### Format
- What did I complete yesterday?
- What will I work on today?
- Are there any blockers?

### Timing
- 15 minutes maximum
- Daily at consistent time
- Focus on coordination, not problem-solving

## Sprint Planning

### Frequency
- Every 2 weeks (bi-weekly sprints)

### Process
1. Review previous sprint outcomes
2. Review backlog priorities
3. Select items for sprint (capacity-based)
4. Break down large items into tasks
5. Assign items to developers
6. Set sprint goal

### Sprint Goal
- One clear, measurable objective
- Communicated to all stakeholders
- Guides decision-making during sprint

## Retrospective

### Frequency
- End of each sprint

### Format
- What went well?
- What could be improved?
- Action items for next sprint

### Outcomes
- Process improvements
- Team agreements
- Updated workflows

## Metrics

### Track These Metrics
- **Cycle Time**: Time from To Do to Done
- **Lead Time**: Time from Backlog to Done
- **Throughput**: Items completed per sprint
- **WIP**: Work in progress count
- **Blocked Items**: Count and duration

### Review Frequency
- Weekly during sprint
- Detailed analysis in retrospective

## Tools

### For This Project
- **Physical Board**: Use markdown files in `docs/AGILE/`
- **Digital Option**: GitHub Projects, Trello, or similar
- **Tickets**: Documented in `TICKETS.md`

### Ticket Format
See `TICKETS.md` for ticket templates and examples.

## Best Practices

1. **Keep WIP Limits**: Don't start new work if limit reached
2. **Update Regularly**: Move items as work progresses
3. **Communicate Blockers**: Don't let items sit blocked
4. **Review Daily**: Keep board current
5. **Respect Flow**: Don't skip columns
6. **Focus on Value**: Prioritize user-facing features
7. **Small Batches**: Break large items into smaller tasks

## Agent Roles

See `../AGENTS/` for how automated agents interact with this board:
- **Product Manager**: Manages Backlog and prioritization
- **Frontend Developer**: Moves items through In Progress
- **QA Engineer**: Manages Review column
- **UX Designer**: Reviews UX-related items

---

*This Kanban board is a living document. Update as the team learns and improves.*
