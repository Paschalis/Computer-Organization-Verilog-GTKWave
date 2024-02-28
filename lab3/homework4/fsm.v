`timescale 1ns/1ps
module ask4 (output reg out, input wire clk, reset, in);

    reg [2:0]state;
    parameter A=3'b000, B=3'b001, C=3'b010, D=3'b011, E=3'b100;

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
                            if(in==0) state=C;
                            else state=E;
                        end
                    B:
                        begin
                            out=0;
                            if(in==0) state=D;
                            else state=C;
                        end
                    C:
                        begin
                            out=1;
                            if(in==0) state=E;
                            else state=B;
                        end
                    D:
                        begin
                            out=1;
                            if(in==0) state=B;
                            else state=A;
                        end  
                    E:
                        begin
                            out=1;
                            if(in==0) state=A;
                            else state=D;
                        end 
                    default: state=A;
                endcase
            end
endmodule
