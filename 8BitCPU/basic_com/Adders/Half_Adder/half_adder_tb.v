module tb_half_adder;
    reg A;
    reg B;
    wire Sum;
    wire Carry;
    
    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );
    
    initial begin
        // Initialize inputs
        A = 0; B = 0;
        #10;
        A = 0; B = 1;
        #10;
        A = 1; B = 0;
        #10;
        A = 1; B = 1;
        #10;
        
        $finish;
    end
    
    initial begin
        $monitor("At time %t, A = %b, B = %b, Sum = %b, Carry = %b", $time, A, B, Sum, Carry);
    end
endmodule
