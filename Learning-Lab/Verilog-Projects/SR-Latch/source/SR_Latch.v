`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2026 02:04:52 AM
// Design Name: 
// Module Name: SR_Latch
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


module SR_Latch(
    input s,
    input r,
    output q,
    output qbar
    );
    
    nor (q, qbar, r);
    nor (qbar, q, s);
    
endmodule
