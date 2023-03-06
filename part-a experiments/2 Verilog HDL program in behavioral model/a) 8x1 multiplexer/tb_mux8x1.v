// Testbench

`timescale 1ns/1ps

module tb_mux8x1;
  
  input [7:0]i;
  input [2:0]s;
  output reg y;
  
  mux8x1 dut(i,s,y);
  
  initial 
    
    begin
      $monitor($time, "ns i=%b s=%0d y=%b", i,s,y);
      i=8'b1010_1010;
      for(i=0; i<8; i=i+1)
        begin
          s=i;
          #10;
        end
    end
endmodule
