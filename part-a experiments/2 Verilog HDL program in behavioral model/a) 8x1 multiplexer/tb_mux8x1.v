// Testbench 

`timescale 1ns/1ps

module tb_mux8x1;
  
  reg [7:0]i;
  reg [2:0]s;
  wire y;
  
  integer j;
  mux8x1 dut(i,s,y);
  
  initial 
    
    begin
      $monitor($time, "ns i=%b s=%0d y=%b", i,s,y);
      i=8'b1010_1010;
      for(j=0; j<8; j=j+1)
        begin
          s=j;
          #10;
        end
    end
endmodule
