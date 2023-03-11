module tff(t,clk,rst,q);

input t,clk,rst;
output reg q;

always@(posedge clk)
begin

if(rst)
q<=0;
else if(t)
q<=~q;
else
q<=q;

end

endmodule


module sync_3bit_updown_counter(clk,rst,m,q);

input clk,rst;
input m; // mode 0 up; mode 1 down
output [2:0]q;

assign mbar=~m;

tff tff1(1'b1,clk,rst,q1);

//prepare for next stage
assign q1bar=~q1;
and(mbarq1,q1,mbar);
and(mq1bar,m,q1bar);
or(t2, mbarq1,mq1bar);

tff tff2(t2,clk,rst,q2);

//prepare for next stage
assign q2bar=~q2;
and(mbarq1q2,q2,mbarq1);
and(mq1barq2bar,mq1bar,q2bar);
or(t3, mbarq1q2,mq1barq2bar);

tff tff3(t3,clk,rst,q3);

assign q={q3,q2,q1};

endmodule



`timescale 1ns/1ns

module tb;


reg clk,rst;
reg mode; // mode 0 up; mode 1 down
wire [2:0]q;

sync_3bit_updown_counter dut(clk,rst,mode,q);

initial 
begin
clk=0;
rst=0;
#5 rst=1;
#5 rst=0;
end

always #5 clk=~clk;

initial
begin
$monitor("clk=%b  rst=%b mode=%b q=%0d", clk,rst,mode,q);
mode=0;
#100;
mode=1;
#100;
$stop;
end
endmodule
