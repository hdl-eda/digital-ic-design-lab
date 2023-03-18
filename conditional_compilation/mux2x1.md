#### MUX2x1 file_name: mux2x1.v
```
module mux2x1(a,b,s,y);

input a,b;
input s;
output y;

reg y_reg;

// Gate-level description
`ifdef gatelevel

not(sbar,s);
and g1(y1,a,sbar),g2(y2,s,b);
or(y,y1,y2);
initial
$display(" From gatelevel");

//Dataflow level description

`elsif dataflow1

assign  sbar=~s,
	y1=sbar&a,
	y2=s&b,
	y=y1|y2;
initial
$display(" From dataflow1");

//Dataflow level description using ternary operator

`elsif dataflow2

assign y=s?b:a;
initial
$display(" From dataflow2");

//Behavioural description

`else

assign y=y_reg;
always@*
case(s)
1'b0: y_reg=a;
1'b1: y_reg=b;
endcase
initial
$display(" From Behavioural");
`endif

endmodule
```

#### MUX2x1 Testbench file_name: tb.v

```
`timescale 1ns/1ps

module tb;

reg a,b;
reg s;
wire y;

integer i;

mux2x1 dut(a,b,s,y);

initial begin

$monitor($time, "ns a %b,b %b,s %b,y %b", a,b,s,y);

for(i=0;i<8;i=i+1) begin

{a,b,s}=$random;
#5;

end
#5;
$stop;
end
endmodule
```
#### Steps in command line
```
1. To compile particular modeling

vlog +define+gatelevel mux2x1.v tb.v

2. To simulate without waveform window

vsim -c <testbench module name>

3. To run 

run -all

4. To quit simulation

quit -sim
```
