//define a 4-bit full adder

//fa4bit.v

module fulladd4(a, b, c_in,sum, c_out);
  //i/o port declaration
  input [3:0] a, b;
  input c_in;
  output [3:0] sum;
  output c_out;
  //internal net
  wire c1, c2, c3;
  fulladd fa0(a[0], b[0], c_in, sum[0], c1);
  fulladd fa1(a[1], b[1], c1, sum[1], c2);
  fulladd fa2(a[2], b[2], c2, sum[2], c3);
  fulladd fa3(a[3], b[3], c3, sum[3], c_out);
endmodule
