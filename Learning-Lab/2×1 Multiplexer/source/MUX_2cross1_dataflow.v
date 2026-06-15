`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 06:29:37 PM
// Design Name: 
// Module Name: MUX_2cross1_dataflow
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


module MUX_2cross1_dataflow(
input i0,
input i1,
input s,
output y
    );
    
    reg y;
    always@(i0 or i1 or s)
    begin
    y = (~s&i0)|(s&i1);
    end
endmodule
