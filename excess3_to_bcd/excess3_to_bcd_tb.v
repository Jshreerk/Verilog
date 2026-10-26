module excess3_to_bcd_tb;

    reg [3:0] E;
    wire [3:0] BCD;

    excess3_to_bcd uut(E, BCD);

    initial begin
        $dumpfile("excess3_to_bcd.vcd");
        $dumpvars(0, excess3_to_bcd_tb);
    end

    initial begin
        E = 4'b0011;
        #10 E = 4'b0100;
        #10 E = 4'b0101;
        #10 E = 4'b0110;
        #10 E = 4'b1100;
        $finish;
    end

endmodule