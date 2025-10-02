module not_test;
  reg a;
  wire out;

  student_not dut (.a(a), .out(out));

  initial begin
    $display("| a |out|");

    a = 0;
    #1 $display("| %d | %d |", a, out);

    a = 1;
    #2 $display("| %d | %d |", a, out);
    $finish;
  end
endmodule
