`timescale 1ns / 1ns
`include "toplevel_hw_8_b.v"

module homework_b_tb;
    reg S0, S1, S2, D0, D1, D2, D3, D4, D5, D6, D7;
    wire O; 

    toplevel_hw_8_b DUT(
        .S0(S0), .S1(S1), .S2(S2), 
        .D0(D0), .D1(D1), .D2(D2), .D3(D3), 
        .D4(D4), .D5(D5), .D6(D6), .D7(D7),
        .O(O)
    );

    initial begin
        $dumpfile("homework_b_tb.vcd");
        $dumpvars;
            S0=1'b0; S1=1'b0; S2=1'b0; 
            D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; 
            D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0; 
        #10 S0=1'b0; S1=1'b0; S2=1'b0; 
            D0=1'b1; D1=1'b1; D2=1'b1; D3=1'b1; 
            D4=1'b1; D5=1'b1; D6=1'b1; D7=1'b1; 
        #10;
    end
endmodule