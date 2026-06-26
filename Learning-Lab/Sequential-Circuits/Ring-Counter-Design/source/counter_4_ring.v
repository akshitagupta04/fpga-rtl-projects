`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2026 09:41:46 PM
// Design Name: 
// Module Name: counter_4_ring
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


module counter_4_ring(
input clk,
input reset,
output reg [3:0] count
);

always@(posedge (clk) or posedge (reset))
begin
    if(reset == 1)
    count <= 4'b0001;
    
    else
    begin
    count <= {count[0],count[3:1]};
    end
end

endmodule