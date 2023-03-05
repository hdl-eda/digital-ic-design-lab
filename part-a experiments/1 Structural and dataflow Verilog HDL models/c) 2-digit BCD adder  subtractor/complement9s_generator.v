// complement9s_generator.v

module complement_generator(B, M, x);
  input [3:0]B;
  input M;
  output [3:0]x;
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9;
  xor (x[0],B[0],M);
  assign x[1]=B[1];
  xor (w5,B[1],B[2]);
  and(w9,w5,M);
  not (w1,M);
  and (w6,B[2],w1);
  or (x[2],w9,w6);
  not (w2,B[1]);
  not (w3,B[2]);
  not (w4,B[3]);
  and (w8,M,w2,w3,w4);
  and (w7,B[3],w1);
  or (x[3],w8,w7);
endmodule
