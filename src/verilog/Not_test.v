module Not_test;

    reg in;
    wire out;

    initial
        begin
            $dumpfile("Not_test.vcd");
            $dumpvars(0, not1);
            $monitor("in = %b, out = %b", in, out);

            #1 in = 1'b0;
            #1 in = 1'b1;
            #1 $finish;
        end

    Not not1(out, in);

endmodule