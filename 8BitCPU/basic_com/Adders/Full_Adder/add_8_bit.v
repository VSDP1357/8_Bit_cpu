module add_8_bit(
    input [7:0] A,
    input [7:0] B,
input cin,
    output [7:0] Sum,
    output CarryOut
);
    assign {CarryOut, Sum} = A + B + cin;
endmodule