`timescale 1ns / 1ps

module register_file_tb;

    reg clk;
    reg [2:0] ReadReg1;
    reg [2:0] ReadReg2;
    reg [2:0] WriteReg;
    reg [7:0] WriteData;
    reg RegWrite;
    wire [7:0] ReadData1;
    wire [7:0] ReadData2;

    // Instantiate the register module
    register_file_tb uut (
        .clk(clk),
        .ReadReg1(ReadReg1),
        .ReadReg2(ReadReg2),
        .WriteReg(WriteReg),
        .WriteData(WriteData),
        .RegWrite(RegWrite),
        .ReadData1(ReadData1),
        .ReadData2(ReadData2)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period clock
    end

    // Test procedure
    initial begin
        // Initialize inputs
        ReadReg1 = 3'b000;
        ReadReg2 = 3'b001;
        WriteReg = 3'b000;
        WriteData = 8'b00000000;
        RegWrite = 0;

        // Generate VCD file
     

        // Write 8'hAA to register 0
        #10;
        WriteReg = 3'b000;
        WriteData = 8'hAA;
        RegWrite = 1;
        #10;
        RegWrite = 0;

        // Write 8'hBB to register 1
        #10;
        WriteReg = 3'b001;
        WriteData = 8'hBB;
        RegWrite = 1;
        #10;
        RegWrite = 0;

        // Read from register 0 and 1
        #10;
        ReadReg1 = 3'b000;
        ReadReg2 = 3'b001;

        // Write 8'hCC to register 2
        #10;
        WriteReg = 3'b010;
        WriteData = 8'hCC;
        RegWrite = 1;
        #10;
        RegWrite = 0;

        // Read from register 0 and 2
        #10;
        ReadReg1 = 3'b000;
        ReadReg2 = 3'b010;

        // End of simulation
        #10;
        $finish;
    end

endmodule
