module dff(input in, output out);
    reg clock;
    initial begin
        clock = 0;
    end
    always begin
        #1 clock = ~clock;
    end

    clock_dff inner(.in(in), .clock(clock), .out(out))
endmodule

// Licensed under CC-BY-SA, derived from Icarus Verilog Wiki
module clock_dff(input in, input clock, output reg out);
    // On clock edge, check for reset and latch data
   always @(posedge clock) begin
        out <= in;   // Latch the input data
   end
endmodule
