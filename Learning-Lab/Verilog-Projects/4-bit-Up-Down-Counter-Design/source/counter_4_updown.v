module counter_4_updown(clk,reset,dir,count);
input clk, reset, dir;
output [3 : 0] count;
reg [3 : 0] count = 0;

always@ (posedge (clk) or posedge (reset))
begin
    if(reset == 1)
    count <= 0;
    
    else
    if (dir == 0) //counting up
        if(count == 15)
        count <= 0;
        else
        count <= count + 1; 
    else
        if (count == 0)
        count <= 15;
        else
        count <= count - 1; 
end
endmodule
