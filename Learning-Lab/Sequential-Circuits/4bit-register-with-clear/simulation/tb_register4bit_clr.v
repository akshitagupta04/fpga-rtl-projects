`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2026 06:40:09 PM
// Design Name: 
// Module Name: tb_register4bit_clr
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


module tb_register4bit_clr( );
wire [3:0] Q;
reg [3:0] D;
reg clk, load, clear;

register4bit_clr d1(D, clk, load, clear, Q);
always #20 clk = ~clk;

initial
begin
clk = 1;
#10 clear = 1;
#100 load = 1; D = 4'b0010;
#50 clear = 0;
#100 load = 0; D = 4'b0110;
#100 load = 1; D = 4'b0111;
#40 $finish;

end
endmodule
