module MUX_design(
    input D0,
    input D1,
    input S,
    output Y
    );
    wire w1, w2, w3;
    not U1(w1, S);
    and U2(w2, D0, w1);
    and U3(w3, D1, S);
    or U4(Y, w2, w3);
endmodule