`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 06:31:52 AM
// Design Name: 
// Module Name: comparator4bit
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


module comparator4bit(
input a3,
input b3,
input a2,
input b2,
input a1,
input b1,
input a0,
input b0,
output G,
output E,
output S
    );
    
    assign G = (a3&(~b3))|((a3 ~^ b3)&((a2&(~b2))&(a1&(~b1))&(a0&(~b0))));
    assign E = (a3 ~^ b3)&(a2 ~^ b2)&(a1 ~^ b1)&(a0 ~^ b0);
    assign S = ((~a3)&b3)|((a3 ~^ b3)&(((~a2)&b2)&((~a1)&b1)&((~a0)&b0)));
    
endmodule
