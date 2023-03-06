/////Testbench Code- Carry Look Ahead Adder

`timescale 1ns / 1ps

module TestModule;
// Inputs
reg [3:0] a;
reg [3:0] b;
reg cin;

// Outputs
wire [3:0] sum;
wire cout;

// Instantiate the Unit Under Test (UUT)
CLA_Adder uut (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);
initial begin
// Initialize Inputs
a = 0;
b = 0;
cin = 0;
// Wait 100 ns for global reset to finish
#100;
a = 5;
b = 6;
cin = 1;
// Wait 100 ns for global reset to finish
#100;
end
endmodule
