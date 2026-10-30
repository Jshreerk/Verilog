module t_flipflop(
    input rst, clk, a,
    output reg y
);
    always @(posedge clk)
    if (rst)
        y <= 0;
    else
        y <= ~y;
endmodule