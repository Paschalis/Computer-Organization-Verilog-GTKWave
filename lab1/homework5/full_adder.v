`include "half_adder.v"
module full_adder(output wire Sum, Cout, input wire A, B, Cin);
    wire ha_1_sum, ha_1_cout, ha_2_cout;

    half_adder U0(.Sum(ha_1_sum), .Cout(ha_1_cout), .A(A), .B(B));
    half_adder U1(.Sum(Sum), .Cout(ha_2_cout), .A(ha_1_sum), .B(Cin));
    or U2(Cout, ha_2_cout, ha_1_cout);
endmodule    
