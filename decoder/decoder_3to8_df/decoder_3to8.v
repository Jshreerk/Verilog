module decoder_3to8(input s0, s1, s2, i0, i1, i2, i3, i4, i5, i6, i7, output y);
    assign y=(s0==0 && s1==0 && s2==0)?i0:
    (s0==0 && s1==0 && s2==1)?i1:
    (s0==0 && s1==1 && s2==0)?i2:
    (s0==0 && s1==1 && s2==1)?i3:
    (s0==1 && s1==0 && s2==0)?i4:
    (s0==1 && s1==0 && s2==1)?i5:
    (s0==1 && s1==1 && s2==0)?i6:i7;
endmodule