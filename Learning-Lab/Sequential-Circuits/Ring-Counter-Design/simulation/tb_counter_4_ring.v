`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2026 01:29:25 AM
// Design Name: 
// Module Name: tb_counter_4_ring
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

module tb_counter_4_ring;
reg clk;
reg reset;
wire [3:0] count;

counter_4_ring u0(
.clk(clk),
.reset(reset),
.count(count)
);
initial clk = 0;
always #20 clk = ~clk;

initial
begin
reset = 1;
#20;
reset = 0;
end
endmodule