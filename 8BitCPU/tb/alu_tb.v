module alu_tb;

    // Testbench signals
    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] ALUOp;
    wire [7:0] Result;
    wire Zero;

    // Instantiate the ALU
    alu uut (
        .A(A),
        .B(B),
        .ALUOp(ALUOp),
        .Result(Result),
        .Zero(Zero)
    );

    // VCD file generation
    initial begin
        $dumpfile("data_path_tb.vcd");
        $dumpvars(0, data_path_tb);


        // Test ADD
        A = 8'b00001010; // 10
        B = 8'b00000101; // 5
        ALUOp = 3'b000;
        #10; // Wait for 10 time units
        $display("ADD: A = %b, B = %b, Result = %b, Zero = %b", A, B, Result, Zero);

        // Test SUB
        ALUOp = 3'b001;
        #10;
        $display("SUB: A = %b, B = %b, Result = %b, Zero = %b", A, B, Result, Zero);
        

        // Test AND
        ALUOp = 3'b010;
        #10;
        $display("AND: A = %b, B = %b, Result = %b, Zero = %b", A, B, Result, Zero);

        // Test OR
        ALUOp = 3'b011;
        #10;
        $display("OR: A = %b, B = %b, Result = %b, Zero = %b", A, B, Result, Zero);

        // Test XOR
        ALUOp = 3'b100;
        #10;
        $display("XOR: A = %b, B = %b, Result = %b, Zero = %b", A, B, Result, Zero);

        // Test NOT A
        ALUOp = 3'b101;
        #10;
        $display("NOT A: A = %b, Result = %b, Zero = %b", A, Result, Zero);

        // Test SHL
        ALUOp = 3'b110;
        #10;
        $display("SHL: A = %b, Result = %b, Zero = %b", A, Result, Zero);

        // Test SHR
        ALUOp = 3'b111;
        #10;
        $display("SHR: A = %b, Result = %b, Zero = %b", A, Result, Zero);
        

        // End of simulation
        $finish;
    end

endmodule
