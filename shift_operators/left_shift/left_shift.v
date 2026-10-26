module left_shift(
    input  wire [3:0] in,
    output wire [3:0] out
);
    assign out = in << 1; 
endmodule