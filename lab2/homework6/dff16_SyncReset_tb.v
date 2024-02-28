`timescale 1ns / 1ps
module dff16_SyncReset_tb;
    reg [15:0] d;
    reg clock;
    reg reset;
    reg CE;
    wire [15:0] q;
    
    dff16_SyncReset DUT(.d(d),.clock(clock),.reset(reset),.CE(CE),
		.q(q));
    integer i;
    initial begin
        $dumpfile("dff16_SyncReset_tb.vcd");
        $dumpvars;
        clock=1'b0;
        reset=0;
        // forever #10 CLK = ~CLK;
        //          OR
	    for (i=0; i <=10; i=i+1)
	    #10 clock = ~clock;  
    end 
    
    initial begin 
             reset=0;
			 CE=1'b0;
             d <= 16'bxxxxxxxxxxxxxxxx;
         #8; d <= 16'b1110111110010011;
        #10; reset=1;
             CE=1'b1;
             d <= 16'b1000001000000001;
        #10; 
    end 
    initial begin
	    $monitor("Clock=%d,d=%d,q=%d \n",clock,d,q);
	end  
endmodule