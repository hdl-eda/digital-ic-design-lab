module subtractor_4bit ( a ,b ,diff ,borrow );

output [3:0] diff ;
output borrow ;

input [3:0] a ;
input [3:0] b ;

wire [2:0]s;
wire [3:0]l;

xor(l[0],b[0],1'b1);
xor(l[1],b[1],1'b1);
xor(l[2],b[2],1'b1);
xor(l[3],b[3],1'b1);

full_adder fa_dut1(a[0],l[0],1'b1,diff[0],s[0]);
full_adder fa_dut2(a[1],l[1],s[0],diff[1],s[1]);
full_adder fa_dut3(a[2],l[2],s[1],diff[2],s[2]);
full_adder fa_dut4(a[3],l[3],s[2],diff[3],borrow);

endmodule