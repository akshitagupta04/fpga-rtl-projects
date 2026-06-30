`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2026 08:29:59 PM
// Design Name: 
// Module Name: FSM_Pattern_Detector_Moore
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


module FSM_Pattern_Detector_Moore(din, reset, clk, z);
input wire din, reset, clk;
output reg z;

parameter Sin = 3'b000, S1 = 3'b001, S10 = 3'b010, S101 = 3'b101, S1011 = 3'b111;
reg [2:0] state, next_state;

always@(posedge clk)
begin
if (reset == 1)
state <= Sin;
else
state <= next_state;
end

always@(state, din)
begin
    case(state)
    Sin: begin
    if(din==1)
    next_state <= S1;
    else
    next_state <= Sin;
    z <= 0;
    end
    
    S1: begin
    if(din==0)
    next_state <= S10;
    else
    next_state <= S1;
    z <= 0;
    end
    
    S10: begin
    if(din==1)
    next_state <= S101;
    else
    next_state <= Sin;
    z <= 0;
    end
    
    S101: begin
    if(din==1)
    next_state <= S1011;
    else
    next_state <= S10;
    z <= 0;
    end
    
    S1011: begin
    if(din==1)
    next_state <= S1;
    else
    next_state <= S10;
    z <= 1;
    end
    
default:
next_state = Sin;    
endcase

end
endmodule