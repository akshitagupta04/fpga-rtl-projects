`timescale 1ns/1ps

module HA_case1(
input wire A, B,
output reg S,
output reg Cout);

always @(A or B)
begin
case ({A,B})
2'b00: begin S = 0; Cout = 0; end
2'b01: begin S = 0; Cout = 1; end
2'b10: begin S = 1; Cout = 0; end
2'b11: begin S = 1; Cout = 1; end
endcase
end
endmodule 