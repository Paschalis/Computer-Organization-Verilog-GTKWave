`timescale 1ns / 1ps

module demultiplexer_tb;
// Inputs
reg in;
reg s0,s1,s2;

// Outputs
wire d0,d1,d2,d3,d4,d5,d6, d7;

// Instantiate the Unit Under Test (UUT)
demultiplexer DUT(
    .in(in),
    .s0(s0),.s1(s1),.s2(s2),
    .d0(d0),.d1(d1),.d2(d2),.d3(d3),
    .d4(d4),.d5(d5),.d6(d6),.d7(d7)
);
initial begin
    $dumpfile("demultiplexer_tb.vcd");
    $dumpvars;    
    // Initialize Inputs
          in = 0;
          s0 = 0;
          s1 = 0;
          s2 = 0;
    // Wait 100 ns for global reset to finish
    #100; in = 1;
          s0 = 0;
          s1 = 1;
          s2 = 0;
    // Wait 100 ns for global reset to finish
    #100;
    // Add stimulus here
    end
endmodule
