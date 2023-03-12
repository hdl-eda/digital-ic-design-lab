//testbench file

`timescale 1ns/1ps

module tb;

reg clk,rst;
reg data_in;
wire data_out;

leftshift_4bit uut(clk,rst,data_in,data_out);

initial
begin
clk<=0;
end

always #5 clk<=~clk;

initial
begin

rst<=0;
#1;
@(posedge clk);
#1;

rst<=1;
#1;
@(posedge clk);
#1;
/*
rst<=0;
#1;
@(posedge clk);
#1;*/

rst<=0;data_in<=1;
#1;
@(posedge clk);
#1;


data_in<=0;
#1;
@(posedge clk);
#1;


data_in<=1;
#1;
@(posedge clk);
#1;


data_in<=0;
#1;
@(posedge clk);
#1;

data_in<=1;
#1;
@(posedge clk);
#1;


data_in<=0;
#1;
@(posedge clk);
#1;


data_in<=1;
#1;
@(posedge clk);
#1;

data_in<=0;
#1;
@(posedge clk);
#1;

end

initial
$monitor("clk %b,rst %b,data_in %b,data_out %b",clk,rst,data_in,data_out);

endmodule
