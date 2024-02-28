`timescale 1ns/1ps

module shiftReg4_tb;
reg [3:0]din;
reg clock, reset;
wire [3:0]D00, D01, D02, D03;

shiftReg4 DUT( .din(din), .clock(clock), .reset(reset),
.D00(D00), .D01(D01), .D02(D02), .D03(D03));

initial begin
    $dumpfile("shiftReg4_tb.vcd");
    $dumpvars;
            
             reset=1'b1;
             clock=1'b0;
             din=4'b1011;
    #0.1     clock=1'b1;
    #0.1     clock=1'b0;
    #0.1     clock=1'b1;
             reset=1'b0;
    #0.1     clock=1'b0;
    #0.1     clock=1'b1;
             reset=1'b1;
    #0.1     clock=1'b0;
    #0.1     clock=1'b1;
    #1  
    end
endmodule
