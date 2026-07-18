`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2026 08:22:35 PM
// Design Name: 
// Module Name: Car_parking_mgmt
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


module Car_parking_mgmt(
input [7:0] Cars,
output reg [3:0] num
    );
    
    always@(Cars)
    num = Cars[7] + Cars[6] + Cars[5] + Cars[4] + Cars[3] + Cars[2] + Cars[1] + Cars[0];
endmodule
