module n_gates (
    input wire a, b,
    output wire not_a,
    output wire not_b,
    output wire out_nand,
    output wire out_nor
);
    assign not_a = ~a;
    assign not_b = ~b;
    assign out_nand = ~(a & b);
    assign out_nor = ~(a | b);
endmodule
