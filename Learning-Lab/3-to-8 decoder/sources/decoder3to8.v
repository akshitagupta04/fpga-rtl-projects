module decoder3to8(
input a,
input b,
input c,
output y0,
output y1,
output y2,
output y3,
output y4,
output y5,
output y6,
output y7,
input E
    );
    
    wire p,q;
    Decoder2to4E d0 (E, c,0,p,q);
    
    Decoder2to4E d1 (p, a,b,y0,y1,y2,y3);
    Decoder2to4E d2 (q, a,b,y4,y5,y6,y7);
    
endmodule