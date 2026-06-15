module Func_decoder(
input E,
input a,
input b,
input c,
output y
    );
    
    wire d0,d1,d2,d3,d4,d5,d6,d7;
    decoder3to8 x0 (a,b,c,d0,d1,d2,d3,d4,d5,d6,d7,E);
    assign y = d0|d2|d4;
    
endmodule