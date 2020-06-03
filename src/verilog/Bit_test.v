`include "memory.v"

module Bit_test;

    reg clk, load, in;
    wire out;

    Bit g0(out, clk, load, in);

    initial begin
        $dumpfile("Bit_test.vcd");
        $dumpvars(0, g0);
        $monitor("%4dns clk = %b, load = %b, in = %b, out = %b", $stime, clk, load, in, out);

        clk = 0;
        load = 0;
        in = 0;
    end

    always #5 begin
        clk = ~clk;
    end

    always #10 begin
        load = load + 1;
    end

    always #20 begin
        in = in + 1;
    end

    initial #100 $finish;

endmodule
