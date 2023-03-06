module parity_generator_checker (
    input [7:0] data_in,
    input parity_in,
    output [7:0] data_out,
    output parity_out,
    output error
);

// Parity Generator
assign parity_out = ^data_in;

// Parity Checker
assign error = (parity_in ^ ^data_out);

// Output
assign data_out = data_in;
    
endmodule
