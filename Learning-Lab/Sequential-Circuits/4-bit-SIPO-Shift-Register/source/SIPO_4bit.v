`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2026 02:11:43 AM
// Design Name: 
// Module Name: SIPO_4bit
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


module SIPO_4bit(
input Din,
input clk,
input load,
output [3:0] Q
    );
    
    reg [3:0] temp;
    
    always@(posedge clk)
    begin
    if(load == 0)
    temp = temp;
    else
    temp = {temp [2:0], Din};
    end
    assign Q = temp;
endmodule
