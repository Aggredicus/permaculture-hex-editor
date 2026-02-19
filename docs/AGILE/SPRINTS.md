# Sprint Planning Documentation

## Sprint Overview

### Sprint Duration
- **Length**: 2 weeks (10 working days)
- **Start**: Every other Monday
- **End**: Every other Friday

### Sprint Structure
- **Day 1**: Sprint Planning
- **Days 2-9**: Development
- **Day 10**: Sprint Review & Retrospective

## Sprint Planning Process

### Pre-Planning (Before Sprint)

1. **Backlog Grooming** (1 hour, 2 days before sprint)
   - Review all backlog items
   - Ensure tickets have clear acceptance criteria
   - Estimate new items
   - Identify dependencies

2. **Stakeholder Input** (Ongoing)
   - Gather user feedback
   - Review priorities
   - Identify urgent issues

### Sprint Planning Meeting (Day 1, 2 hours)

#### Part 1: Review Previous Sprint (30 min)
- What was completed?
- What wasn't completed? Why?
- What did we learn?
- Metrics review (velocity, cycle time)

#### Part 2: Select Sprint Goal (15 min)
- Define one clear objective for the sprint
- Example: "Enable users to export and import designs"
- Example: "Complete mobile optimization for hex selection"

#### Part 3: Select Backlog Items (45 min)
- Review prioritized backlog
- Select items based on:
  - Sprint goal alignment
  - Team capacity (velocity)
  - Dependencies
  - Priority
- Break down large items into tasks
- Assign items to team members

#### Part 4: Commit to Sprint (30 min)
- Confirm understanding of all items
- Identify potential blockers
- Set up daily standup schedule
- Confirm sprint goal

### Sprint Capacity Planning

#### Velocity Calculation
- **Velocity**: Average story points completed per sprint
- Track over 3+ sprints for accuracy
- Use velocity to guide sprint planning

#### Capacity Factors
- **Team Size**: Number of developers
- **Availability**: Holidays, time off, meetings
- **Buffer**: 20% buffer for unexpected work

#### Example Calculation
- Team: 2 developers
- Average velocity: 13 points per sprint
- Sprint capacity: 13 points
- Buffer (20%): 2-3 points
- Planned work: 10-11 points

## Sprint Goal Examples

### Sprint 1: Foundation
**Goal**: Create core hex grid rendering system

**Items**:
- Hex grid mathematics and coordinate system
- Canvas rendering setup
- Basic hex display
- Grid configuration controls

**Success Criteria**: User can see and configure a hex grid

### Sprint 2: Interaction
**Goal**: Enable hex selection and basic interaction

**Items**:
- Hex click/tap detection
- Selection highlighting
- Visual feedback
- Mobile touch support

**Success Criteria**: User can select hexes on mobile and desktop

### Sprint 3: Data Management
**Goal**: Add plant data entry and storage

**Items**:
- Plant data model
- Form UI for data entry
- Data persistence in memory
- Form validation

**Success Criteria**: User can enter and edit plant data for hexes

### Sprint 4: Hex Types
**Goal**: Support multiple hex types (plant/structure/pathway)

**Items**:
- Hex type system
- Visual differentiation
- Type switching controls
- Type-specific behaviors

**Success Criteria**: User can mark hexes as structures or pathways

### Sprint 5: Export/Import
**Goal**: Enable saving and loading designs

**Items**:
- JSON export functionality
- File download
- JSON import functionality
- File upload
- Data validation

**Success Criteria**: User can save and reload their designs

### Sprint 6: Image Overlay
**Goal**: Add background image overlay support

**Items**:
- Image upload (file picker and drag-drop)
- Image positioning
- Image scaling
- Opacity controls
- Lock overlay feature

**Success Criteria**: User can overlay site images on their design

### Sprint 7: Responsive UX
**Goal**: Optimize for mobile and desktop

**Items**:
- Mobile touch optimizations
- Desktop keyboard shortcuts
- Adaptive layouts
- Responsive forms
- Performance optimization

**Success Criteria**: App works excellently on phones and computers

### Sprint 8: Polish
**Goal**: Final polish and documentation

**Items**:
- Error handling
- Loading states
- Help text and tooltips
- Documentation updates
- Example files
- Bug fixes

**Success Criteria**: App is production-ready

## Daily Standup

### Format
- **What did I complete yesterday?**
- **What will I work on today?**
- **Are there any blockers?**

### Timing
- **Duration**: 15 minutes maximum
- **Time**: Consistent daily (e.g., 9:00 AM)
- **Format**: Round-robin, keep it brief

### Rules
- Focus on coordination, not problem-solving
- If discussion needed, schedule separate meeting
- Update Kanban board during/after standup

## Sprint Review (End of Sprint)

### Purpose
- Demonstrate completed work
- Gather feedback
- Validate sprint goal achievement

### Format (1 hour)
1. **Demo Completed Work** (30 min)
   - Show features completed
   - Walk through user stories
   - Demonstrate on different devices

2. **Stakeholder Feedback** (15 min)
   - What do they like?
   - What needs improvement?
   - Priority adjustments?

3. **Sprint Goal Review** (15 min)
   - Did we achieve the goal?
   - What helped?
   - What hindered?

## Sprint Retrospective

### Purpose
- Reflect on process
- Identify improvements
- Commit to changes

### Format (1 hour)

#### Part 1: What Went Well? (15 min)
- Celebrate successes
- Identify strengths
- What should we keep doing?

#### Part 2: What Could Be Improved? (15 min)
- Identify pain points
- Discuss challenges
- Be constructive

#### Part 3: Action Items (30 min)
- Generate improvement ideas
- Prioritize actions
- Assign owners
- Set deadlines

### Retrospective Techniques
- **Start/Stop/Continue**: What should we start, stop, or continue?
- **Mad/Sad/Glad**: What made us mad, sad, or glad?
- **4Ls**: Liked, Learned, Lacked, Longed for
- **Sailboat**: What's the wind (helping), anchor (slowing), rocks (risks)?

## Metrics to Track

### Velocity
- Story points completed per sprint
- Track over time to identify trends
- Use for capacity planning

### Cycle Time
- Time from "To Do" to "Done"
- Identify bottlenecks
- Target: < 3 days average

### Throughput
- Number of items completed per sprint
- Track by type (bug, feature, etc.)
- Identify patterns

### Blocked Items
- Count of blocked items
- Average time blocked
- Common blockers

### Sprint Goal Achievement
- Percentage of sprints achieving goal
- Reasons for not achieving
- Adjust planning accordingly

## Sprint Planning Checklist

### Before Planning
- [ ] Backlog is groomed
- [ ] Tickets have acceptance criteria
- [ ] Dependencies identified
- [ ] Previous sprint reviewed
- [ ] Velocity calculated

### During Planning
- [ ] Review previous sprint
- [ ] Set sprint goal
- [ ] Select backlog items
- [ ] Break down large items
- [ ] Assign items
- [ ] Identify blockers
- [ ] Confirm capacity

### After Planning
- [ ] Update Kanban board
- [ ] Communicate sprint goal
- [ ] Schedule daily standups
- [ ] Set up tracking

## Common Sprint Anti-Patterns

### ❌ Don't Do This
- Overcommit (taking too much work)
- Undercommit (taking too little work)
- Ignore sprint goal
- Skip daily standups
- Change sprint goal mid-sprint
- Add work without removing work

### ✅ Do This Instead
- Commit based on velocity
- Focus on sprint goal
- Attend daily standups
- Protect sprint scope
- Communicate blockers early
- Adjust next sprint based on learnings

---

*Sprint planning is iterative. Adjust these practices based on what works for your team.*
