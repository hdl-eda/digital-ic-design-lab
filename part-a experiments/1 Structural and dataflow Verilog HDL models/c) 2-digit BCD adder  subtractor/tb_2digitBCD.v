`timescale 1ns/1ns

module tb;


  reg [3:0]A1,B1;
  reg [7:4]A2,B2;
  reg CIN,M;
  wire [3:0]F1;
  wire [7:4]F2;
  wire COUT;
  
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
