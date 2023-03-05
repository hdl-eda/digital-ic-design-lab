module mux_4bit ( add ,sub , sel_add1_sub0, dout );
output [4:0]dout ;
input [4:0]add ;
input [4:0]sub ;
input sel_add1_sub0 ;
   
assign dout = sel_add1_sub0 ? add : sub;

endmodule
