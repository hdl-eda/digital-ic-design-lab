
module parity_generator_checker (
  input [7:0] data_in,
  input odd_parity_control,
  input even_parity_control,
  input odd_parity_check_control,
  input even_parity_check_control,
  output [8:0] data_out_with_parity_bit,
  output parity_out,
  output reg parity_error
);

  reg parity_bit;

  assign parity_out = parity_bit;
  
  always @* begin  // Parity generator
    if (odd_parity_control) begin
      parity_bit = ~^data_in;
    end else if (even_parity_control) begin
      	  parity_bit = ^data_in;
    end else if (odd_parity_check_control) 
	begin

           if (~^{data_in,parity_bit})
	       begin
	        $display($time,"ns For ODD parity: Let's say from DUT the parity_bit is %b\n",parity_bit);
	        parity_error = 1'b1;
	       end
           else
               begin
	         $display($time,"ns For ODD parity: Let's say from DUT the parity_bit is %b\n",parity_bit);
	         parity_error = 1'b0;
	       end
        end	  
	else if (even_parity_check_control) 
	begin
                 if (^{data_in,parity_bit})
	           begin
	             $display($time,"ns For EVEN parity: Let's say from DUT the parity_bit is %b\n",parity_bit);
	             parity_error = 1'b1;
                   end
		else
               	   begin
	            $display($time,"ns For EVEN parity: Let's say from DUT the parity_bit is %b\n",parity_bit);
	            parity_error = 1'b0;
	           end
        end
	else 
	begin
        parity_error = 1'b0;
	parity_bit=1'b0;
        end
    end

  // Output data with parity bit
  assign data_out_with_parity_bit = {data_in, parity_bit};

endmodule
