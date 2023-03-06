//Design of 4 Bit Adder using 4 Full adder (Structural Modeling Style)


module adder_4bit ( a ,b ,sum ,carry );

output [3:0] sum ;
output carry ;

input [3:0] a ;
input [3:0] b ; 

wire [2:0]s;

full_adder u0 (a[0],b[0],1'b0,sum[0],s[0]);
full_adder u1 (a[1],b[1],s[0],sum[1],s[1]);
full_adder u2 (a[2],b[2],s[1],sum[2],s[2]);
full_adder u3 (a[3],b[3],s[2],sum[3],carry);

endmodule
