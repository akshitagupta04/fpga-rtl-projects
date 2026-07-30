module counter_4bit_async( clk, count );
input clk;
output[3:0] count;
reg[3:0] count;
wire clk;

initial
    count = 4'b0;

always @( posedge clk )
    count[0] <= ~count[0];

always @( posedge count[0] )
    count[1] <= ~count[1];

always @( posedge count[1] )
    count[2] <= ~count[2];

always @( posedge count[2] )
    count[3] <= ~count[3];

endmodule
