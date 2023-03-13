`timescale 1ns/1ps
module tb;
  
  reg clk,rst;
  reg ud; // ud=1 for up count; ud=0 for down count
  wire [3:0]count;
 
  counter_updown4bit dut(clk,rst,ud,count);
  
  
  initial
    begin
      clk<=0;
      rst<=0;
    end
  
  always #5 clk<=~clk;
  
  initial
    begin
      $monitor("clk %b,rst %b,ud %b,count %0d",clk,rst,ud,count);
      @(posedge clk); rst<=1;
      @(posedge clk); rst<=0;
      repeat(20)
        begin
          @(posedge clk); ud<=1;
        end
       repeat(20)
        begin
          @(posedge clk); ud<=0;
        end
      $stop;
    end
endmodule
