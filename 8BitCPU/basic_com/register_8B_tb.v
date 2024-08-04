 
module register_8B_tb;

    
    reg [7:0] D;
    reg clk;
    reg reset;
    wire [7:0] Q;

    // Instantiate  
    register_8B uut (
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  
    end

    // Test sequence
    initial begin
        
        clk = 0;
        reset = 0;
        D = 8'b00000000;

        //   reset
        reset = 1;
        #10;  
        reset = 0;
 
        D = 8'b10101010; #10; 
        D = 8'b11110000; #10; 
        D = 8'b00001111; #10;  
        D = 8'b01010101; #10;  

        // Apply reset again
        reset = 1;
        #10;  
        reset = 0;

        // Finish simulation
        #10;
        $finish;
    end

     
    initial begin
        $monitor("Time: %0t, D: %b, clk: %b, reset: %b, Q: %b", $time, D, clk, reset, Q);
    end

endmodule
