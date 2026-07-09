# Traffic Light Controller System (FSM-based)

## Overview 
<p align="justify">
This project involves designing a FSM-based traffic light controller system that is to be installed on the intersection of four ways at a junction. The directions are assumed as north, west, south, and east. Only one direction of traffic is allowed to move at a time. Red, yellow, and green signals control the flow of the traffic on all the four direction. 
</p>

<p align="justify">
The design of the traffic light controller (3-bit code implementation) was accomplished through the creation of a Finite State Machine (FSM) model, which defines the machine's different states, inputs, and outputs, as well as the transitions between the states. This FSM model is implemented using Verilog code, which defines the different states and their corresponding logic for checking if every light is working or not in all four directions, and to check whether the transitions from one clock cycle to another clock cycle are happening smoothly or not. 
</p>

<p align="justify">
Successfully verified the Verilog RTL Design of Traffic Light Controller through the in-built RTL Linter (under RTL Analysis) in Xilinx Vivado 2024.1, confirming zero design violations. Simulated and successfully verified the proper functioning of the traffic light controller system. 
</p>

---

## Design Description
