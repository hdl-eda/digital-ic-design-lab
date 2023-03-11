module dff(clk,rst,q);
  
  input clk,rst;
  output reg q;
  
  always@(posedge clk)
    begin
      if(rst)   // Active high reset
        q<=0;
      else
        q<=d;      
    end
  
endmodule
  
  
