#### adder and subtractor using  diffrent modeling styles; file_name: fas.v

```
module fas(a,b,cin,sum_diff,co_borrow);
input a,b,cin;
output sum_diff,co_borrow;

reg sum_diff_reg;
reg co_borrow_reg;

`ifdef adder

assign sum_diff=a^b^cin;
assign co_borrow=(a&b)|(a&cin)|(b&cin);

`elsif subtract

assign sum_diff=a^b^cin;
assign co_borrow=(cin&(a~^b))|(~a&b);

`elsif behave_adder

always@(a,b,cin)
begin

 sum_diff_reg=a^b^cin;
 co_borrow_reg=(a&b)|(a&cin)|(b&cin);

end

 assign sum_diff=sum_diff_reg;
 assign co_borrow=co_borrow_reg;

`else

always@(a,b,cin)
begin

 sum_diff_reg=a^b^cin;
 co_borrow_reg=(cin&(a~^b))|(~a&b);

end

 assign sum_diff=sum_diff_reg;
 assign co_borrow=co_borrow_reg;

`endif

endmodule
```

#### Testbench; file_name: tb.v
```

`timescale 1ns/1ns

module tb;


reg a,b,cin;
wire sum_diff,co_borrow;
integer i;
fas dut(a,b,cin,sum_diff,co_borrow);

initial begin
$monitor("a %b, b  %b,cin  %b,sum_diff  %b,co_borrow  %b",a,b,cin,sum_diff,co_borrow);
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#5;
end
#5;
$finish;
end
endmodule
```
#### Steps in command line
```
1. To compile particular modeling

vlog +define+adder fas.v tb.v

2. To simulate without waveform window

vsim -c <testbench module name>

3. To run 

run -all

4. To quit simulation

quit -sim
 ```
