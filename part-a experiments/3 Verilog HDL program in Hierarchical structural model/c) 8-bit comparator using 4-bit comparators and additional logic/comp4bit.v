//Comparator 4-bit

module comp4bit(a,b,gt,lt,eq,agtb,altb,aeqb);
input [3:0]a,b;
input gt,lt,eq;
output agtb,altb,aeqb;


 comp1bit ins1(a[0],b[0],gt,lt,eq,agtb1,altb1,aeqb1);
 comp1bit ins2(a[1],b[1],agtb1,altb1,aeqb1,agtb2,altb2,aeqb2);
 comp1bit ins3(a[2],b[2],agtb2,altb2,aeqb2,agtb3,altb3,aeqb3);
 comp1bit ins4(a[3],b[3],agtb3,altb3,aeqb3,agtb,altb,aeqb);

endmodule
