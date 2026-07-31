`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 07:36:34 PM
// Design Name: 
// Module Name: MUX_4x1
// Project Name: 
// Target Devices: 
// Tool Versions: Xilinx Vivado 2024.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_4x1(
input i0,
input i1,
input i2,
input i3,
input s1,
input s0,
output y
    );
    
    wire p,q;
    
    MUX_2cross1_gate d0 (i0,i1,s0,p);
    MUX_2cross1_gate d2 (i2,i3,s0,q);
    MUX_2cross1_gate d3 (p,q,s1,y);
    
endmodule
