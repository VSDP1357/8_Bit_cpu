module half_adder (
    input A,
    input B,
    output Sum,
    output Carry
);
    assign Sum = A ^ B;    // XOR gate
    assign Carry = A & B;  // AND gate
endmodule
