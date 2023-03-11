module testbench();
  
   // Declare the inputs and outputs for the testbench
    reg [2:0] sel;
    wire [7:0] out;

    // Instantiate the DUT (device under test)
    decoder3x8 dut(.sel(sel), .out(out));

   

    // Initialize the inputs
    initial begin
        sel = 0;
        #10;
        sel = 1;
        #10;
        sel = 2;
        #10;
        sel = 3;
        #10;
        sel = 4;
        #10;
        sel = 5;
        #10;
        sel = 6;
        #10;
        sel = 7;
        #10;
        $finish;
    end

    // Monitor the outputs and print them to the console
    always @(out) begin
        $display("sel = %d, out = %b", sel, out);
    end

endmodule
