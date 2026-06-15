`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 10:47:31 PM
// Design Name: 
// Module Name: GtoB_case
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


module GtoB_case(G,B);

input [3:0] G;
wire [3:0] G;

output [3:0] B;
reg [3:0] B;

always@(G)
begin
case(G)
4'b0000: B = 4'b0000;
4'b0001: B = 4'b0001;
4'b0011: B = 4'b0010;
4'b0010: B = 4'b0011;
4'b0110: B = 4'b0100;
4'b0111: B = 4'b0101;
4'b0101: B = 4'b0110;
4'b0100: B = 4'b0111;
4'b1100: B = 4'b1000;
4'b1101: B = 4'b1001;
4'b1111: B = 4'b1010;
4'b1110: B = 4'b1011;
4'b1010: B = 4'b1100;
4'b1011: B = 4'b1101;
4'b1001: B = 4'b1110;
4'b1000: B = 4'b1111;
endcase
end
endmodule
