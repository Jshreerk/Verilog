module encoder_4to2(
    input[3:0]d,
    output[1:0]y
);
assign y=(d==4'b1000)?2'b00:
        (d==4'b0100)?2'b01:
        (d==4'b0010)?2'b10:
        (d==4'b0001)?2'b11:2'b00;
endmodule
