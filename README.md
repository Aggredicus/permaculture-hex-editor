# Permaculture Hex Grid Design Map Editor

A single-file HTML application for creating professional permaculture garden design maps using a hex grid system. Perfect for Permaculture Design Course students, professional designers, and home gardeners.

## Features

- **Hex Grid Editor**: Configurable grid system for precise plant placement
- **Plant Data Management**: Track common name, Latin name, planting/harvest dates, mature height, and canopy diameter
- **Multiple Hex Types**: Mark hexes as plants, structures, or pathways
- **Image Overlay**: Import Google Maps/Earth screenshots for accurate site planning
- **Export/Import**: Save and load your designs as JSON files
- **Responsive Design**: Works seamlessly on phones, tablets, and computers
- **Professional Output**: High-quality screenshots for design proposals

## Quick Start

1. Clone or download this repository
2. Open `index.html` in any modern web browser
3. Start designing your permaculture garden!

## Usage

### Basic Workflow

1. **Configure Grid**: Set your grid dimensions in the settings panel
2. **Select Hexes**: Click or tap hexes to select them
3. **Add Plant Data**: Fill in the plant information form for selected hexes
4. **Mark Structures/Pathways**: Use the type buttons to mark non-plant hexes
5. **Import Background**: Drag and drop a site image or use the upload button
6. **Export Design**: Save your work as a JSON file for later editing

### Keyboard Shortcuts (Desktop)

- `Ctrl/Cmd + S`: Save design
- `Ctrl/Cmd + O`: Open design
- `Ctrl/Cmd + Z`: Undo
- `Ctrl/Cmd + Shift + Z`: Redo
- `+/-`: Zoom in/out
- `Space + Drag`: Pan canvas

### Mobile Gestures

- **Pinch**: Zoom in/out
- **Drag**: Pan canvas
- **Tap**: Select hex
- **Long Press**: Context menu

## File Format

Designs are saved as JSON files with the following structure:

```json
{
  "version": "1.0",
  "gridConfig": {
    "width": 20,
    "height": 20,
    "hexSize": 30
  },
  "hexes": {
    "0,0": {
      "type": "plant",
      "plantData": {
        "commonName": "Tomato",
        "latinName": "Solanum lycopersicum",
        "plantingDate": "2024-04-15",
        "harvestDate": "2024-08-15",
        "matureHeight": { "value": 6, "unit": "ft" },
        "canopyDiameter": { "value": 2, "unit": "ft" }
      }
    }
  },
  "overlay": {
    "image": "data:image/...",
    "x": 0,
    "y": 0,
    "scale": 1,
    "opacity": 0.5,
    "locked": false
  }
}
```

## Browser Compatibility

- Chrome/Edge (recommended)
- Firefox
- Safari
- Opera

## Project Structure

```
permaculture-hex-editor/
├── index.html              # Main application (single file)
├── README.md               # This file
├── docs/
│   ├── CREATIVE_BRIEF.md   # Project vision and requirements
│   ├── AGILE/              # Agile project management docs
│   └── AGENTS/             # Agent role documentation
└── examples/               # Example design files
```

## Contributing

This project uses an agile development methodology with automated agent roles. See the `docs/` folder for project management documentation.

## License

MIT License - feel free to use and modify for your permaculture design needs!

## Credits

Designed for Permaculture Design Course students and practitioners. Inspired by Andrew Millison's teachings and Oregon State University's permaculture program.
