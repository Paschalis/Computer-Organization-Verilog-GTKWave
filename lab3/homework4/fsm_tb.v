`timescale 1ns/1ps
module ask4_tb;
    reg clk, reset, in;
    wire out;
    ask4 DUT( .out(out), .clk(clk), .reset(reset), .in(in));
    initial begin
        $dumpfile("ask4_tb.vcd");
        $dumpvars;
        clk=0;
        reset=0;
        in=0;
		#0.1 reset=1;
		#0.1 clk=1; in=1; 
		#0.1 clk=0;
		#0.1 clk=1; in=0; 
		#0.1 clk=0;
		#0.1 clk=1; 
		#0.1 clk=0;
		#0.1 clk=1; 
		#0.1 clk=0;
		#0.1 clk=1; in=1;
		#0.1 clk=0;
		#0.1 clk=1; in=0; 
		#0.1 clk=0;
		#0.1 clk=1; 
		#0.1 clk=0;
		#0.1 clk=1; in=1; 
		#0.1 clk=0;
		#0.1 clk=1; in=0; 
		#0.1 clk=0;
		#0.1 clk=1; in=1; 
		#0.1 clk=0;
		#0.1 clk=1; 
		#0.1 clk=0;
		end
endmodule
