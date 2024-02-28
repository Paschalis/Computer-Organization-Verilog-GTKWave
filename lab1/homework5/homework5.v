`include "full_adder.v"
module ripple_carry(
    output wire [7:0] Sum,
    output wire Cout, 
    input wire [7:0] A, B);

    wire c1, c2, c3, c4, c5, c6, c7;  

    full_adder U0(.Sum(Sum[0]), .Cout(c1), .A(A[0]), .B(B[0]), .Cin(1'b0));
    full_adder U1(.Sum(Sum[1]), .Cout(c2), .A(A[1]), .B(B[1]), .Cin(c1));
    full_adder U2(.Sum(Sum[2]), .Cout(c3), .A(A[2]), .B(B[2]), .Cin(c2));
    full_adder U3(.Sum(Sum[3]), .Cout(c4), .A(A[3]), .B(B[3]), .Cin(c3));
    full_adder U4(.Sum(Sum[4]), .Cout(c5), .A(A[4]), .B(B[4]), .Cin(c4));
    full_adder U5(.Sum(Sum[5]), .Cout(c6), .A(A[5]), .B(B[5]), .Cin(c5));
    full_adder U6(.Sum(Sum[6]), .Cout(c7), .A(A[6]), .B(B[6]), .Cin(c6));
    full_adder U7(.Sum(Sum[7]), .Cout(Cout), .A(A[7]), .B(B[7]), .Cin(c7));
endmodule
