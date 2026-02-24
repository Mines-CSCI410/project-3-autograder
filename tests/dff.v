/*
 * Copyright Grant Lemons for CSCI410
 * 2026-02-24
 */

module dff #(parameter N = 1) (input [N-1:0] in, output reg [N-1:0] out);
    initial begin
        out = 0;
    end
    always begin
        #2 out = in;
    end
endmodule
