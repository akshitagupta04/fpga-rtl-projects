`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 01:42:49 AM
// Design Name: 
// Module Name: Decoder2to4
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


module Decoder2to4(
input A,
input B,
output y0,
output y1,
output y2,
output y3
    );
    
    assign y0 = (~B)&(~A);
    assign y1 = (~B)&(A);
    assign y2 = (B)&(~A);
    assign y3 = (B)&(A);
    
endmodule
