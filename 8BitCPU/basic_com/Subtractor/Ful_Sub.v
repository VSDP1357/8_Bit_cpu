module Full_Sub (
    input [3:0]A,          
    input [3:0]B,         
    input Borrow_in,   
    output [3:0]Diff,       
    output Borrow_out  
);
    // Difference is the XOR of A, B, and Borrow_in
    assign Diff = A ^ B ^ Borrow_in;

    // Borrow is determined by the expression
    assign Borrow_out = (~A & B) | ( (~(A ^ B)) & Borrow_in );
endmodule