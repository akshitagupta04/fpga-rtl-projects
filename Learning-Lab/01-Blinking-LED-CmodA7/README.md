# Learning-Lab: Cmod A7 Hardware Validation

## Project Status: SUCCESS (Verified on Hardware)

### Overview
<p align="justify">
This project was implemented to verify the functional integrity of the **Cmod A7-35T (Artix-7)** FPGA board purchased in September 2025. This was my first "Live Hardware" test using the **Vivado 2024.1** toolchain. 
</p>

<p align="justify">
The design was successfully implemented with **Zero Critical Warnings**. Minor warnings in DRC and Implementation were reviewed and found to be related to default voltage bank settings, which do not affect the functionality of this hardware validation test. 
</p>

---

### Implementation Logic
- **Input:** 12MHz Oscillator on pin L17.
- **Counter:** 26-bit register to divide the 12MHz clock.
- **Toggle Point:** At `6,000,000` cycles (0.5 seconds), causing a 1Hz visible blink.

---

### Files
- Verilog RTL logic: [src](/Learning-Lab/01-Blinking-LED-CmodA7/src/)
- Physical pin mapping for Artix-7: [constraints](/Learning-Lab/01-Blinking-LED-CmodA7/constraints/)

---

### Results
- Synthesis & Implementation: Completed with 0 critical errors/warnings.
- Bitstream Generation: Successful.
- Hardware Test: Onboard LED blinks correctly, confirming the board and USB interface are fully functional.

--- 

## License
This project is licensed under the MIT License [license](./license.txt)
