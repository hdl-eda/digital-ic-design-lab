// Adder cum subtractor 

module addsub4bit ( a ,b ,add0sub1, sumdiff ,carryborrow );

output [3:0] sumdiff ;
output carryborrow ;

input [3:0] a ;
input [3:0] b ;

input add0sub1;

wire [3:0]x;

xor(x[0],b[0],add0sub1);
xor(x[1],b[1],add0sub1);
xor(x[2],b[2],add0sub1);
xor(x[3],b[3],add0sub1);

fa u0 (a[0],x[0],add0sub1,sumdiff[0],c1);
fa u1 (a[1],x[1],c1,sumdiff[1],c2);
fa u2 (a[2],x[2],c2,sumdiff[2],c3);
fa u3 (a[3],x[3],c3,sumdiff[3],carryborrow);

endmodule


