`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2026 01:44:16 AM
// Design Name: 
// Module Name: TB_FSM_Mealy_Pattern_Detector
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


module TB_FSM_Mealy_Pattern_Detector();
reg din, clk, reset;
wire z;
FSM_Mealy_Pattern_Detector d0(din,clk,reset,z);

always #20 clk = ~clk;
initial
begin
clk = 1; reset = 1;
#50 reset = 0;
#10 din = 1;
#40 din = 0;
#40 din = 1;
#40 din = 1;
#40 din = 1;
#40 din = 0;
#40 din = 1;
#40 din = 1;
#40 din = 0;
#40 din = 0;
#40 din = 0;
#40 din = 1;
#40 din = 1;
#40 din = 1;
#40 din = 1;
#40 din = 0;
#40 din = 1;
#40 din = 1;
#40 din = 1;
#50 $finish;
end
endmodule
