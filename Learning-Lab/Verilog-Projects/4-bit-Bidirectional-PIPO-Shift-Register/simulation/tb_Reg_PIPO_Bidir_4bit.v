`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2026 05:08:35 AM
// Design Name: 
// Module Name: tb_Reg_PIPO_Bidir_4bit
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


module tb_Reg_PIPO_Bidir_4bit( );
reg [3:0] D;
reg [1:0] CTRL;
reg clear,clk,XL,XR;
wire [3:0] Q;

Reg_PIPO_bidir p1(D,CTRL,clear,clk,XL,XR,Q);
always #20 clk = ~clk;

initial
begin
clk = 1; clear = 0;
XL = 1; XR = 0; D = 4'b0101;
#10 CTRL = 11;
#100 CTRL = 01;
#100 CTRL = 10;
#100 CTRL = 00;

#90 $finish;

end
endmodule
