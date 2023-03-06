module parity_gen_chk_tb;

// Inputs
reg [7:0] data_in;
reg parity_in;

// Outputs
wire [7:0] data_out;
wire parity_out;
wire error;

// Instantiate the Unit Under Test (UUT)
parity_gen_chk uut (
    .data_in(data_in),
    .parity_in(parity_in),
    .data_out(data_out),
    .parity_out(parity_out),
    .error(error)
);

initial begin
    // Test case 1
    data_in = 8'b01010101;
    parity_in = 1'b0;
    #10; // Wait for the signals to stabilize
    if (data_out !== 8'b01010101) $error("Test case 1 failed: data_out");
    if (parity_out !== 1'b1) $error("Test case 1 failed: parity_out");
    if (error !== 1'b0) $error("Test case 1 failed: error");

    // Test case 2
    data_in = 8'b10101010;
    parity_in = 1'b1;
    #10; // Wait for the signals to stabilize
    if (data_out !== 8'b10101010) $error("Test case 2 failed: data_out");
    if (parity_out !== 1'b0) $error("Test case 2 failed: parity_out");
    if (error !== 1'b0) $error("Test case 2 failed: error");

    // Test case 3
    data_in = 8'b11110000;
    parity_in = 1'b0;
    #10; // Wait for the signals to stabilize
    if (data_out !== 8'b11110000) $error("Test case 3 failed: data_out");
    if (parity_out !== 1'b1) $error("Test case 3 failed: parity_out");
    if (error !== 1'b1) $error("Test case 3 failed: error");

    // Test case 4
    data_in = 8'b00001111;
    parity_in = 1'b1;
    #10; // Wait for the signals to stabilize
    if (data_out !== 8'b00001111) $error("Test case 4 failed: data_out");
    if (parity_out !== 1'b0) $error("Test case 4 failed: parity_out");
    if (error !== 1'b1) $error("Test case 4 failed: error");

    $display("All test cases passed");
    $finish;
end
 initial begin
    $dumpfile("a.vcd");
    $dumpvars(1);    
  end
endmodule
