`default_nettype none

module LFSR(
    input wire clk,
    output reg [4:0] lfsr
);


    always_ff @(posedge clk) begin 
        lfsr[0] <= lfsr[1];
        lfsr[1] <= lfsr[2];
        lfsr[2] <= lfsr[3];
        lfsr[3] <= lfsr[4];
        lfsr[4] <= (lfsr[0] ^ lfsr[2]);
    end



endmodule
`default_nettype wire