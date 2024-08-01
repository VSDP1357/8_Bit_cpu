module add_8_bit_tb;

    // Testbench signals
    reg [7:0] A;
    reg [7:0] B;
reg cin;
    wire [7:0] Sum;
    wire CarryOut;

    // Instantiate the 8-bit adder
    add_8_bit uut (
        .A(A),
        .B(B),
.cin(cin),
        .Sum(Sum),
        .CarryOut(CarryOut)
    );

    initial begin
        // Initialize signals
        A = 8'b00000000;
        B = 8'b00000000;
cin = 1'b0;

        // Apply test vectors
        #10 A = 8'b00000001; B = 8'b00000001; cin = 1'b0;


// Test case 1
        #10 A = 8'b11111111; B = 8'b00000001;cin = 1'b0; // Test case 2
        #10 A = 8'b10101010; B = 8'b01010101;cin = 1'b0; // Test case 3
        #10 A = 8'b11110000; B = 8'b00001111;cin = 1'b0; // Test case 4

        // Add more test cases as needed

        // Finish simulation
        #10 $finish;
    end

    initial begin
        $monitor("Time = %0t : A = %b, B = %b, cin = %b Sum = %b, CarryOut = %b", 
                 $time, A, B, cin, Sum, CarryOut);
    end

endmodule
