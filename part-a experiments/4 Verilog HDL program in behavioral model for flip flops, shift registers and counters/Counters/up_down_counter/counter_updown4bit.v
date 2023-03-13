module counter_updown4bit(clk,rst,ud,count);
  
  input clk,rst;
  input ud; // ud=1 for up count; ud=0 for down count
  output reg [3:0]count;
  
  always@(posedge clk)
    begin
      if(rst)
        count<=0;
      else if(ud)
        count<=count+1'b1;
      else
        count<=count-1'b1;
      
    end
  
  endmodule
