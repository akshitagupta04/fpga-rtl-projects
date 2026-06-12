//Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 01:41:15 AM
// Design Name: 
// Module Name: tb_RCA_4bit
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



module tb_RCA_4bit; 
// Declare testbench variables
reg [3:0] a;
reg [3:0] b;
reg c;

wire [3:0] sum;
wire cout;

initial
$monitor ("a=%b, b=%b, c=%b, sum=%b, cout=%b", a,b,c,sum,cout);

//instantiate the 4-bit ripple carry adder
RCA_4bit uut(
.a(a),
.b(b),
.c(c),
.sum(sum),
.cout(cout)
);

initial
begin
//test cases
#0a = 4'b0000; b = 4'b0000; c = 1'b0;
#10a = 4'b0000; b = 4'b0001; c = 1'b0;
#10a = 4'b0001; b = 4'b0001; c = 1'b0;
#10a = 4'b0101; b = 4'b0111; c = 1'b0;
#10a = 4'b1010; b = 4'b1000; c = 1'b0;
#10a = 4'b1100; b = 4'b1111; c = 1'b1;
#10a = 4'b1111; b = 4'b1111; c = 1'b1;

#10 $stop;

end 
endmodule