module decoder_2to4_tb;
    reg s0, s1;
    wire y0, y1, y2, y3;

    decoder_2to4 dut(
        .s0(s0),
        .s1(s1),
        .y0(y0),
        .y1(y1)
    );
    initial begin
    $dumpfile("decoder_2to4.vcd");
    $dumpvars(0, decoder_2to4_tb);
    end
    initial begin
    $monitor("s0=%b, s1=%b | y0=%b, y1=%b, y2=%b, y3=%b", s0,s1,y0,y1,y2,y3);
    s0=0;s1=0;#10;
    s0=0;s1=1;#10;
    s0=1;s1=0;#10;
    s0=1;s1=1;#10;
    $finish;
    end
endmodule