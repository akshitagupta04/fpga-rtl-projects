`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 12:29:02 AM
// Design Name: 
// Module Name: FA_if_else
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


module FA_if(
input a,
input b,
input Cin,
output reg sum,
output reg Cout);

always @ (a or b or Cin)
begin
if (a==0 & b==0 & Cin==0)
begin
sum = 0; Cout = 0;
end 

else if (a==0 & b==0 & Cin==1)
begin
sum = 1; Cout = 0;
end 

else if (a==0 & b==1 & Cin==0)
begin
sum = 1; Cout = 0;
end

else if (a==0 & b==1 & Cin==1)
begin
sum = 0; Cout = 1;
end

else if (a==1 & b==0 & Cin==0)
begin
sum = 1; Cout = 0;
end

else if (a==1 & b==0 & Cin==1)
begin
sum = 0; Cout = 1;
end

else if (a==1 & b==1 & Cin==0)
begin
sum = 0; Cout = 1;
end

else if (a==1 & b==1 & Cin==1)
begin
sum = 1; Cout = 1;
end

end
endmodule
