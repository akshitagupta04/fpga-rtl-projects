`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2026 09:36:54 PM
// Design Name: 
// Module Name: car_parking
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


module car_parking(
input [1:0] car,
output reg [1:0] temp
    );
    
    always@(car)
    temp = car[1] + car[0];
endmodule
