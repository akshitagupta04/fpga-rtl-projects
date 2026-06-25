//Company: 
// Engineer: 
// 
// Create Date: 06/21/2026 04:05:16 AM
// Design Name: 
// Module Name: Reg_PIPO_bidir
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


module Reg_PIPO_bidir(
input [3:0] D,
input [1:0] CTRL,
input clear,
input clk,
input XL,
input XR,
output [3:0] Q
    );
    
    wire [3:0] S;
    
    MUX_4x1 m1(Q[0],XL,Q[1],D[0],CTRL[1],CTRL[0],S[0]);
    MUX_4x1 m2(Q[1],Q[0],Q[2],D[1],CTRL[1],CTRL[0],S[1]);
    MUX_4x1 m3(Q[2],Q[1],Q[3],D[2],CTRL[1],CTRL[0],S[2]);
    MUX_4x1 m4(Q[3],Q[2],XR,D[3],CTRL[1],CTRL[0],S[3]);
    
    DFF_clr d1 (S[0],clear,clk,Q[0]);
    DFF_clr d2 (S[1],clear,clk,Q[1]);
    DFF_clr d3 (S[2],clear,clk,Q[2]);
    DFF_clr d4 (S[3],clear,clk,Q[3]);
    
endmodule
