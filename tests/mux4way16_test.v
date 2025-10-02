module mux4way16_test;
  reg [15:0] a, b, c, d;
  reg [1:0] sel;
  wire [15:0] out;

  student_mux4way16 dut (.a(a), .b(b), .c(c), .d(d), .sel(sel), .out(out));

  initial begin
    $display("|        a         |        b         |        c         |        d         | sel  |       out        |");

    a = 'b0000000000000000;
    b = 'b0000000000000000;
    c = 'b0000000000000000;
    d = 'b0000000000000000;
    sel = 'b00
    #1 $display("| %d | %d | %d | %d |  %d  | %d |", a, b, c, d, sel, out);
    sel = 'b01
    #2 $display("| %d | %d | %d | %d |  %d  | %d |", a, b, c, d, sel, out);
    sel = 'b10
    #3 $display("| %d | %d | %d | %d |  %d  | %d |", a, b, c, d, sel, out);
    sel = 'b11
    #4 $display("| %d | %d | %d | %d |  %d  | %d |", a, b, c, d, sel, out);

    a = 'b0001001000110100;
    b = 'b1001100001110110;
    c = 'b1010101010101010;
    d = 'b0101010101010101;
    sel = 'b00
    #5 $display("| %d | %d | %d | %d |  %d  | %d |", a, b, c, d, sel, out);
    sel = 'b01
    #6 $display("| %d | %d | %d | %d |  %d  | %d |", a, b, c, d, sel, out);
    sel = 'b10
    #7 $display("| %d | %d | %d | %d |  %d  | %d |", a, b, c, d, sel, out);
    sel = 'b11
    #8 $display("| %d | %d | %d | %d |  %d  | %d |", a, b, c, d, sel, out);

    $finish;
  end
endmodule
