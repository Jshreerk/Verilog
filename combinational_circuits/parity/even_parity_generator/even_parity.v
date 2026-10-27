module even_parity (
    input [3:0] data,
    output [4:0] parity
);
    assign parity = ^data;
endmodule