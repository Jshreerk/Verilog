module demux_1to16_tb;
    reg s3, s2, s1, s0, d;
    wire [15:0]y;

    demux_1to16 dut(
        .s3(s3),
        .s2(s2),
        .s1(s1),
        .s0(s0),
        .d(d),
        .y(y)
    );

    initial begin
        $dumpfile("demux_1to16.vcd");
        $dumpvars(0, demux_1to16_tb);
    end 
    initial begin
        $monitor("s3=%b, s2=%b, s1=%b, s0=%b, d=%b | y=%b", s3, s2, s1, s0, d, y);
        d=1;
        s3=0;s2=0;s1=0;s0=0;#10;
        s3=0;s2=0;s1=0;s0=1;#10;
        s3=0;s2=0;s1=1;s0=0;#10;
        s3=0;s2=0;s1=1;s0=1;#10;
        s3=0;s2=1;s1=0;s0=0;#10;
        s3=0;s2=1;s1=0;s0=1;#10;
        s3=0;s2=1;s1=1;s0=0;#10;
        s3=0;s2=1;s1=1;s0=1;#10;
        s3=1;s2=0;s1=0;s0=0;#10;
        s3=1;s2=0;s1=0;s0=1;#10;
        s3=1;s2=0;s1=1;s0=0;#10;
        s3=1;s2=0;s1=1;s0=1;#10;
        s3=1;s2=1;s1=0;s0=0;#10;
        s3=1;s2=1;s1=0;s0=1;#10;
        s3=1;s2=1;s1=1;s0=0;#10;
        s3=1;s2=1;s1=1;s0=1;#10;
        $finish;
    end
endmodule