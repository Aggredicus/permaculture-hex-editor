# Changelog

## [1.0.0] - 2026-02-19

### Fixed
- **Critical**: Fixed hex grid rendering - canvas coordinate system and initialization issues resolved
- **Critical**: Fixed hex selection - corrected coordinate transformation calculations
- **High**: Fixed button event handlers - all buttons now respond correctly
- **High**: Fixed grid configuration application - settings now update grid properly
- **High**: Fixed export/import functionality - file operations now work correctly
- **Medium**: Fixed image overlay positioning - overlay now displays and positions correctly
- **Medium**: Fixed zoom and pan functionality - mouse wheel and drag now work properly
- **Medium**: Improved overlay image drag handling - smoother dragging experience
- **Low**: Added input validation for grid settings
- **Low**: Improved toast notifications with better animations
- **Low**: Enhanced error handling throughout the application

### Added
- Proper canvas initialization with device pixel ratio support
- Input validation for grid configuration
- Better visual feedback for user actions
- Improved error messages
- Enhanced overlay image auto-scaling on load

### Changed
- Improved coordinate system calculations for better accuracy
- Enhanced overlay positioning relative to canvas container
- Better handling of canvas resizing
- Improved touch event handling for mobile devices

### Technical Improvements
- Fixed canvas scaling with devicePixelRatio
- Corrected hex coordinate transformations
- Improved event handler organization
- Better separation of concerns in rendering logic
