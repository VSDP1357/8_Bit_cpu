module alu (
    input [7:0] A,
    input [7:0] B,
    input [2:0] ALUOp,
    output reg [7:0] Result,
    output Zero
);

    always @(*) begin
        case (ALUOp)
            3'b000: Result = A + B;      // ADD
            3'b001: Result = A - B;      // SUB
            3'b010: Result = A & B;      // AND
            3'b011: Result = A | B;      // OR
            3'b100: Result = A ^ B;      // XOR
            3'b101: Result = ~A;         // NOT A (Unary operation)
            3'b110: Result = A << 1;     // SHL (Shift Left)
            3'b111: Result = A >> 1;     // SHR (Shift Right)
            default: Result = 8'b00000000;
        endcase
    end

    assign Zero = (Result == 8'b00000000);

endmodule
