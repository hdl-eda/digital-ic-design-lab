//adder_subtactor_4bit.v

module adder_subtactor_4bit(a,b,sel_add1_sub0,sum_diff,carry_borrow_out);

output [3:0] sum_diff;
output carry_borrow_out;

input [3:0] a ;
input [3:0] b ;
input sel_add1_sub0 ;   

wire [3:0]sum1;
wire carry_out;

wire [3:0]diff1;
wire borrow;

wire [4:0]add,sub,dout;

assign add={carry_out,sum1};
assign sub={borrow,diff1};

assign carry_borrow_out=dout[4];
assign sum_diff=dout[3:0];

adder_4bit adder_dut(.a(a),.b(b),.sum(sum1),.carry_out(carry_out));

subtractor_4bit sub_dut(.a(a),.b(b),.diff(diff1),.borrow(borrow));

mux_4bit mux_dut(.add(add),.sub(sub),.sel_add1_sub0(sel_add1_sub0),.dout(dout));


endmodule