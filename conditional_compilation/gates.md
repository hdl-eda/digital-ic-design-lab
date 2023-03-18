#### Gates

```
module dut(
  input i1, i2,
  output out
);
  `ifdef AND_OP
    assign out = i1 & i2;
  `else
    assign out = i1 | i2;
  `endif
endmodule
```
```
module tb;
  reg i1, i2;
  wire out;
  
  dut and_or(i1, i2, out);
  initial begin
    `ifdef AND_OP
      $monitor("[AND Operation] At time T = %0t: i1 = %b, i2 = %b, out = %b", $time, i1, i2, out);
    `else
      $monitor("[OR Operation] At time T = %0t: i1 = %b, i2 = %b, out = %b", $time, i1, i2, out);
    `endif
    i1 = 0; i2 = 0;
    #1;
    i1 = 0; i2 = 1;
    #1;
    i1 = 1; i2 = 0;
    #1;
    i1 = 1; i2 = 1;
  end
endmodule
```
