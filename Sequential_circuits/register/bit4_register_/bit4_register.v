module register4 (
    input clk,rst,
    input [3:0]data_in,
    output reg [3:0]data_out
);
    always @(posedge clk)begin
        if (rst)
            data_out <= 4'b0000;
        else
            data_out <= data_in;
    end
endmodule