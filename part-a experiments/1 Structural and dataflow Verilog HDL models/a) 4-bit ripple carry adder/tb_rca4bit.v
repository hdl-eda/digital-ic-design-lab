/////Testbench Code- Ripple carry adder

`timescale 1ns / 1ps

module TestModule;
// Inputs
reg [3:0] a;
reg [3:0] b;

// Outputs
wire [3:0] sum;
wire cout;
  
  //Uncomment the following if 2nd testing method is used.
 // integer i;
  
// Instantiate the Unit Under Test (UUT)
adder_4bit dut(a,b,sum,cout);
initial begin
  $monitor("a=%0d b=%0d cout=%b sum=%0d", a, b, cout, sum);

  // The following takes only two sets of inputs
  
// Initialize Inputs
a = 0;
b = 0;

// Wait 10ns for global reset to finish
#10;
a = 5;
b = 6;

// Wait 10ns for global reset to finish
#10;
$stop;
  
  //2nd testing method: following uses a for-loop with 16 different inputs
  /*
  for(i=0; i<=15; i=i+1) begin
  a=$random%15;
  b=$random%15;
  $5;
  end
  #5;
  $stop;
  */
  
end
endmodule
