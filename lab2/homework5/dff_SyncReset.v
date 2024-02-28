`timescale 1ns / 1ps
// D Flip FLop with Synchronous Reset 

module dff_SyncReset (Clock, D, Q, Reset);
	input Clock;
	input D;
	input Reset;
	output reg Q; 

always @ (posedge Clock)
	begin
		// Q <= (!Reset)? 0 : D;
		if(!Reset) 
			Q <= 0; // Q <= 1'b0;
                    // Qn <= 1'b1; στο σχήμα της 
                    // άσκησης δεν έχει ανάστροφη έξοδο
		else
			Q <= D;	
					// Qn <= -D; στο σχήμα της 
                    // άσκησης δεν έχει ανάστροφη έξοδο
	end

endmodule
