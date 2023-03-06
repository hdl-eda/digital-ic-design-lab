module add_sub_2digit(A2,A1,B2,B1,CIN,M,F2,F1,COUT);
  input [3:0]A1,B1;
  input [7:4]A2,B2;
  input CIN,M;
  output [3:0]F1;
  output [7:4]F2;
  output COUT;
  wire COUT1;
  wire [3:0]W1;
  wire [7:4]W2;
  complement_generator comgen0(B1,M,W1);
  complement_generator comgen1(B2,M,W2);
  bcd_adder add0(A1,W1,CIN, F1, COUT1);
  bcd_adder add1(A2,W2,COUT1,F2, COUT);
endmodule