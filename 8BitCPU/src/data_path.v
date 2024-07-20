module data_path (
    input clk,
    input [3:0] Opcode,
    input [2:0] SrcReg1,
    input [2:0] SrcReg2,
    input [2:0] DestReg,
    input [7:0] Immediate,
    output [7:0] ALUResult
);
    wire [7:0] ReadData1, ReadData2;
    wire [2:0] ALUOp;
    wire RegWrite;

    register rf (
        .clk(clk),
        .ReadReg1(SrcReg1),
        .ReadReg2(SrcReg2),
        .WriteReg(DestReg),
        .WriteData(ALUResult),
        .RegWrite(RegWrite),
        .ReadData1(ReadData1),
        .ReadData2(ReadData2)
    );

    control cu (
        .Opcode(Opcode),
        .ALUOp(ALUOp),
        .RegWrite(RegWrite)
    );

      alu alu (
        .A(ReadData1),
        .B(ReadData2),
        .ALUOp(ALUOp),
        .Result(ALUResult), // Ensure this signal is 8 bits
        .Zero()
    );
endmodule
