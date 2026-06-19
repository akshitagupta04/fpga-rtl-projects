`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2026 06:30:02 PM
// Design Name: 
// Module Name: register4bit_clr
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


module register4bit_clr(
input [3:0] D,
input clk,
input load,
input clear,
output reg [3:0] Q
    );
    
    always@(posedge clk)
    begin
    if(clear == 1)
    assign Q = 4'b0000;
    
    else
    begin
    if(load == 0)
    assign Q = Q;
    
    else
    assign Q = D;
    
    end
    end
endmodule
