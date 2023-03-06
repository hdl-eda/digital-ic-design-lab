// comparator 1-bit

module comp1bit(a,b,gt,lt,eq,agtb,altb,aeqb);
input a,b,gt,lt,eq;
output agtb,altb,aeqb;

assign agtb=(a&(~b))|(a&gt)|(gt&(~b));
assign altb=(~a&(b))|(b&lt)|(lt&(~a));
assign aeqb=(~a&(~b)&eq)|((a)&(b)&eq);
endmodule
