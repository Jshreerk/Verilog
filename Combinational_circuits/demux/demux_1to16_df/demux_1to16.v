module demux_1to16(
    input s3, s2, s1, s0, d,
    output [15:0]y
);
    assign y= d? (16'b0000000000000001 << {s3,s2,s1,s0}) : 16'b0000000000000000;
endmodule