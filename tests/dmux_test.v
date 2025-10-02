module dmux_test;
  reg in, sel;
  wire a, b;

  student_dmux dut (.in(in), .sel(sel), .a(a), .b(b));

  initial begin
    $display("|in |sel| a | b |");

    in = 0;
    sel = 0;
    #1 $display("| %d | %d | %d | %d |", in, sel, a, b);

    sel = 1;
    #2 $display("| %d | %d | %d | %d |", in, sel, a, b);

    in = 1;
    sel = 0;
    #3 $display("| %d | %d | %d | %d |", in, sel, a, b);

    sel = 1;
    #3 $display("| %d | %d | %d | %d |", in, sel, a, b);

    $finish;
  end
endmodule
