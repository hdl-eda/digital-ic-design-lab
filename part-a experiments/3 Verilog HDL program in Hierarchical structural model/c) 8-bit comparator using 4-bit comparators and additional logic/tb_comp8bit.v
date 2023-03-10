`timescale 1ns/1ns
module tb;
  
  
  reg [7:0]a,b;
  reg gt,lt,eq;
  wire agtb,altb,aeqb;
  
  integer i;
  
 comp8bit dut(a,b,gt,lt,eq,agtb,altb,aeqb);
  
  
  initial begin
    gt=0;lt=0;eq=1;
    $monitor("a %0d and b %0d agtb=%b altb=%b aeqb=%b", a,b,agtb,altb, aeqb);
    for(i=0; i<8; i=i+1) begin
      a=$random; b=$random;
      #10;
      
    end
    a=5; b=5;
    #10;
    $finish;
  end
endmodule
