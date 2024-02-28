`timescale 1ns / 1ps
module dff8_tb;
    reg [7:0] d;
    reg clock;
    wire [7:0] q;
    
    dff8 DUT(
		.d(d),
		.clock(clock),
		.q(q));
    integer i;
    initial begin
        $dumpfile("dff8_tb.vcd");
        $dumpvars;
        clock=1'b0;
        // forever #10 CLK = ~CLK;
        //          OR
	    for (i=0; i <=10; i=i+1)
	    #10 clock = ~clock;  
    end 
    
    initial begin 
			 d <= 8'bxxxxxxxx;
         #8; d <= 8'b11110011;
        #10; d <= 8'b10000011;
        #10; 
    end 
    initial begin
	    $monitor("Clock=%d,d=%d,q=%d \n",clock,d,q);
	end  
endmodule


