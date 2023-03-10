module mux16x1( input [15:0] i,
                input [3:0] select,
               output y);
  
  
  // level 1
  mux4x1 dut1(i[3:0],select[1:0],y1);
  mux4x1 dut2(i[7:4],select[1:0],y2);
  mux4x1 dut3(i[11:8],select[1:0],y3);
  mux4x1 dut4(i[15:12],select[1:0],y4);
  
  //level 2
  
  mux4x1 dut5({y4,y3,y2,y1},select[3:2],y);
  
endmodule

