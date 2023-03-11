module decoder2x4_enable(input [1:0] sel, input enable, output reg [3:0] out);

    always @(sel, enable) begin
        if (enable) begin
            case(sel)
                2'b00: out = 4'b0001;
                2'b01: out = 4'b0010;
                2'b10: out = 4'b0100;
                2'b11: out = 4'b1000;
            endcase
        end else begin
            out = 4'b0000;
        end
    end

endmodule
