`timescale 1ns/1ps
module ask3 (output reg out, input wire clk, reset, in);
    reg [1:0]state;
    parameter A=2'b00, B=2'b01, C=2'b10, D=2'b11;
    always @(posedge clk or negedge reset)
        if(reset==1'b0)
            begin
            state=A;
            out=0;
            end
        else
            begin
            case (state)
            A:
                begin
                    out=0;
                    if(in==1) state=B;
                    else state=A;
                end
            B:
                begin
                    out=0;
                    if(in==0) state=C;
                    else state=B;
                end
            C:
                begin
                    out=1;
                    if(in==1) state=D;
                    else state=A;
                end
            D:
                begin
                    out=1;
                    if(in==0) state=C;
                    else state=B;
                end
            default: state=A;
            endcase
        end
endmodule
