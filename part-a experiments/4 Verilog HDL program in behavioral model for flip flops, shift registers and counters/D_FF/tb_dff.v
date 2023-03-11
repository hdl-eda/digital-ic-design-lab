`timescale 1ns/1ps
module tb;
  
  reg clk,rst;
  wire reg q;
  
   dff dut(clk,rst,q);
  
  initial
    begin
      clk=0; rst=0;
    end
  
  alwats #5 clk=~clk;
  
  initial
    begin
      @(posedge clk) rst=1; d=1;
      @(posedge clk) rst=0; d=0;
      @(posedge clk) d=1;
      @(posedge clk) d=0;
      #10;
      $stop;
    end
  
  initial 
    $monitor("clk=%b rst=%b d=%b q=%b",clk,rst,d,q);
endmodule
  
  
