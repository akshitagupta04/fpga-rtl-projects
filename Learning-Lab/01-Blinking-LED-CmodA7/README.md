# Blinking LED – Cmod A7-35T Hardware Implementation

## Overview
<p align="justify"> 
This project was implemented to verify the functional integrity of the Cmod A7-35T (Xilinx Artix-7 35T) FPGA board purchased in September 2025. This was my first "Live Hardware" test using the Vivado 2024.1 toolchain. 
</p>

<p align="justify"> 
The design was successfully implemented with Zero Critical Warnings. Minor warnings in DRC violations, Synthesis and Implementation were reviewed and found to be related to default voltage bank settings, which do not affect the functionality of this hardware validation test. 
</p>

---

## Implementation Logic
- **Input:** 12MHz Oscillator on pin L17.
- **Counter:** 26-bit register to divide the 12MHz clock.
- **Toggle Point:** At `6,000,000` cycles (0.5 seconds), causing a 1Hz visible blink.

---

## Functional Verification (Simulation)
Before hardware implementation, the design was verified using a Verilog Testbench in Vivado 2024.1: 

- **Validation:** The 26-bit counter was monitored to confirm it increments linearly and triggers the LED toggle exactly at the 6,000,000 cycle constant. 
- **Result:** Behavioral simulation confirmed the 1Hz toggle rate based on the 12MHz input oscillator. 

> Simulation waveform: [Simulation waveform](./system-design/blinking-led-simulation-waveform.jpg)

--- 

## Physical Analysis (Post-Implementation)
After routing the design on the Artix-7 35T, formal Timing and Power analyses were conducted to confirm physical hardware reliability:  

### Timing Summary (STA) 
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

## Project Navigation
- Core Verilog logic (RTL): [src](./src/)
- Verification environment (Testbench): [simulation](./simulation/)
- Artix-7 pin mapping (XDC): [constraints](./constraints/)

---

## Results
- Synthesis & Implementation: Completed with 0 critical errors/warnings.
- Bitstream Generation: Successful.
- Hardware Test: Onboard LED (Pin A17) blinks correctly at 1Hz, confirming the board's functionality.

> Hardware Demo: [system-design](./system-design/artix-7-35T-blinking-led-demo.mp4)

--- 

## License
This project is licensed under the MIT License [license](./license.txt)
