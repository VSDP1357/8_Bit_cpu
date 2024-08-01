module mux_2to1 (
    input wire a,
    input wire b,
    input wire sel,
    output wire y
);
    // 2-to-1 MUX
    assign y = sel ? b : a;
endmodule
