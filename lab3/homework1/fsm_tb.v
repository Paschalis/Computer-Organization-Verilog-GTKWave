`timescale 1ns/1ps

module fsm_tb;

    reg clk, reset, in;
    wire out;

    fsm DUT( .out(out), .clk(clk), .reset(reset), .in(in));

    initial begin
    $dumpfile("fsm_tb.vcd");
    $dumpvars;

    clk=0;
    reset=0;
    in=0;

    #0.1 reset=1;
    #0.1 clk=1; in=1;
    #0.1 clk=0;
    #0.1 clk=1; in=0;
    #0.1 clk=0;
    #0.1 clk=1; in=1;
    #0.1 clk=0;
    #0.1 clk=1; in=0;
    #0.1 clk=0;
    #0.1

    end
endmodule         