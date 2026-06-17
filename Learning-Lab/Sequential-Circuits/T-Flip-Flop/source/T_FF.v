`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2026 09:13:57 PM
// Design Name: 
// Module Name: T_FF
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


module T_FF(
input T,
input clk,
output reg Q);
    
    initial
    begin
    Q=0;
    end
    always@(negedge clk)
    begin
    if (T==0)
    Q = Q;
    else
    Q = ~Q;
    end
endmodule