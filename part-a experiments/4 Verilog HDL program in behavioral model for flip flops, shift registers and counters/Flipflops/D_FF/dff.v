module dff(clk,rst,d,q);
  
  input clk,rst,d;
  output reg q;
  
  always@(posedge clk)
    begin
      if(rst)   // Active high reset
        q<=0;
      else
        q<=d;      
    end
  
endmodule
  
  
