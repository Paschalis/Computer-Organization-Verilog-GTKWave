`timescale 1ns / 1ps

module dff16_SyncReset (clock, CE, d, q, reset);
	input clock;
	input CE;
	input [15:0] d;
	input reset;
	output reg [15:0] q; 


always @ (posedge clock)
	begin
		
		if(!reset) 
			q <= 16'b0000000000000000; 
		else
			if ( CE == 1)
				q <= d;	
	end

endmodule
