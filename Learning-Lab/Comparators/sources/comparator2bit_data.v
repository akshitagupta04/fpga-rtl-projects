`timescale 1ns / 1ps

module comparator2bit_data(
input a1,
input b1,
input a0,
input b0,
output P,
output Q,
output Y
    );
    
    assign P = ((~a1)&b1)|(((~a0)&b0)&(a1 ~^ b1));
    assign Q = (a1 ~^ b1)&(a0 ~^ b0);
    assign Y = (a1&(~b1))|((a1 ~^ b1)&(a0&(~b0)));
    
endmodule