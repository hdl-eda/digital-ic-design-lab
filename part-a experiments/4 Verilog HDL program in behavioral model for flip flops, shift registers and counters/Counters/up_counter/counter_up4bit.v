module counter_up4bit(clk,rst,count);
  
  input clk,rst;
  output reg [3:0]count;
  
  always@(posedge clk)
    begin
      if(rst)
        count<=0;
      else
        count<=count+1'b1;
    end
  
  endmodule
