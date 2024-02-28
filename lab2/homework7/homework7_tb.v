//`timescale 1ns / 1ps
`include "toplevel_hw_7.v"

module homework7_tb;
    reg in;
    reg Clock;
    wire out;   

    toplevel_hw_7 DUT(.in(in),.Clock(Clock),
        .out(out));
    integer i;
    initial begin
        $dumpfile("homework7_tb.vcd");
        $dumpvars;
        in=1;
        Clock=0;
        // forever #10 CLK = ~CLK;
        //          OR
	    for (i=0; i <=10; i=i+1)
	    #10 Clock = ~Clock; 
    end 
    initial begin 
			 in <= 0;
         #8; in <= 0;
        #10; in <= 0;
        #10; in <= 1;
        #10; in <= 1;
        #10; in <= 1;
        #10; in <= 1;
        #10;
    end 
	initial begin
	    $monitor("Clock=%d,D=%d,out=%d \n",Clock,in,out);
	end    
endmodule
