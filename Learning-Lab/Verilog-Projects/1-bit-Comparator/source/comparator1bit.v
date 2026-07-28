module comparator1bit(
input a,
input b,
output g,
output e,
output s
    );
    
    assign g = a&(~b);
    assign e = a ~^ b;
    assign s = (~a)&b;
    
endmodule
