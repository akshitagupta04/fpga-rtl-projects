`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 06:10:49 PM
// Design Name: 
// Module Name: MUX_2cross1_gate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_2cross1_gate(
input i0,
input i1,
input s,
output y
    );
    
    wire sbar, p, q;
    not n1 (sbar,s);
    and a1 (p, sbar, i0);
    and a2 (q, i1, s);
    or o1 (y, p, q);
    
endmodule
