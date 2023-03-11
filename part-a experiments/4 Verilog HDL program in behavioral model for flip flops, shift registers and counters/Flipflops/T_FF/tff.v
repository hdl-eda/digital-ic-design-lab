module tff(clk,rst,t,q);
  
  input clk,rst,t;
  output reg q;
  
  always@(posedge clk)
    begin
      if(rst)
        q<=0;
      else if(t)
        q<=~q;
      else
        q<=q;
    end  
  
endmodule
