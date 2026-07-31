`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2026 02:12:22 AM
// Design Name: 
// Module Name: tb_SIPO_4bit
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


module tb_SIPO_4bit( );
reg Din;
reg clk, load;
wire [3:0] Q;

SIPO_4bit d1(Din, clk,load, Q);
always #20 clk = ~clk;
initial
begin
clk = 1; load = 1;
#10 Din = 1;
#100 Din = 0;
#300 load = 0;
#200 Din = 1;

#80 $finish;
end
endmodule
