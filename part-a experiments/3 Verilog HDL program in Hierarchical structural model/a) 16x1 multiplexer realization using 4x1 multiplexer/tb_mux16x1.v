module test_mux16x1;

   // Inputs
   reg [15:0] data_in;
   reg [3:0] select;

   // Outputs
   wire out;

   // Instantiate the DUT
   mux16x1 dut (
      .i(data_in),
      .select(select),
      .y(out)
   );

   // Initialize inputs
   initial begin
      data_in = 16'b1010_1010_1010_1010;
      select = 4'b0000;
   end

   // Stimulus
   always #5 select = select + 1'b1;
  
  initial
   #50 $finish;

   // Display output
 initial
   $monitor($time, "data_in=%b select=%0d out = %b", data_in,select,out);

endmodule
