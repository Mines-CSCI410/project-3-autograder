module mux_test;
  reg a, b, sel;
  wire out;

  student_mux dut (.a(a), .b(b), .sel(sel), .out(out));

  initial begin
    $display("| a | b |sel|out|");

    a = 0;
    b = 0;
    sel = 0;
    #1 $display("| %d | %d | %d | %d |", a, b, sel, out);

    sel = 1;
    #2 $display("| %d | %d | %d | %d |", a, b, sel, out);

    a = 0;
    b = 1;
    sel = 0;
    #3 $display("| %d | %d | %d | %d |", a, b, sel, out);

    sel = 1;
    #4 $display("| %d | %d | %d | %d |", a, b, sel, out);

    a = 1;
    b = 0;
    sel = 0;
    #5 $display("| %d | %d | %d | %d |", a, b, sel, out);

    sel = 1;
    #6 $display("| %d | %d | %d | %d |", a, b, sel, out);

    a = 1;
    b = 1;
    sel = 0;
    #7 $display("| %d | %d | %d | %d |", a, b, sel, out);

    sel = 1;
    #8 $display("| %d | %d | %d | %d |", a, b, sel, out);
    $finish;
  end
endmodule
