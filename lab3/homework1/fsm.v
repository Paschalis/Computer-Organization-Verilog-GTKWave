`timescale 1ns/1ps
module fsm (output reg out, input wire clk, reset, in);

    reg state;
    parameter B=0, A=1;

    always @(posedge clk or negedge reset)
    if(reset==1'b0)
        begin
        state=B;
        out=1;
        end
    else
        begin
        case (state)
        B:
            begin
                out=1;
                if(in==0) 
					state=A;
                else
					state=B;
            end
        A:
            begin
                out=0;
                if(in==0) 
					state=B;
                else 
					state=A;
            end
        default: state=B;
        endcase
    end
endmodule                 
