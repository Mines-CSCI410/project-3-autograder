module full_adder_test;
  reg a, b, c;
  wire sum, carry;

  student_full_adder dut (.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

  initial begin
    $display("| a | b | c |sum|carry|");

    a = 0;
    b = 0;
    c = 0;
    #1 $display("| %d | %d | %d | %d |  %d  |", a, b, c, sum, carry);

    c = 1;
    #2 $display("| %d | %d | %d | %d |  %d  |", a, b, c, sum, carry);

    b = 1;
    c = 0;
    #3 $display("| %d | %d | %d | %d |  %d  |", a, b, c, sum, carry);

    c = 1;
    #4 $display("| %d | %d | %d | %d |  %d  |", a, b, c, sum, carry);

    a = 1;
    b = 0;
    c = 0;
    #5 $display("| %d | %d | %d | %d |  %d  |", a, b, c, sum, carry);

    c = 1;
    #6 $display("| %d | %d | %d | %d |  %d  |", a, b, c, sum, carry);

    b = 1;
    c = 0;
    #7 $display("| %d | %d | %d | %d |  %d  |", a, b, c, sum, carry);

    c = 1;
    #8 $display("| %d | %d | %d | %d |  %d  |", a, b, c, sum, carry);

    $finish;
  end
endmodule
