`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2026 01:24:49 AM
// Design Name: 
// Module Name: FSM_Mealy_Pattern_Detector
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


module FSM_Mealy_Pattern_Detector(din,clk,reset,z);
input wire din,clk,reset;
output reg z;

parameter Sin = 2'b00, S1 = 2'b01, S10 = 2'b10, S101 = 2'b11;
reg [1:0] state, next_state;

always@(posedge clk, posedge reset)
begin
if(reset==1)
state <= Sin;
else
state <= next_state;
end

always@(state, din)
begin
case(state)
Sin:
begin
    if(din==1)
    next_state <= S1;
    else
    next_state <= Sin;
end

S1:
begin
    if(din==0)
    next_state <= S10;
    else
    next_state <= S1;
end

S10:
begin
    if(din==1)
    next_state <= S101;
    else
    next_state <= Sin;
end

S101:
begin
    if(din==1)
    next_state <= S1;
    else
    next_state <= S10;
end

default:
next_state <= Sin;
endcase
end

//Now the case for allocating output values
always@(state,din)
begin
case(state)
Sin: z <= 0;
S1: z <= 0;
S10: z <= 0;
S101:
begin
    if(din==1)
    z <= 1;
    else
    z <= 0;
end

default:
z <= 0;
endcase
end
endmodule