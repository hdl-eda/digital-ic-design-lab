module adder_4bit ( a ,b ,sum ,carry_out );

output [3:0] sum ;
output carry_out ;

input [3:0] a ;
input [3:0] b ; 

wire [2:0]c;

full_adder fa_dut1(a[0],b[0],1'b0,sum[0],c[0]);
full_adder fa_dut2(a[1],b[1],c[0],sum[1],c[1]);
full_adder fa_dut3(a[2],b[2],c[1],sum[2],c[2]);
full_adder fa_dut4(a[3],b[3],c[2],sum[3],carry_out);

endmodule