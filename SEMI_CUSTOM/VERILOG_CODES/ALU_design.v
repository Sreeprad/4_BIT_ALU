module ALU_design(
    input A0,
    input A1,
    input A2,
    input A3,
    input B0,
    input B1,
    input B2,
    input B3,
    input B_inv,
    input SEL0,
    input SEL1,
    output Ov,
    output OUT0,
    output OUT1,
    output OUT2,
    output OUT3
    );
    // 2:1 MUX OUTPUTS
    wire w1, w2, w3, w4;
    // general connectives
    wire x1, x2;
    // 4:1 MUX INPUTS
    wire S0, S1, S2, S3, AND0, AND1, AND2, AND3, OR0, OR1, OR2, OR3, XOR0, XOR1, XOR2, XOR3;
    
    MUX_design m1(B0, ~B0, B_inv, w1);
    MUX_design m2(B1, ~B1, B_inv, w2);
    MUX_design m3(B2, ~B2, B_inv, w3);
    MUX_design m4(B3, ~B3, B_inv, w4);
    
    RCA_design RCA(A0, A1, A2, A3, w1, w2, w3, w4, B_inv, x1, x2, S0, S1, S2, S3);
    
    xor(Ov, x1, x2);
    
    and(AND0, A0, B0); and(AND1, A1, B1); and(AND2, A2, B2); and(AND3, A3, B3);
    
    or(OR0, A0, B0); or(OR1, A1, B1); or(OR2, A2, B2); or(OR3, A3, B3);
    
    xor(XOR0, A0, B0); xor(XOR1, A1, B1); xor(XOR2, A2, B2); xor(XOR3, A3, B3);
    
    MUX4_1_design M1(S0, AND0, OR0, XOR0, SEL0, SEL1, OUT0);
    MUX4_1_design M2(S1, AND1, OR1, XOR1, SEL0, SEL1, OUT1);
    MUX4_1_design M3(S2, AND2, OR2, XOR2, SEL0, SEL1, OUT2);
    MUX4_1_design M4(S3, AND3, OR3, XOR3, SEL0, SEL1, OUT3);
    
    
endmodule