module testbench;

   
    
    // Define the input and output signals
    reg [7:0] in;
    wire [2:0] out;
    
     // Instantiate the module under test
    encoder_8x3 dut (
        .in(in),
        .out(out)
    );
    
    // Initialize the inputs
    initial begin
        in = 8'b00000001;
    end
    
    // Stimulate the inputs and check the outputs
    always #10 in = in << 1;
    always @* $display("Input: %b, Output: %b", in, out);
    
    
    
endmodule
