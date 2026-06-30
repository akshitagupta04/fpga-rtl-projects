`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2026 02:40:32 AM
// Design Name: 
// Module Name: state_counter_4_FSM
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


module state_counter_4_FSM(clk,reset,din,z);
input wire clk,reset,din;
output reg [1:0] z;
reg [1:0] state;
parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;

always@(posedge clk)
begin

if(reset==1)
state <= s0;
else
state <= state;
end

always@(posedge clk)
begin
case(state)

    s0: begin
        if(din==1)
        #10 state <= s1;
        else #10 state <= s0;
        end
    
    s1: begin
        if(din==1)
        #10 state <= s2;
        else #10 state <= s1;
        end
    
    s2: begin
        if(din==1)
        #10 state <= s3;
        else #10 state <= s2;
        end
        
    s3: begin
        if(din==1)
        #10 state <= s0;
        else #10 state <= s3;
        end
endcase
end
always@(posedge clk)
begin
assign z =  state;

end
endmodule