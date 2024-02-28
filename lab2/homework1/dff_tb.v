//testbench for DFF
`timescale 1ns / 1ps
module dff_tb;
    reg CLK;
    reg D;
    wire Q;
    dff DUT(
        .CLK(CLK),
        .D(D),
		.Q(Q));
    integer i;
    initial begin
        $dumpfile("dff_tb.vcd");
        $dumpvars;        
        D=0;
        CLK=0;
        // forever #10 CLK = ~CLK;
        //          OR
	    for (i=0; i <=10; i=i+1)
	    #10 CLK = ~CLK; 
    end 
    initial begin 
			 D <= 0;
         #8; D <= 1;
        #10; D <= 0;
        #10; D <= 0;
        #10; D <= 1;
        #10; D <= 0;
        #10; D <= 1;
        #10;
    end 
	initial begin
	    $monitor("Clock=%d,D=%d,Q=%d \n",CLK,D,Q);
	end    
endmodule


