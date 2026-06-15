# 4-bit Ripple Carry Adder

## Overview 
Programmed and simulated a 4-bit ripple carry adder in Verilog in Xilinx Vivado 2018.1 during the Internshala training course "VLSI Design" in 2022. 

Reprogrammed the Verilog code and coded the testbench for simulation, constraint file for FPGA implementation, along with a full RTL-to-bitstream workflow, and programmed the Cmod A7 (Xilinx Artix-7 35T) FPGA board, in Xilinx 2024.1 in 2026. Also, generated synthesized schematic, utilization report (after synthesis), and timing & power reports (after implementation). 

Successfully verified through simulation via the testbench. However, the constraint file was programmed in Cmod Artix-7 35T FPGA board and tested via breadboard & jumper wires connected to inputs and LEDs on Cmod A7 assigned as outputs, where 3.3 V = logic 1 and GND = logic 0. But the output could not be fully validated during testing. Also, the absence of peripherals like external switches limited full output validation. 
