module parity_generator_checker_tb;

  reg [7:0] data_in;
  reg odd_parity_control;
  reg even_parity_control;
  reg odd_parity_check_control;
  reg even_parity_check_control;
  wire [8:0] data_out_with_parity_bit;
  wire parity_out;
  wire parity_error;

//reg parity_bit;
  parity_generator_checker dut(data_in,odd_parity_control,even_parity_control,odd_parity_check_control,even_parity_check_control,data_out_with_parity_bit,parity_out,parity_error);
  
  
  
  initial 
  
  begin
  
  // Test for Parity generator 
  
  // Initialize odd_parity_check_control,even_parity_check_control to ZERO
  
  // Start test for even parity
  
  $display("-----------------Start of Even parity Generation------------------\n\n");
  #2;
  data_in=8'b1010_1010; odd_parity_control=1'b0; even_parity_control=1'b1;
 
 // Wait for some time
  #10;
  $display("------------The generated parity is even--------------------\n\n");
  $display("Data given is data_in=%b  ", data_in,
  "even_parity_control is high %b and odd_parity_control is low %b ", even_parity_control,odd_parity_control,
  "and the generated data_out_with_parity_bit is %b", data_out_with_parity_bit);
			  
 // Wait for some time
  #10;

 data_in=8'b0111_1010; odd_parity_control=1'b0; even_parity_control=1'b1;
 
 // Wait for some time
  #10;
  $display("------------The generated parity is even--------------------\n\n");
  $display("Data given is data_in=%b  ", data_in,
  "even_parity_control is high %b and odd_parity_control is low %b ", even_parity_control,odd_parity_control,
  "and the generated data_out_with_parity_bit is %b", data_out_with_parity_bit);
			  
 // Wait for some time
  #10;
  $display("-----------------END of Even parity Generation------------------\n\n");
  #2;
  // Start test for odd parity
  $display("-----------------Start of ODD parity Generation------------------\n\n");
  #2;
   data_in=8'b1010_1010; odd_parity_control=1'b1; even_parity_control=1'b0;
 
 // Wait for some time
  #10;
  $display("------------The generated parity is ODD--------------------\n\n");
  $display("Data given is data_in=%b  ", data_in,
  "even_parity_control is low %b and odd_parity_control is high %b ", even_parity_control,odd_parity_control,
  "and the generated data_out_with_parity_bit is %b", data_out_with_parity_bit);
			  
 // Wait for some time
  #10;
   data_in=8'b111_1010; odd_parity_control=1'b1; even_parity_control=1'b0;
 
 // Wait for some time
  #10;
  $display("------------The generated parity is ODD--------------------\n\n");
  $display("Data given is data_in=%b  ", data_in,
  "even_parity_control is low %b and odd_parity_control is high %b ", even_parity_control,odd_parity_control,
  "and the generated data_out_with_parity_bit is %b", data_out_with_parity_bit);
			  
 // Wait for some time
  #10;
  $display("-----------------END of ODD parity Generation------------------\n\n");
  #2;
  
  $display("-----------------Start of Even Parity check------------------\n\n");
  
  data_in=8'b0111_1010; dut.parity_bit=1'b0;odd_parity_control=1'b0; even_parity_control=1'b0; even_parity_check_control=1'b1; odd_parity_check_control=1'b0;
 #50;
  $display("data_in=%b ",data_in,
			"parity_bit=%b ", dut.parity_bit,
			"odd_parity_control=%b ", odd_parity_control,
			"even_parity_control=%b ", even_parity_control,
			"even_parity_check_control=%b ",even_parity_check_control,
			"odd_parity_check_control=%b ",odd_parity_check_control,
			"parity_error=%b ",parity_error
			
			);
    #2;
	$display("-----------------END of Even Parity check------------------\n\n");
  #2;
  $display("-----------------Start of ODD Parity check------------------\n\n");
  #2;
   data_in=8'b0111_1010; dut.parity_bit=1'b1; odd_parity_control=1'b0; even_parity_control=1'b0; even_parity_check_control=1'b0; odd_parity_check_control=1'b1;
  
  #50;
  $display("data_in=%b ",data_in,
			"parity_bit=%b ", dut.parity_bit,
			"odd_parity_control=%b ", odd_parity_control,
			"even_parity_control=%b ", even_parity_control,
			"even_parity_check_control=%b ",even_parity_check_control,
			"odd_parity_check_control=%b ",odd_parity_check_control,
			"parity_error=%b ",parity_error
			
			);
    #2;
	$display("-----------------END of ODD Parity check------------------\n\n");
  #2;
  $display("-----------------When no control signal is active------------------\n\n");
  #2;
  data_in=8'b0111_1010; odd_parity_control=1'b0; even_parity_control=1'b0; even_parity_check_control=1'b0; odd_parity_check_control=1'b0;
  #50;
  $display("data_in=%b  ",data_in,
		   "odd_parity_control=%b  ", odd_parity_control,
			"even_parity_control=%b  ", even_parity_control,
			"even_parity_check_control=%b  ",even_parity_check_control,
			"odd_parity_check_control=%b  ",odd_parity_check_control,
			"data_out_with_parity_bit_0=%b   ", data_out_with_parity_bit,
			"parity_out=%b  ",parity_out,
			"parity_error=%b  ",parity_error
			
			);
  
  $display("-----------------All tests ends------------------");
  end
endmodule
