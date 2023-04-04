`timescale 1ns/1ns
module tb_adder_subtractor_4bit;

wire [3:0] sum_diff;
wire carry_borrow_out;

reg [3:0] a ;
reg [3:0] b ;
reg sel_add1_sub0 ;   

integer i;

adder_subtactor_4bit dut(a,b,sel_add1_sub0,sum_diff,carry_borrow_out);

initial begin 
    a=4; b=4; sel_add1_sub0=0;
#10 a=10; b=4; sel_add1_sub0=0;
#10 a=6; b=4; sel_add1_sub0=0;
#10 a=3; b=7; sel_add1_sub0=0;
#10 a=4; b=4; sel_add1_sub0=1;
#10 a=10; b=4; sel_add1_sub0=1;
#10 a=6; b=4; sel_add1_sub0=1;
#10 a=3; b=7; sel_add1_sub0=1;
#10;
$finish;
end

initial
$monitor("simtime=%g, a=%0d, b=%0d, sel_add1_sub0=%b, sum_diff=%0d, carry_borrow_out=%b", $time,a,b,sel_add1_sub0,sum_diff,carry_borrow_out);


endmodule
