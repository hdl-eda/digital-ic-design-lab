
module comp8bit(a,b,agtb,altb,aeqb);
  input [7:0]a,b;
  output agtb,altb,aeqb;


  comp4bit  dut1(a[3:0],b[3:0],1'b0,1'b0,1'b1,agtb1,altb1,aeqb1);
  comp4bit dut2(a[7:4],b[7:0],agtb1,altb1,aeqb1,agtb,altb,aeqb);
  
endmodule
  
