module full_subtractor(input a, b, bin, output diff, borrow);
    wire x, y, y1, z, z1;
    assign x=b^bin;
    assign diff=a^x;
    assign z=~x;
    assign y=~b;
    assign y1=y&bin;
    assign z=~x;
    assign z1=z&a;
    assign borrow=z1|y1;
endmodule
