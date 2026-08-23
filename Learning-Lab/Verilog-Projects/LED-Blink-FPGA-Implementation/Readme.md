# LED Blink — FPGA Implementation

## Table of Contents
- [Overview](#overview)
- [Design Description](#design-description)
- [Module Details](#module-details)
- [Working Principle](#working-principle)
- [Testbench Description](#testbench-description)
- [Simulation](#simulation)
- [Constraints](#constraints)
- [Post Synthesis](#post-synthesis)
- [Post Implementation](#post-implementation)
- [FPGA Implementation](#fpga-implementation)
- [Notes](#notes)
- [License](#license)

---

## Overview
<p align="justify"> 
This project involves verifying the functional integrity of the Cmod Artix-7 35T (xc7a35tcpg236-1) FPGA board purchased in September 2025. The design was implemented using verilog and confirmed zero design violations through the in-built RTL Linter in Xilinx Vivado 2024.1. Simulated and successfully verified the proper functioning of this design.
</p>
<p align="justify"> 
Implemented with zero critical warnings. Minor warnings in DRC violations. Synthesis and Implementation were reviewed and found to be related to default voltage bank settings, which do not affect the functionality of this hardware validation test. 
</p>

---

## Design Description

---

## Module Details

---

## Working Principle

---

## Testbench Description

---

## Simulation

### Output Format

### Waveform:

> Simulation waveform: [Simulation waveform](./sim/led-blink-simulation-waveform.jpg)

---

## Constraints 

---

## Post Synthesis

--- 

## Post-Implementation
After routing the design on the Artix-7 35T, formal Timing and Power analyses were conducted to confirm physical hardware reliability:  

### Timing Analysis (STA) 
The design met all user-specified timing constraints with significant margin. 
- **Worst Negative Slack (WNS):** 79.288 ns (Passed)
- **Worst Hold Slack (WHS):** 0.280 ns (Passed)
- **Clock Frequency:** 12.000 MHz (Target Met) 

### Power Analysis 
- **Total On-Chip Power:** 0.069 W
- **Junction Temperature:** 25.3 °C
- **Efficiency:** The dynamic power consumption is <0.001 W, reflecting a highly optimized RTL design for the 12MHz clock domain.

> Detailed reports are available in the [reports](./reports/) folder. 

---

## FPGA Implementation
- Bitstream Generation: Successful.
- Hardware Test: Onboard LED (Pin A17) blinks correctly at 1Hz, confirming the board's functionality.

> Hardware Demo: [system-design](./system-design/)

--- 

## Notes 

---

## License
This project is licensed under the MIT License [license](./license.txt)
