`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 02:48:25 AM
// Design Name: 
// Module Name: decoder2to4E
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


module Decoder2to4E(
input E,
input A,
input B,
output y0,
output y1,
output y2,
output y3
    );
    
    assign y0 = E&(~B)&(~A);
    assign y1 = E&(~B)&(A);
    assign y2 = E&(B)&(~A);
    assign y3 = E&(B)&(A);
    
endmodule
