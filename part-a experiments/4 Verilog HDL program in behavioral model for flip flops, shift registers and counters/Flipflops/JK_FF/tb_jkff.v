module tb_tff;
  
  reg j,k,clk,rst;
  wire q;
  
   jkff dut(j,k,clk,rst,q);
  
  initial
    begin
      clk<=0;
    end
  
  always #5 clk=~clk;
  
  initial
    begin
       
       rst<=1; j<=1; k<=0;
       #1;
       @(posedge clk);
       #1;
       
       rst<=0; j<=1; k<=0;
       #1;
       @(posedge clk);
       #1; 
       
      j<=1; k<=1;
       #1;
       @(posedge clk);
       #1;
      
      j<=0; k<=1;
       #1;
       @(posedge clk);
       #1;
      
       j<=1; k<=0;
       #1;
       @(posedge clk);
       #1;
      
      j<=0; k<=1;
      #1;
      @(posedge clk);
      #1;
      
      j<=1; k<=1;
       #1;
       @(posedge clk);
       #1;
      
      j<=1; k<=0;
       #1;
       @(posedge clk);
       #1;
      
      #50;
      $stop;
    end
  
  initial 
    $monitor("clk=%b rst=%b j=%b; k=%b;=%b q=%b",clk,rst,j,k,q);
   
endmodule
