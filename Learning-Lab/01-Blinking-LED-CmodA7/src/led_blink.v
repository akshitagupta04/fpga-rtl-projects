`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2025 08:48:36 PM
// Design Name: 
// Module Name: led_blink
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


module led_blink(
input clk,
output reg led
);
reg [25:0] counter = 0; 

always @(posedge clk) begin
counter <= counter + 1;
if (counter == 26'd6000000) begin
led <= ~led;
counter <= 0;
end
end
endmodule