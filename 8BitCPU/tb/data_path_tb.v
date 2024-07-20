`timescale 1ns/1ps

module data_path_tb;
    reg clk;
    reg [3:0] Opcode;
    reg [2:0] SrcReg1, SrcReg2, DestReg;
    reg [7:0] Immediate;
    wire [7:0] ALUResult;

    // Instantiate the Datapath
    data_path uut (
        .clk(clk),
        .Opcode(Opcode),
        .SrcReg1(SrcReg1),
        .SrcReg2(SrcReg2),
        .DestReg(DestReg),
        .Immediate(Immediate),
        .ALUResult(ALUResult)
    );

    initial begin
        $dumpfile("data_path_tb.vcd");
        $dumpvars(0, data_path_tb);

        // Initialize inputs
        clk = 0;
        Opcode = 4'b0000;
        SrcReg1 = 3'b000;
        SrcReg2 = 3'b001;
        DestReg = 3'b010;
        Immediate = 8'h00;

        // Wait for global reset
        #10;

        // Write initial values to the registers
        Opcode = 4'b0001; // ADD operation
        Immediate = 8'h10; // Example immediate value
        #10;

        // Perform ADD operation
        SrcReg1 = 3'b000;
        SrcReg2 = 3'b001;
        DestReg = 3'b010;
        Opcode = 4'b0001; // ADD
        #10;

        // Perform SUB operation
        SrcReg1 = 3'b010;
        SrcReg2 = 3'b001;
        DestReg = 3'b011;
        Opcode = 4'b0010; // SUB
        #10;

        // Perform AND operation
        SrcReg1 = 3'b011;
        SrcReg2 = 3'b000;
        DestReg = 3'b100;
        Opcode = 4'b0011; // AND
        #10;

        // Perform OR operation
        SrcReg1 = 3'b100;
        SrcReg2 = 3'b001;
        DestReg = 3'b101;
        Opcode = 4'b0100; // OR
        #10;

        // Finish simulation
        $finish;
    end

    // Clock generation
    always #5 clk = ~clk;

endmodule
