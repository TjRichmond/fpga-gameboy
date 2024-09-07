# PCB Design for FPGA Game Boy Emulator

## Overview
This folder contains the design files for the custom PCB used in the FPGA Game Boy Emulator. The PCB houses the FPGA, components, and connectors needed to interface with peripherals like the display, buttons, and power supply.

## Folder Structure
- **`schematic/`**: Contains the PCB schematic files. These files define the electrical connections and components used in the design.
- **`layout/`**: PCB layout files, including the placement of components, routing of traces, and the physical board design.
- **`gerber/`**: Contains the Gerber files, which are used for PCB fabrication. These files include the copper layers, solder mask, silkscreen, and drill files.
- **`bill_of_materials/`**: The Bill of Materials (BOM) that lists all the components used in the design, including part numbers and links to suppliers.
- **`README.md`**: This document, explaining the contents of the `pcb/` folder and providing instructions for fabrication and assembly.

## Tools Required
To view and modify the PCB design files, you will need the following tools:
- **KiCad** (Open Source): [Download here](https://www.kicad.org/) – Used for opening and modifying schematic and layout files.
- **Altium Designer** (Commercial, optional): If the design was made using Altium, the source files can be opened and edited with this tool.
- **Gerber Viewer**: To view the Gerber files, you can use a free viewer like [Gerbv](http://gerbv.geda-project.org/) or an online tool provided by your PCB manufacturer.

## How to Manufacture the PCB
1. **Gerber Files**: The `gerber/` folder contains the files required by a PCB manufacturer to produce the board. Upload all the Gerber files to your preferred PCB manufacturer’s portal (e.g., [JLCPCB](https://jlcpcb.com/), [PCBWay](https://www.pcbway.com/)).
2. **Drill Files**: Ensure the drill files are also provided for the manufacturer to know where to make holes for through-hole components.
3. **BOM**: The `bill_of_materials/` folder includes a BOM file listing all components. You can order these from vendors like [Digikey](https://www.digikey.com/) or [Mouser](https://www.mouser.com/).

## Modifying the Design
1. **Schematics**: The schematic files are stored in the `schematic/` folder. Open them in KiCad (or your chosen PCB design software) to modify the circuit or change components.
2. **Layout**: PCB layout files are in the `layout/` folder. Open these to adjust the board layout, reroute traces, or change the component placement.
3. After making changes, generate new Gerber files for manufacturing by following the export instructions in your PCB design tool.

## Assembly Instructions
1. **Order Components**: Use the BOM file to order all components needed for the board.
2. **Soldering**: Once you have the manufactured PCB and components, you can manually solder the components, or use a PCB assembly service that accepts the BOM file and Gerber files.
3. **Testing**: After assembly, test the PCB by connecting it to the power supply and FPGA. Ensure all connections to peripherals like the display and buttons work as expected.

## Recommended PCB Manufacturer Settings
Here are the suggested settings when submitting the design to a PCB manufacturer:
- **Board Material**: FR-4
- **Layer Count**: 6-layer
- **Board Thickness**: 1.6 mm
- **Copper Thickness**: 1 oz copper
- **Solder Mask**: Green
- **Silkscreen**: White

## Notes
- Be sure to double-check your design and components before ordering the PCB and parts.
- If you make changes to the schematic or layout, regenerate the Gerber files and update the BOM as needed.

## License
This PCB design is licensed under the [MIT License](../LICENSE). Feel free to modify and share the design, but please include attribution.

