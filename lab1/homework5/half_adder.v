module half_adder(output wire Sum, Cout, input wire A,B);
xor U0 (Sum, A, B);
and U1 (Cout, A, B);
endmodule