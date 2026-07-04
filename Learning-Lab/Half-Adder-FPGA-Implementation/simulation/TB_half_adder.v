`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2026 02:54:22 AM
// Design Name: 
// Module Name: TB_half_adder
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


module TB_half_adder();
reg a,b;
wire sum,carry; 

HA_gate d0(.a(a), .b(b), .sum(sum), .carry(carry));

initial
begin
    #10 a <= 0; b <= 0;
    #10 a <= 0; b <= 1;
    #10 a <= 1; b <= 0;
    #10 a <= 1; b <= 1;
    #10;
    $stop;
end
endmodule
