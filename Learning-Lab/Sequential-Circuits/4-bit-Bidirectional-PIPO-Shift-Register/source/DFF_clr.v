`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2026 04:05:16 AM
// Design Name: 
// Module Name: DFF_clr
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


module DFF_clr(
input D,
input clear,
input clk,
output reg Q
    );
    
   always@(posedge clk)
   begin
   if (clear == 1)
   Q = 1'b0;
   else
   Q = D;
   end 
endmodule
