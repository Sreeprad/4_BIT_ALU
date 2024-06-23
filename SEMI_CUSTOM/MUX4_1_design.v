module MUX4_1_design (
    input D0,
    input D1,
    input D2,
    input D3,
    input S0,
    input S1,
    output Y
);
    wire Y0, Y1;

    MUX_design MUX0 (D0, D1, S0, Y0);
    MUX_design MUX1 (D2, D3, S0, Y1);
    MUX_design MUX2 (Y0, Y1, S1, Y);
endmodule