module decoder3x8(input [2:0]sel, output [7:0]out);
  
  
  decoder2x4_enable uut1(sel[1:0],~sel[2], out[3:0]);
  decoder2x4_enable uut2(sel[1:0],sel[2], out[7:4]);
  
endmodule
