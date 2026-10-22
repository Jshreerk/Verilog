module demux_1to2_tb;
    reg e, s0;
    wire y0, y1;

    demux_1to2 dut(
        .e(e),
        .s0(s0),
        .y0(y0),
        .y1(y1)
    );
    initial begin
    $dumpfile("demux_1to2.vcd");
    $dumpvars(0, demux_1to2_tb);
    end
    initial begin
    $monitor("e=%b, s0=%b | y0=%b, y1=%b", e, s0, y0, y1);
    e=1;s0=0;#10;
    e=1;s0=1;#10;
    $finish;
    end
endmodule