module ALU_TB;

    // Testbench signals
    reg A0, A1, A2, A3;
    reg B0, B1, B2, B3;
    reg B_inv;
    reg SEL0, SEL1;
    wire Ov;
    wire OUT0, OUT1, OUT2, OUT3;

    // Instantiate the ALU design
    ALU_design uut (
        .A0(A0), .A1(A1), .A2(A2), .A3(A3),
        .B0(B0), .B1(B1), .B2(B2), .B3(B3),
        .B_inv(B_inv),
        .SEL0(SEL0), .SEL1(SEL1),
        .Ov(Ov),
        .OUT0(OUT0), .OUT1(OUT1), .OUT2(OUT2), .OUT3(OUT3)
    );

    // Test procedure
    initial begin
        // Display format
        $monitor("Time=%0d: A = %b%b%b%b, B = %b%b%b%b, B_inv = %b, SEL = %b%b, Ov = %b, OUT = %b%b%b%b",
                 $time, A3, A2, A1, A0, B3, B2, B1, B0, B_inv, SEL1, SEL0, Ov, OUT3, OUT2, OUT1, OUT0);
        
        // Test 1: AND operation
        A0 = 0; A1 = 1; A2 = 0; A3 = 1;
        B0 = 1; B1 = 0; B2 = 1; B3 = 0;
        B_inv = 0; SEL0 = 1; SEL1 = 0; // Select AND
        #10;

        // Test 2: OR operation
        SEL0 = 0; SEL1 = 1; // Select OR
        #10;

        // Test 3: XOR operation
        SEL0 = 1; SEL1 = 1; // Select XOR
        #10;

        // Test 4: Addition operation
        SEL0 = 0; SEL1 = 0; // Select ADD
        #10;

        // Test 5: Subtraction operation (A - B)
        B_inv = 1; SEL0 = 0; SEL1 = 0; // Select ADD with B inverted
        #10;

        // Test 6: Inversion operation
        A0 = 0; A1 = 0; A2 = 0; A3 = 0; // Set A to 0
        B0 = 1; B1 = 0; B2 = 1; B3 = 0;
        B_inv = 1; SEL0 = 0; SEL1 = 0; // Select ADD with B inverted to simulate inversion
        #10;

        $finish;
    end

endmodule
