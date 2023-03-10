
module comp8bit(a,b,gt,lt,eq,agtb,altb,aeqb);
  input [7:0]a,b;
  input gt,lt,eq;
  output agtb,altb,aeqb;

   

  comp4bit  dut1(a[3:0],b[3:0],gt,lt,eq,agtb1,altb1,aeqb1);
  comp4bit dut2(a[7:4],b[7:4],agtb1,altb1,aeqb1,agtb,altb,aeqb);
  
endmodule
