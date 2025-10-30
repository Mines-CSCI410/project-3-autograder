module pc_test;
  reg in,reset,load,inc;
  wire out;

  student_pc dut (.in(in), .reset(reset), .load(load), .inc(inc), .out(out));

  initial begin
    $display("|time |   in   |reset|load | inc |  out   |")

    in = 0;
    reset = 0;
    load = 0;
    inc = 0;
    #1 $display("| 0+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 0;
    reset = 0;
    load = 0;
    inc = 0;
    #2 $display("| 1    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 0;
    reset = 0;
    load = 0;
    inc = 1;
    #3 $display("| 1+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 0;
    reset = 0;
    load = 0;
    inc = 1;
    #4 $display("| 2    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b-32123;
    reset = 0;
    load = 0;
    inc = 1;
    #5 $display("| 2+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b-32123;
    reset = 0;
    load = 0;
    inc = 1;
    #6 $display("| 3    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b-32123;
    reset = 0;
    load = 1;
    inc = 1;
    #7 $display("| 3+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b-32123;
    reset = 0;
    load = 1;
    inc = 1;
    #8 $display("| 4    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b-32123;
    reset = 0;
    load = 0;
    inc = 1;
    #9 $display("| 4+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b-32123;
    reset = 0;
    load = 0;
    inc = 1;
    #10 $display("| 5    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b-32123;
    reset = 0;
    load = 0;
    inc = 1;
    #11 $display("| 5+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b-32123;
    reset = 0;
    load = 0;
    inc = 1;
    #12 $display("| 6    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 0;
    load = 1;
    inc = 0;
    #13 $display("| 6+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 0;
    load = 1;
    inc = 0;
    #14 $display("| 7    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 1;
    load = 1;
    inc = 0;
    #15 $display("| 7+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 1;
    load = 1;
    inc = 0;
    #16 $display("| 8    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 0;
    load = 1;
    inc = 1;
    #17 $display("| 8+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 0;
    load = 1;
    inc = 1;
    #18 $display("| 9    | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 1;
    load = 1;
    inc = 1;
    #19 $display("| 9+   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 1;
    load = 1;
    inc = 1;
    #20 $display("| 10   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 0;
    load = 0;
    inc = 1;
    #21 $display("| 10+  | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 0;
    load = 0;
    inc = 1;
    #22 $display("| 11   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 1;
    load = 0;
    inc = 1;
    #23 $display("| 11+  | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b12345;
    reset = 1;
    load = 0;
    inc = 1;
    #24 $display("| 12   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 0;
    reset = 0;
    load = 1;
    inc = 1;
    #25 $display("| 12+  | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 0;
    reset = 0;
    load = 1;
    inc = 1;
    #26 $display("| 13   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 0;
    reset = 0;
    load = 0;
    inc = 1;
    #27 $display("| 13+  | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 0;
    reset = 0;
    load = 0;
    inc = 1;
    #28 $display("| 14   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b22222;
    reset = 1;
    load = 0;
    inc = 0;
    #29 $display("| 14+  | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

    in = 'b22222;
    reset = 1;
    load = 0;
    inc = 0;
    #30 $display("| 15   | %6d | %3d | %3d | %3d | %6d |", in, reset, load, inc, out)

  end
endmodule
