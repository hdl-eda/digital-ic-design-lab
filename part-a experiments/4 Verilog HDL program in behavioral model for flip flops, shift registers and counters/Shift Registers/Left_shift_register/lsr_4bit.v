//design file

module leftshift_4bit(clk,rst,data_in,data_out);
  input clk,rst;
  input data_in;
  output data_out;
  
  reg [3:0]temp;
  
  always@(posedge clk)
    begin
      if(rst)
        temp<=4'b0000;
      else
        temp<={temp[2:0],data_in};
    end
  
  assign data_out=temp[3];
  
endmodule
