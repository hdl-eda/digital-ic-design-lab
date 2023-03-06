module testbench;

    // Instantiate the module under test
    decoder_3to8 dut (
        .in(in),
        .out(out)
    );
    
    // Define the input and output signals
    reg [2:0] in;
    wire [7:0] out;
    
    // Initialize the inputs
    initial begin
        in = 3'b000;
    end
    
    // Stimulate the inputs and check the outputs
    always #10 in = in + 1;
    always @* $display("Input: %b, Output: %b", in, out);
    
    initial begin
    $dumpfile("a.vcd");
    $dumpvars(1);    
  end
    
endmodule
