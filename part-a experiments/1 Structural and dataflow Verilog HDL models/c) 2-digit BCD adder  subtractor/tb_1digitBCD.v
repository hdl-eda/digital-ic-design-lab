`timescale 1ns/1ns

module tb;


  reg [3:0]A,B;
  reg CIN,M;
  wire [3:0]F;
  wire COUT;
  
  add_sub  dut(A, B, CIN, M, F, COUT);
  
  
  initial begin
  
  
       CIN=0;
  
       A=5; B=9;  M=0;    // expected 14
  
  #10  A=5; B=9; M=0;     // expected 14
  
  #10  A=9; B=9; M=0;       // expected 18
  
  #10  A=1; B=9; M=0;     // expected 10
  
  #10  A=9; B=9; M=1;     // expected 0
  
  #10  A=9; B=5; M=1;       // expected 4
  
  #10  A=5; B=9; M=1;      // -4
  
  #10  A=5; B=2; M=1;     // expected 3
    
  #10  A=9; B=1; M=0;      // expected 8
  
  #10;
  
  $finish;
  
  end
  
  initial
  $monitor($time, "ns A=%0d   B=%0d    CIN=%b M=%b COUT=%b  F=%0d   ", A,B,CIN,M,COUT,F);
  
  endmodule
