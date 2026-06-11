`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 01:09:11 AM
// Design Name: 
// Module Name: FA_gate
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


module FA_gate(
input P,
input Q,
input Rin,
output sum,
output carryout);

wire s1, s2, s3;
xor x1 (s1, P, Q);
and a1 (s2, P, Q);
xor x2 (sum, s1, Rin);
and a2 (s3, s1, Rin);
or o1 (carryout, s2, s3);

endmodule
