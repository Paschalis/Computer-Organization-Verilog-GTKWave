`timescale 1ns / 1ps
module dff_SyncReset_tb;
    reg Clock, Reset, D;
    wire Q;
    
    dff_SyncReset DUT(.Clock(Clock),.D(D),.Reset(Reset),
		.Q(Q));
    initial begin
        $dumpfile("dff_SyncReset_tb.vcd");
        $dumpvars;
                Clock=0;
                Reset = 0;
                D = 1'bx;
        #1;     Clock=1;     
                D = 1;
                Reset = 1;
        #1;     Clock=0;
        #1;     Clock=1;
                D = 0;
        #1;     Clock=0;
                Reset=0;
        #1;     Clock=1;
                Reset = 1;
        #1;     Clock=0;
        #1;     Clock=1;     
                D = 1;
        #1;     Clock=0;
        #1;     Clock=1;     
        #1;        
    end 
    initial begin
	    $monitor("Clock=%d,D=%d,Q=%d \n",Clock,D,Q);
	end  
endmodule


