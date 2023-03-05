// single digit bcd adder

//singledigitbcd_adder.v

module bcd_adder( A, B, CIN, F, COUT);
  input [3:0] A, B;
  input CIN;
  output [3:0] F;
  output COUT;
  wire [3:0] Z,S;
  wire k,w1,w2,w3;
  fulladd4 add0(A, B, CIN, Z, k);
  and (w1,Z[3],Z[2]);
  and (w2,Z[3],Z[1]);
  or (COUT,k,w1,w2);
  assign S = {1'b0,COUT,COUT,1'b0};
  fulladd4 add1(Z, S, 0,F,w3);
endmodule
