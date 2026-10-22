module decoder_2to4(input s0, s1, output y0,y1,y2,y3);
    wire w0, w1;
    and gate_1(y0, w0, w1);
    and gate_2(y1, s0, w1);
    and gate_3(y2, s0, w0);
    and gate_4(y3, s0, s1);
endmodule