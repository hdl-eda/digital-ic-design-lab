module tb_tff;
  
   reg clk,rst,t;
   wire q;
  
   tff dut(clk,rst,t,q);
  
  initial
    begin
      clk<=0;
    end
  
  always #5 clk=~clk;
  
  initial
    begin
       
       rst<=1; t<=1;
       #1;
       @(posedge clk);
       #1;
       
       rst<=0; t<=0;
       #1;
       @(posedge clk);
       #1; 
       
       t<=1;
       #1;
       @(posedge clk);
       #1;
      
       t<=1;
       #1;
       @(posedge clk);
       #1;
      
       t<=1;
       #1;
       @(posedge clk);
       #1;
      
      t<=0;
      #1;
      @(posedge clk);
      #1;
      
       t<=1;
       #1;
       @(posedge clk);
       #1;
      
       t<=1;
       #1;
       @(posedge clk);
       #1;
      
      #50;
      $stop;
    end
  
  initial 
    $monitor("clk=%b rst=%b t=%b q=%b",clk,rst,t,q);
   
endmodule
