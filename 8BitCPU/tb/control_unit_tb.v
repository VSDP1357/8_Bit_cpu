`timescale 1ns / 1ps

module control_tb;

    reg [3:0] Opcode;
    wire [2:0] ALUOp;
    wire RegWrite;

    // Instantiate the ControlUnit module
    control uut (
        .Opcode(Opcode),
        .ALUOp(ALUOp),
        .RegWrite(RegWrite)
    );

    // Test procedure
    initial begin
   

        // Test each possible opcode individually
        Opcode = 4'b0000; #10; // NOP
        Opcode = 4'b0001; #10; // ADD
        Opcode = 4'b0010; #10; // SUB
        Opcode = 4'b0011; #10; // AND
        Opcode = 4'b0100; #10; // OR
        Opcode = 4'b0101; #10; // XOR
        Opcode = 4'b0110; #10; // NOT
        Opcode = 4'b0111; #10; // SHL
        Opcode = 4'b1000; #10; // SHR
        Opcode = 4'b1001; #10; // Undefined
        Opcode = 4'b1010; #10; // Undefined
        Opcode = 4'b1011; #10; // Undefined
        Opcode = 4'b1100; #10; // Undefined
        Opcode = 4'b1101; #10; // Undefined
        Opcode = 4'b1110; #10; // Undefined
        Opcode = 4'b1111; #10; // Undefined

        // End of simulation
        $finish;
    end

endmodule
