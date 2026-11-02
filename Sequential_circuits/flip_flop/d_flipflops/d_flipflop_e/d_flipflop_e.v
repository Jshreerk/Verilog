module d_flipflop_e(
    input clk,rst,e,d,
    output reg  q
);
    always @(posedge clk) begin
        if (rst)
            q <= 1'b0;
        else if (e)
            q <= d;
    end
endmodule