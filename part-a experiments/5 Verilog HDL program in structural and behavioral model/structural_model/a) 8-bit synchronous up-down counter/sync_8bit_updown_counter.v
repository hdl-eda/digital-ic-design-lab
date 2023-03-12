module updown_count_8bit(clk,rst,mode,count);

input clk,rst;
input mode; // mode=1 down; mode=0 up;
output [7:0]count;

wire [7:0]count_up,count_down;

up_count_8bit uut1(.clk(clk),.rst(rst),.count(count_up));

down_count_8bit uut2(.clk(clk),.rst(rst),.count(count_down));

mux2x1 uut3(.a(count_up),.b(count_down),.s(mode),.y(count));

endmodule 


module up_count_8bit(clk,rst,count);

input clk,rst;
output reg [7:0]count;

always@(posedge clk)
begin
if(rst)
count<=0;
else
count<=count+1'b1;
end
endmodule

module down_count_8bit(clk,rst,count);

input clk,rst;
output reg [7:0]count;

always@(posedge clk)
begin
if(rst)
count<=0;
else
count<=count-1'b1;
end
endmodule


module mux2x1(a,b,s,y);

input [7:0]a,b;
input s;
input [7:0]y;

assign y=s?b:a;

endmodule


`timescale 1ns/1ps
module tb;

reg clk,rst;
reg mode; // mode=1 down; mode=0 up;
wire [7:0]count;

updown_count_8bit uut(clk,rst,mode,count);

initial
begin
clk<=0;
end

always #5 clk<=~clk;


initial
begin

rst<=1;
#1;
@(posedge clk);
#1;


rst<=0; mode<=0;
#1;
@(posedge clk);
#1;

repeat(20)
begin

#1;
@(posedge clk);
#1;

end

rst<=0; mode<=1;
#1;
@(posedge clk);
#1;

repeat(20)
begin

#1;
@(posedge clk);
#1;

end

#1;
@(posedge clk);
#1;

$stop;
end

initial
$monitor("clk=%b rst=%b  mode=%b count=%0d",clk,rst,mode,count);
endmodule
