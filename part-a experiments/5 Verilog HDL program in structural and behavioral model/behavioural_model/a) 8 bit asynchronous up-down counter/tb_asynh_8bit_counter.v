// Code your testbench here

module counter_tb;
  reg clk,reset,ud;
  wire [7:0] count;
  // instance counter design
   counter dut(clk,reset,ud,count);
  //clock generator
  initial begin clk = 1'b0; repeat(30) #3 clk= ~clk;end
  //insert all the input signal
  initial begin reset=1'b1;#7 reset=1'b0; #35 reset=1'b1;end
  
  initial begin #5 ud=1'b1;#24 ud=1'b0;end
  
  
  //monitor all the input and output ports at times when any inputs changes its state
  initial begin 
    $monitor("time=%0d,reset=%b,ud=%b,count=%d", $time,reset,ud,count);
  end
endmodule :counter_tb
