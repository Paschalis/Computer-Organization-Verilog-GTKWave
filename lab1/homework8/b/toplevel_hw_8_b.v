`include "submodule_hw_8_b_or.v"
`include "submodule_hw_8_b_not.v"
`include "submodule_hw_8_b_and.v"

module toplevel_hw_8_b(
    output wire O,
    input wire S0, S1, S2, D0, D1, D2, D3, D4, D5, D6, D7 
);
wire NOTSO,NOTS1,NOTS2,AND0,AND1,AND2,AND3,AND4,AND5,AND6,AND7;

submodule_hw_8_b_not U0 (NOTSO, S0);
submodule_hw_8_b_not U1 (NOTS1, S1);
submodule_hw_8_b_not U2 (NOTS2, S2);
submodule_hw_8_b_and U3 (AND0, NOTSO, NOTS1, NOTS2, D0);
submodule_hw_8_b_and U4 (AND1, S0, NOTS1, NOTS2, D1);
submodule_hw_8_b_and U5 (AND2, NOTSO, S1, NOTS2, D2);
submodule_hw_8_b_and U6 (AND3, S0, S1, NOTS2, D3);
submodule_hw_8_b_and U7 (AND4, NOTSO, NOTS1, S2, D4);
submodule_hw_8_b_and U8 (AND5, S0, NOTS1, S2, D5);
submodule_hw_8_b_and U9 (AND6, NOTSO, S1, S2, D6);
submodule_hw_8_b_and U10 (AND7, S0, S1, S2, D7);
submodule_hw_8_b_or U11 (O, AND0,AND1,AND2,AND3,AND4,AND5,AND6,AND7);
endmodule