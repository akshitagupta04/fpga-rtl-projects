`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2026 06:33:10 PM
// Design Name: 
// Module Name: SR_FlipFlop
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


module SR_FlipFlop(s,r,clk,q,qbar);
input wire s, r, clk;
output reg q, qbar;

always@(posedge clk)
begin
if(s==1 & r==0)
begin
q <= 1; 
qbar <= 0;
end

else if(s==0 & r==1)
begin
q <= 0; 
qbar <= 1;
end 
else if (s==0 & r==0)
begin
q <= q; 
qbar <= qbar;
end
end
endmodule
