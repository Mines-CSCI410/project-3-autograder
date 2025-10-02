module dmux4way_test;
  reg in;
  reg [1:0] sel;
  wire a, b, c, d;

  student_dmux4way dut (.in(in), .sel(sel), .a(a), .b(b), .c(c), .d(d));

  initial begin
    $display("|in | sel  | a | b | c | d |");

    in = 0;
    sel = 2'b00;
    #1 $display("| %d |  %d  | %d | %d | %d | %d |", in, sel, a, b, c, d);

    sel = 2'b01;
    #2 $display("| %d |  %d  | %d | %d | %d | %d |", in, sel, a, b, c, d);

    sel = 2'b10;
    #3 $display("| %d |  %d  | %d | %d | %d | %d |", in, sel, a, b, c, d);

    sel = 2'b11;
    #4 $display("| %d |  %d  | %d | %d | %d | %d |", in, sel, a, b, c, d);

    in = 1;
    sel = 2'b00;
    #5 $display("| %d |  %d  | %d | %d | %d | %d |", in, sel, a, b, c, d);

    sel = 2'b01;
    #6 $display("| %d |  %d  | %d | %d | %d | %d |", in, sel, a, b, c, d);

    sel = 2'b10;
    #7 $display("| %d |  %d  | %d | %d | %d | %d |", in, sel, a, b, c, d);

    sel = 2'b11;
    #8 $display("| %d |  %d  | %d | %d | %d | %d |", in, sel, a, b, c, d);

    $finish;
  end
endmodule
