`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2026 12:19:52 AM
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
input J,K,clk,
output reg Q
    );
    
    always@(posedge clk)
    begin
    case({J,K})
    2'b00: Q <= Q;
    2'b01: Q <= 0;
    2'b10: Q <= 1;
    2'b11: Q <= ~Q;
    endcase
    end
endmodule
