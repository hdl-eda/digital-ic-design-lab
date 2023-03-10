// Here we will learn to write a verilog HDL to design a 8 bit counter

module counter(clk,reset,up_down,count);
  //define input and output ports
  input clk,reset,up_down;
  output reg [7:0] count;
  //always block will be executed at each and every positive edge of the clock
  always@(posedge clk, posedge reset) 
  begin
    if(reset)    //Set Counter to Zero
      count <= 0;
    else if(up_down)        //count up
      count <= count + 1;
    else            //count down
      count <= count - 1;
  end
endmodule :counter
