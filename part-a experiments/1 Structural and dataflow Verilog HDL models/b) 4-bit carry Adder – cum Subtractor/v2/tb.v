//testbench

`timescale 1ns/1ns
module tb;

wire [3:0] sumdiff ;
wire carryborrow ;

reg [3:0] a ;
reg [3:0] b ;

reg add0sub1;

integer i;

addsub4bit ins1( a ,b ,add0sub1, sumdiff ,carryborrow );

initial begin 
    a=4; b=4; add0sub1=0;
#10 a=10; b=4; add0sub1=0;
#10 a=6; b=4; add0sub1=0;
#10 a=3; b=7; add0sub1=0;
#10 a=4; b=4; add0sub1=1;
#10 a=10; b=4; add0sub1=1;
#10 a=6; b=4; add0sub1=1;
#10 a=3; b=7; add0sub1=1;
#10;
$finish;
end

initial
$monitor("simtime=%g, a=%0d, b=%0d, add0sub1=%b, sumdiff=%0d, carryborrow=%b", $time,a,b,add0sub1,sumdiff,carryborrow);

endmodule