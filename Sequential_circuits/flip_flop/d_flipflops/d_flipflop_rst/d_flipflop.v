module d_flipflop_rst(
    input clk, rst, a,
    output reg y
);

    always @(posedge clk)begin
    if (rst)
        y <= 0;
    else 
        y <= a;
    end
endmodule