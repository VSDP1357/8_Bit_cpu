module register (
    input clk,
    input [2:0] ReadReg1,
    input [2:0] ReadReg2,
    input [2:0] ReadReg3,

    input [2:0] WriteReg,
    input [7:0] WriteData,
    input RegWrite,
    output [7:0] ReadData1,
    output [7:0] ReadData2

);
    reg [7:0] registers [7:0];

    always @(posedge clk) begin
        if (RegWrite)
            registers[WriteReg] <= WriteData;
    end

    assign ReadData1 = registers[ReadReg1];
    assign ReadData2 = registers[ReadReg2];

endmodule
