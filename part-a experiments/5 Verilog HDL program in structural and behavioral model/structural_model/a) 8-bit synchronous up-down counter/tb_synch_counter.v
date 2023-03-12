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
