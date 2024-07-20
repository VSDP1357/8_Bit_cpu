module control (
    input [3:0] Opcode,
    output reg [2:0] ALUOp,
    output reg RegWrite
);
    always @(*) begin
        case (Opcode)
            4'b0000: begin // NOP
                ALUOp = 3'b000;
                RegWrite = 0;
            end
            4'b0001: begin // ADD
                ALUOp = 3'b000;
                RegWrite = 1;
            end
            4'b0010: begin // SUB
                ALUOp = 3'b001;
                RegWrite = 1;
            end
            4'b0011: begin // AND
                ALUOp = 3'b010;
                RegWrite = 1;
            end
            4'b0100: begin // OR
                ALUOp = 3'b011;
                RegWrite = 1;
            end
            4'b0101: begin // XOR
                ALUOp = 3'b100;
                RegWrite = 1;
            end
            4'b0110: begin // NOT
                ALUOp = 3'b101;
                RegWrite = 1;
            end
            4'b0111: begin // SHL (Shift Left)
                ALUOp = 3'b110;
                RegWrite = 1;
            end
            4'b1000: begin // SHR (Shift Right)
                ALUOp = 3'b111;
                RegWrite = 1;
            end
            default: begin
                ALUOp = 3'b000;
                RegWrite = 0;
            end
        endcase
    end
endmodule
