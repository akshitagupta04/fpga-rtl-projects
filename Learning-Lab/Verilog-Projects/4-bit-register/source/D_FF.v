`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2026 08:12:06 PM
// Design Name: 
// Module Name: D_FF
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


module D_FF(d,clk,q,qbar);
input wire d,clk;
output reg q, qbar;

always@(posedge clk)
begin
if (d == 0)
begin
q <= 0;
qbar <= 1;
end
else if (d==1)
begin
q <= 1;
qbar <= 0;
end
end
endmodule
