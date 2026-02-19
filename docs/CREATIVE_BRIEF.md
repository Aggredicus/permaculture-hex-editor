# Creative Brief: Permaculture Hex Grid Design Map Editor

## Project Vision

Create an intuitive, accessible permaculture design tool that enables users of all technical skill levels to plan and visualize garden layouts using a hex grid system. The tool should bridge the gap between simple sketching and complex CAD software, providing professional-quality output while remaining approachable for beginners.

## Target Users

### Primary Users
- **Permaculture Design Course Students**: Students enrolled in PDC programs (like Andrew Millison's course with Oregon State University) who need to create design proposals
- **Professional Permaculture Designers**: Practitioners creating client proposals and site plans
- **Home Gardeners**: Enthusiasts planning permaculture gardens for their properties

### Secondary Users
- **Educational Institutions**: Teachers and instructors demonstrating permaculture design principles
- **Community Garden Coordinators**: Organizers planning shared permaculture spaces

## User Personas

### Persona 1: The Student
- **Age**: 20-40
- **Tech Comfort**: Moderate
- **Goal**: Complete PDC assignment with professional-looking design map
- **Pain Points**: Limited time, needs quick iteration, wants to impress instructors
- **Needs**: Easy to learn, fast to use, exportable for presentations

### Persona 2: The Professional Designer
- **Age**: 30-60
- **Tech Comfort**: High
- **Goal**: Create client proposals with accurate plant placement and data
- **Pain Points**: Needs precise measurements, wants to overlay site photos, requires export capabilities
- **Needs**: Advanced controls, data accuracy, professional output quality

### Persona 3: The Home Gardener
- **Age**: Any
- **Tech Comfort**: Low to Moderate
- **Goal**: Plan a permaculture garden for their backyard
- **Pain Points**: Overwhelmed by complex software, wants simple visual planning
- **Needs**: Intuitive interface, visual feedback, guidance on plant placement

## Key Requirements

### Functional Requirements

1. **Hex Grid System**
   - Configurable grid dimensions
   - Accurate hexagonal geometry
   - Visual clarity for plant placement

2. **Plant Data Management**
   - Common name tracking
   - Latin species name
   - Planting and harvest dates
   - Mature height and canopy diameter
   - Unit conversion (feet/meters)

3. **Hex Type Classification**
   - Plant hexes (with full data)
   - Structure hexes (buildings, sheds, etc.)
   - Pathway hexes (walkways, access routes)

4. **Image Overlay**
   - Import site photos (Google Maps/Earth screenshots)
   - Position and scale overlay
   - Adjustable opacity
   - Lock overlay position

5. **Data Persistence**
   - Export designs as JSON
   - Import saved designs
   - Auto-save to browser storage

6. **Cross-Platform Compatibility**
   - Works on phones (iOS, Android)
   - Works on tablets
   - Works on desktop computers (Windows, Mac, Linux)
   - Works in all modern browsers

### Non-Functional Requirements

1. **Performance**
   - Smooth rendering with 20x20+ hex grids
   - Responsive interactions (<100ms feedback)
   - Efficient memory usage

2. **Usability**
   - Learnable in <5 minutes
   - Intuitive for non-technical users
   - Accessible for all ages

3. **Reliability**
   - Data integrity (no data loss)
   - Error handling and recovery
   - Browser compatibility

4. **Maintainability**
   - Single-file architecture
   - Well-commented code
   - Clear structure

## Design Principles

### 1. Progressive Disclosure
**Show simple controls by default, advanced options on demand**

- Basic mode: Simple hex selection and plant data entry
- Advanced mode: Grid configuration, overlay controls, export options
- Settings panel: Collapsible, clearly labeled

### 2. Visual Feedback
**Immediate visual response to all actions**

- Hex selection: Clear highlight
- Form changes: Instant preview
- Actions: Visual confirmation (animations, color changes)
- Loading states: Progress indicators

### 3. Forgiveness
**Easy undo/redo, clear error messages**

- Undo/redo functionality
- Clear error messages
- Confirmation for destructive actions
- Auto-save with recovery options

### 4. Clarity
**Clean, uncluttered interface focused on the design canvas**

- Minimal chrome around canvas
- Clear visual hierarchy
- Consistent iconography
- Readable typography

### 5. Accessibility
**Works for users of all abilities and devices**

- Touch-friendly targets (44x44px minimum)
- Keyboard navigation support
- Screen reader compatibility
- High contrast mode
- Responsive text sizing

## User Experience Goals

### Speed
- **Quick Start**: User can create first hex in <30 seconds
- **Fast Iteration**: Changes reflect immediately
- **Efficient Workflow**: Common tasks require minimal clicks/taps

### Quality
- **Professional Output**: Screenshots suitable for proposals
- **Accurate Representation**: Hexes accurately represent plant spacing
- **Data Integrity**: All information preserved correctly

### Flexibility
- **Simple Mode**: Basic users can create designs without complexity
- **Advanced Mode**: Power users have full control
- **Customizable**: Grid size, colors, display options

## Success Metrics

### User Satisfaction
- Users can complete a basic design in <10 minutes
- Users report intuitive interface
- Users successfully export and share designs

### Technical Performance
- App loads in <2 seconds
- Smooth 60fps rendering
- Works on devices 3+ years old

### Adoption
- Used by PDC students for assignments
- Referenced in permaculture communities
- Shared designs on social media

## Constraints

### Technical Constraints
- Single HTML file (no external dependencies)
- Client-side only (no server required)
- Browser storage limitations
- File size considerations (keep under 500KB if possible)

### Design Constraints
- Must work on small phone screens (320px width minimum)
- Must support touch and mouse interactions
- Must work offline

### Content Constraints
- No plant database (users enter their own data)
- No cloud storage (local files only)
- No user accounts or authentication

## Competitive Analysis

### Existing Solutions
- **CAD Software**: Too complex, expensive, learning curve
- **Drawing Apps**: Not designed for permaculture, no hex grids
- **Garden Planning Apps**: Focused on traditional gardens, not permaculture principles
- **Paper and Pencil**: Low quality output, hard to edit, not shareable

### Our Advantage
- Purpose-built for permaculture design
- Hex grid system (optimal plant spacing)
- Free and accessible
- Professional output quality
- Easy to learn and use

## Brand Voice

- **Approachable**: Friendly, not intimidating
- **Professional**: Serious about quality, but not stuffy
- **Educational**: Helpful guidance without being condescending
- **Sustainable**: Aligned with permaculture values

## Visual Style

- **Clean**: Minimal, uncluttered interface
- **Natural**: Earth tones, plant-inspired colors
- **Modern**: Contemporary UI patterns
- **Functional**: Form follows function

## Project Timeline

### Phase 1: Core Functionality (MVP)
- Hex grid rendering
- Basic plant data entry
- Export/import

### Phase 2: Enhanced Features
- Image overlay
- Hex types (structures, pathways)
- Advanced controls

### Phase 3: Polish
- Responsive optimizations
- UX refinements
- Documentation

## Success Criteria

The project is successful when:
1. A PDC student can create a design proposal in under 30 minutes
2. The exported design looks professional enough for client presentation
3. Users report the tool is easier than alternatives
4. The tool works reliably on phones and computers
5. Designs can be easily shared and edited

---

*This creative brief serves as the foundation for all design and development decisions. All features and implementations should align with these principles and goals.*
