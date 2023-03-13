module tb_counter_up4bit;
  
  reg clk,rst;
  wire [3:0]count;
  
  
  counter_up4bit dut(clk,rst,count);
  
  initial begin
    clk<=0; rst<=0;
  end
  
  always #5 clk<=~clk;
  
  initial begin
    @(posedge clk); rst<=1;
    @(posedge clk); rst<=0;
  end
  
  initial
    $monitor("clk=%b rst=%b count=%0d", clk,rst,count);
endmodule
  
  
