#### Half adder design; file_name : ha.v

```
module ha(a,b,sum,co);
  
  input a,b;
  output sum,co;
  
  reg sum_reg,co_reg;
  
  // Dataflow modeling
  `ifdef dataflow
  
  assign sum=a^b,
          co=a&b;
          
  initial
  $display("Dataflow");
  
  //Gatelevel modeling        
    `elsif gatelevel
    
    xor(sum,a,b);
    and(co,a,b);
    
    initial
  $display("Gateflow modeling");
  
  //Behavioual  modeling
  `else
  
  always@*
  begin
          sum_reg=a^b;
          co_reg=a&b;
  end
  initial
  $display("Behavioural modeling");
  
  assign sum=sum_reg;
  assign co=co_reg;
  
  `endif
    
endmodule
```
#### Testbench ; file_name: tb.v
```
`timescale 1ns/1ps

module tb;
  
  reg a,b;
  wire sum,co;
  
  ha dut(a,b,sum,co);
  
  initial begin
    $monitor($time, "ns a %b b %b sum %b co %b", a,b,sum,co);
    {a,b}=0;
    #5 {a,b}=1;
    #5 {a,b}=2;
    #5 {a,b}=3;
    #5;
    
  end
endmodule
```

#### Steps in command line

```
1. To compile particular modeling

vlog +define+dataflow ha.v tb.v

2. To simulate without waveform window

vsim -c <testbench module name>

3. To run 

run -all

4. To quit simulation

quit -sim
```
