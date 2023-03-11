`timescale 1ns/1ps
module tb;
  
  reg clk,rst,d;
  wire  q;
  
  dff dut(clk,rst,d,q);
  
  initial
    begin
      clk<=0;
    end
  
  always #5 clk=~clk;
  
  initial
    begin
       
       rst<=1; d<=1;
       #1;
       @(posedge clk);
       #1;
       
       rst<=0; d<=0;
       #1;
       @(posedge clk);
       #1; 
       
       d<=1;
       #1;
       @(posedge clk);
       #1;
      
      d<=0;
      #1;
      @(posedge clk);
      #1;
      
      #50;
      $stop;
    end
  
  initial 
    $monitor("clk=%b rst=%b d=%b q=%b",clk,rst,d,q);
   
endmodule
  
