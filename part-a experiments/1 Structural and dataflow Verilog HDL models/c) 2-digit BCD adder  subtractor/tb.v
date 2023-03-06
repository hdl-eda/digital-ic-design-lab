`timescale 1ns/1ns

module tb;

/*
  reg [3:0]A,B;
  reg CIN,M;
  wire [3:0]F;
  wire COUT;
  
  add_sub  dut(A, B, CIN, M, F, COUT);
  */
  reg [3:0]A1,B1;
  reg [7:4]A2,B2;
  reg CIN,M;
  wire [3:0]F1;
  wire [7:4]F2;
  wire COUT;
  /*
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
  */
  add_sub_2digit dut(A2,A1,B2,B1,CIN,M,F2,F1,COUT);
  initial begin
  
  
       CIN=0;
  
       A2=5; A1=5; B2=9; B1=9; M=0;
  
  #10  A2=5; A1=5; B2=3; B1=3;  M=0;
  
  #10  A2=5; A1=5; B2=1; B1=1;  M=0;
  
  #10  A2=6; A1=6; B2=9; B1=9;  M=0;
  
  #10  A2=5; A1=5; B2=3; B1=3; M=1; 
  
  #10  A2=5; A1=5; B2=1; B1=1; M=1; 
  
  #10  A2=5; A1=5; B2=3; B1=3; M=1; 
  
  #10  A2=5; A1=5; B2=1; B1=1; M=1;     
   
  #10;
  
  $finish;
  
  end
  
  initial
  $monitor($time, "ns A2=%0d A1=%0d  B2=%0d  B1=%0d  CIN=%b M=%b COUT=%b  F2=%0d F1=%0d", A2,A1,B2,B1,CIN,M,COUT,F2,F1);
  endmodule