module parity_gen_chk(
    input [7:0] data_in,
    input parity_in,
    output [7:0] data_out,
    output parity_out,
    output error
);

// Parity Generator
reg [7:0] parity_data;
always @* parity_data = data_in;
assign parity_out = ^parity_data;

// Parity Checker
reg [7:0] chk_data;
always @* chk_data = data_in;
always @* begin
    error = (parity_in ^ ^chk_data);
end

// Output
assign data_out = data_in;

endmodule
