`timescale 1ns/1ps
`default_nettype none

module LFSR_tb;

    logic clk;
    logic [4:0] lfsr;


    LFSR uut (
        .clk(clk),
        .lfsr(lfsr)
    );


    initial clk = 0;
    always #5 clk = ~clk;

   
    initial begin
        // Set non-zero seed
        uut.lfsr = 5'b00001;

        repeat (40) begin
            @(posedge clk);
 
        end

        $finish;
    end

endmodule
`default_nettype wire
