`timescale 1ns/1ps 

module FA_using_HA(
input a,
input b,
input cin,
output sum,
output carry
    );
    wire s1, s2, s3;
    HA_case1 d0 (a,b, s1, s2);
    HA_gate d1 (.a(cin), .b(s1), .sum(sum), .carry(s3) );
    assign carry = s2 | s3; 
endmodule 
