`timescale 1ns / 1ps
// D Flip Flop with Asyncronous Reset
 
module dff_AsyncReset
   (
    input wire Clock,
    input wire D,
	input Reset, 
    output reg Q
   );
 
   always @(negedge Reset or  posedge Clock  )
      begin
        if (!Reset)
            Q = 0;  // Q <= 1'b0;
                    // Qn <= 1'b1; στο σχήμα της 
                    // άσκησης δεν έχει ανάστροφη έξοδο
        else 
            Q = D;
                    // Qn <= -D; στο σχήμα της 
                    // άσκησης δεν έχει ανάστροφη έξοδο
	  end
endmodule