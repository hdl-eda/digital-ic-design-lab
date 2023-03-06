// Testbench 

`timescale 1ns / 1ps

module tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire agtb;
	wire altb;
	wire aeqb;

// Instantiate the Unit Under Test (UUT)
	comp4bit uut (
		.a(a), 
		.b(b), 
		.agtb(agtb), 
		.altb(altb), 
		.aeqb(aeqb)
	);

	initial begin
		// Initialize Inputs
		a = 0; b = 0;

		#5 a = 5; b = 3;
			
		#5 a = 5; b = 7;

    #5 a = 5; b = 5;	
			end
      
endmodule
