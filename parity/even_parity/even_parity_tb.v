module tb_parity_generator;
    reg  [3:0] data;
    wire parity;

    parity_generator dut (
        .data(data),
        .parity(parity)
    );

    initial begin
        $monitor("time=%0t data=%b parity=%b", $time, data, parity);

        data = 4'b0000; #10; // 0 ones: even parity bit is 0
        data = 4'b0001; #10; // 1 one: even parity bit is 1
        data = 4'b0011; #10; // 2 ones: even parity bit is 0
        data = 4'b0111; #10; // 3 ones: even parity bit is 1
        data = 4'b1111; #10; // 4 ones: even parity bit is 0

        $finish;
    end
endmodule