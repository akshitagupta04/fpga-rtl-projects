`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2026 03:46:22 AM
// Design Name: 
// Module Name: register_4bit_str
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


module register_4bit_str(
    input [3:0] D,
    input clk,
    input load,
    output [3:0] Q
    );
    
    wire [3:0] Q;
    wire [3:0] S;
    MUX_2cross1_gate m0 (Q[0], D[0], load, S[0]);
    MUX_2cross1_gate m1 (Q[1], D[1], load, S[1]);
    MUX_2cross1_gate m2 (Q[2], D[2], load, S[2]);
    MUX_2cross1_gate m3 (Q[3], D[3], load, S[3]);
    
    D_FF df0 (S[0], clk, Q[0]);
    D_FF df1 (S[1], clk, Q[1]);
    D_FF df2 (S[2], clk, Q[2]);
    D_FF df3 (S[3], clk, Q[3]);
    
endmodule
