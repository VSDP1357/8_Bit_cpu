
module Full_Sub_tb;
    reg [3:0] A;
    reg [3:0] B;
reg Borrow_in;
    wire [3:0] Diff;
    wire Borrow_out;

    // Instantiate subtractor
    Full_Sub UUT (
        .A(A),
        .B(B),
.Borrow_in(Borrow_in),
        .Diff(Diff),
        .Borrow_out(Borrow_out)
    );

    initial begin
        // Test cases
        $display("Time\tA\tB\Borrow_in\tDiff\tBorrow_out");
        $monitor("%0d\t%b\t%b\t%b\t%b\t%b", $time, A, B, Borrow_in, Diff, Borrow_out);

        // Test case 1
        A = 4'b0101; B = 4'b0011; Borrow_in = 1'b0;#10; // 5 - 3 = 2
        // Test case 2
        A = 4'b1000; B = 4'b0100; Borrow_in = 1'b0; #10; // 8 - 4 = 4
        // Test case 3
        A = 4'b0110; B = 4'b0010; Borrow_in = 1'b0; #10; // 6 - 2 = 4
        // Test case 4
        A = 4'b0011; B = 4'b0110; Borrow_in = 1'b0; #10; // 3 - 6 = -3 (in binary: 1101 with borrow)

        $stop;
    end
endmodule