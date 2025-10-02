module dmux8way_test;
  reg in;
  reg [2:0] sel;
  wire a, b, c, d, e, f, g, h;

  student_dmux8way dut (.in(in), .sel(sel), .a(a), .b(b), .c(c), .d(d), .e(a), .f(f), .g(g), .h(h));

  initial begin
    $display("|in |  sel  | a | b | c | d | e | f | g | h |");

    in = 0;
    sel = 3'b000;
    #1 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b001;
    #2 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b010;
    #3 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b011;
    #4 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b100;
    #5 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b101;
    #6 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b110;
    #7 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b111;
    #8 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);

    in = 1;
    sel = 3'b000;
    #9 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b001;
    #10 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b010;
    #11 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b011;
    #12 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b100;
    #13 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b101;
    #14 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b110;
    #15 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);
    sel = 3'b111;
    #16 $display("| %d |  %d  | %d | %d | %d | %d | %d | %d | %d | %d |", in, sel, a, b, c, d, e, f, g, h);

    $finish;
  end
endmodule
