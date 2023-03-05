module add_sub(A, B, CIN, M, F, COUT);
  input [3:0]A,B;
  input CIN,M;
  output [3:0]F;
  output COUT;
  wire [3:0]W;
  complement_generator comgen0(B,M,W);
  bcd_adder add0(A, W, CIN, F, COUT);
endmodule
