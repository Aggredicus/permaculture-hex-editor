# Ticket Templates and Guidelines

## Ticket Types

### User Story
**Format**: As a [user type], I want [goal] so that [benefit]

**Template**:
```
**Type**: User Story
**Priority**: [Critical/High/Medium/Low]
**Estimate**: [Story Points or Hours]

**As a** [user type]
**I want** [goal]
**So that** [benefit]

**Acceptance Criteria**:
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

**Technical Notes**:
[Any technical considerations]

**Dependencies**:
- [Related tickets]

**Testing Notes**:
[How to test this feature]
```

**Example**:
```
**Type**: User Story
**Priority**: High
**Estimate**: 5 points

**As a** permaculture design student
**I want** to export my hex grid design as a JSON file
**So that** I can save my work and share it with my instructor

**Acceptance Criteria**:
- [ ] Export button is visible and accessible
- [ ] Clicking export creates a JSON file download
- [ ] JSON file contains all hex data, grid config, and overlay settings
- [ ] File name includes date (permaculture-design-YYYY-MM-DD.json)
- [ ] Exported file can be imported back successfully

**Technical Notes**:
- Use JSON.stringify() for serialization
- Include version number in export format
- Validate data before export

**Dependencies**:
- None

**Testing Notes**:
- Create a design with multiple hexes
- Export and verify JSON structure
- Import the exported file and verify data integrity
```

### Bug Report
**Template**:
```
**Type**: Bug
**Priority**: [Critical/High/Medium/Low]
**Severity**: [Critical/High/Medium/Low]

**Description**:
[Clear description of the bug]

**Steps to Reproduce**:
1. Step 1
2. Step 2
3. Step 3

**Expected Behavior**:
[What should happen]

**Actual Behavior**:
[What actually happens]

**Environment**:
- Browser: [Chrome/Firefox/Safari/Edge]
- Device: [Desktop/Mobile/Tablet]
- OS: [Windows/Mac/iOS/Android]
- Screen Size: [if relevant]

**Screenshots/Logs**:
[If applicable]

**Acceptance Criteria**:
- [ ] Bug is fixed
- [ ] No regression introduced
- [ ] Works on all target browsers/devices
```

**Example**:
```
**Type**: Bug
**Priority**: High
**Severity**: Medium

**Description**:
Hex selection doesn't work on mobile devices when tapping near hex edges

**Steps to Reproduce**:
1. Open app on mobile device
2. Tap near the edge of a hex
3. Hex does not select

**Expected Behavior**:
Hex should be selected when tapping anywhere within its bounds

**Actual Behavior**:
Only taps in the center of hex register as selection

**Environment**:
- Browser: Chrome Mobile
- Device: iPhone 12
- OS: iOS 15
- Screen Size: 390x844

**Screenshots/Logs**:
[Console shows touch event coordinates outside hex bounds]

**Acceptance Criteria**:
- [ ] Hex selection works reliably on mobile
- [ ] Touch target area matches visual hex size
- [ ] Works on iOS and Android
```

### Feature Request
**Template**:
```
**Type**: Feature Request
**Priority**: [Critical/High/Medium/Low]
**Estimate**: [Story Points or Hours]

**Description**:
[Clear description of the requested feature]

**User Value**:
[Why this feature is valuable]

**Proposed Solution**:
[How we could implement this]

**Alternatives Considered**:
[Other approaches we could take]

**Acceptance Criteria**:
- [ ] Criterion 1
- [ ] Criterion 2

**Technical Considerations**:
[Technical notes]

**Dependencies**:
- [Related tickets]
```

### Technical Debt
**Template**:
```
**Type**: Technical Debt
**Priority**: [Critical/High/Medium/Low]
**Estimate**: [Story Points or Hours]

**Description**:
[What technical debt exists]

**Impact**:
[How this debt affects the codebase]

**Proposed Refactoring**:
[How to address the debt]

**Acceptance Criteria**:
- [ ] Refactoring complete
- [ ] No functionality broken
- [ ] Code quality improved
- [ ] Tests updated
```

## Acceptance Criteria Guidelines

### Good Acceptance Criteria
- ✅ **Specific**: Clear and unambiguous
- ✅ **Testable**: Can be verified objectively
- ✅ **Achievable**: Realistic to accomplish
- ✅ **Relevant**: Directly related to the ticket goal

### Examples

**Good**:
- User can export design as JSON file
- Export includes all hex data and grid configuration
- File downloads with name format: `permaculture-design-YYYY-MM-DD.json`

**Bad**:
- Export works
- User can save their work
- Export is good

## Estimation

### Story Points (Fibonacci Scale)
- **1**: Trivial task (< 1 hour)
- **2**: Small task (1-2 hours)
- **3**: Medium task (2-4 hours)
- **5**: Large task (4-8 hours)
- **8**: Very large task (1-2 days)
- **13**: Epic (multiple days, should be broken down)

### Time Estimates
- Use hours for bug fixes and small tasks
- Use story points for features and user stories

## Priority Guidelines

### Critical
- Blocks other work
- Security issues
- Data loss bugs
- Must be fixed immediately

### High
- Important features
- Significant bugs affecting many users
- Performance issues
- Next sprint priority

### Medium
- Standard features
- Minor bugs
- Nice-to-have improvements
- Can wait a sprint

### Low
- Future enhancements
- Cosmetic issues
- Documentation improvements
- Can wait multiple sprints

## Ticket Lifecycle

1. **Created**: Ticket is written and added to Backlog
2. **Prioritized**: Product Manager prioritizes during sprint planning
3. **Assigned**: Developer picks up ticket
4. **In Progress**: Developer starts work
5. **Review**: Code complete, awaiting review
6. **Testing**: QA Engineer tests the implementation
7. **Done**: All criteria met, ticket closed

## Labels/Tags

Use these labels to categorize tickets:

- `frontend`: Frontend work
- `ux`: UX/UI design work
- `bug`: Bug fix
- `feature`: New feature
- `enhancement`: Improvement to existing feature
- `documentation`: Documentation work
- `technical-debt`: Code quality improvements
- `mobile`: Mobile-specific work
- `desktop`: Desktop-specific work
- `performance`: Performance optimization
- `accessibility`: Accessibility improvements

## Ticket Examples

### Example 1: User Story
```
**Ticket #001**
**Type**: User Story
**Priority**: High
**Estimate**: 5 points
**Labels**: frontend, feature

**As a** permaculture designer
**I want** to mark hexes as structures
**So that** I can represent buildings and infrastructure in my design

**Acceptance Criteria**:
- [ ] Hex type selector includes "Structure" option
- [ ] Structure hexes have distinct visual style (gray/brown)
- [ ] Structure hexes don't show plant data form
- [ ] Type can be changed back to "Plant" or "Pathway"
- [ ] Export includes hex type information

**Technical Notes**:
- Add `type` field to hex data model
- Create visual style for structure hexes
- Update form to conditionally show plant data

**Dependencies**: None
```

### Example 2: Bug Report
```
**Ticket #002**
**Type**: Bug
**Priority**: Medium
**Severity**: Low
**Labels**: frontend, bug, mobile

**Description**:
Form inputs are too small on mobile devices, making data entry difficult

**Steps to Reproduce**:
1. Open app on mobile device
2. Select a hex
3. Try to enter plant data in form
4. Input fields are too small to tap easily

**Expected Behavior**:
Form inputs should be large enough for easy touch interaction (minimum 44x44px)

**Actual Behavior**:
Input fields are ~30px tall, difficult to tap accurately

**Environment**:
- Browser: Chrome Mobile, Safari Mobile
- Device: Various smartphones
- OS: iOS, Android

**Acceptance Criteria**:
- [ ] All form inputs meet 44x44px minimum touch target
- [ ] Form is usable on phones with 320px width
- [ ] No layout issues introduced
```

### Example 3: Technical Debt
```
**Ticket #003**
**Type**: Technical Debt
**Priority**: Low
**Estimate**: 3 points
**Labels**: frontend, technical-debt

**Description**:
Hex coordinate conversion functions are duplicated across multiple files

**Impact**:
- Code duplication makes maintenance harder
- Inconsistencies possible between implementations
- Harder to optimize performance

**Proposed Refactoring**:
- Extract hex coordinate functions into single utility module
- Create `HexUtils` class with static methods
- Update all references to use centralized functions

**Acceptance Criteria**:
- [ ] All hex coordinate logic in one place
- [ ] No duplicate code
- [ ] All existing functionality works
- [ ] Code is more maintainable
```

---

*Use these templates to ensure consistent, clear ticket documentation throughout the project.*
