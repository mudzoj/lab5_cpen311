module My_Generate_Arbitrary_Divided
(input logic inclk,Reset,
input logic [31:0] div_clk_count,
output logic outclk,outclk_Not);

	logic [31:0] counter = 32'd0; // h17D7840 for 1 Hz
	
	assign outclk_Not =~outclk;
	
	always_ff @(posedge inclk,negedge Reset) begin
		if (!Reset) outclk <= 0;
		else begin
			counter <= counter + 32'd1;
			 if(counter>=(div_clk_count)) begin
				counter <= 32'd1;
				outclk<=~outclk;
			 end
			 else outclk<=outclk;
		end
		
	end

endmodule