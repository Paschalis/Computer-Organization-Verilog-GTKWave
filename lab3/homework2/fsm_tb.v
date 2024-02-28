`timescale 1ns/1ps

module fsm_tb;

    reg clk, reset, j, k;
    wire out;

    fsm DUT( .out(out), .clk(clk), .reset(reset), .j(j), .k(k));

    initial begin
    $dumpfile("fsm_tb.vcd");
    $dumpvars;

    clk=0;
    reset=0;
    j=0;
    k=0;

    #0.1 reset=1;
    #0.1 clk=1; j=0;
    #0.1 clk=0;
    #0.1 clk=1; j=1;
    #0.1 clk=0;
    #0.1 clk=1; k=0;
    #0.1 clk=0;
    #0.1 clk=1; k=1;
    #0.1 clk=0;

    end
endmodule  