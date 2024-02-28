`timescale 1ns/1ps
module fsm (output reg out, input wire clk, reset, j, k);
    reg state;
    parameter OFF=0, ON=1;
    always @(posedge clk or negedge reset)
        if(reset==1'b0)
            begin
            state=OFF;
            out=0;
            end
        else
            begin
                case (state)
                OFF:
                    begin
                    out=0;
                    if(j==1) 
                        state=ON;
                    else 
                        state=OFF;
                    end
                ON:
                    begin
                    out=1;
                    if(k==0) 
                        state=ON;
                    else 
                        state=OFF;
                    end
                default: state=OFF;
                endcase
            end
endmodule