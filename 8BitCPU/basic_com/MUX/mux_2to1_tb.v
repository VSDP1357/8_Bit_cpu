`timescale 1ns / 1ps

module mux_2to1_tb;
    // Inputs
    reg a;
    reg b;
    reg sel;
    
    // Outputs
    wire y;
    
    // Instantiate the Unit Under Test (UUT)
    mux_2to1 uut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .y(y)
    );

    initial begin
        // Initialize Inputs
        a = 0; b = 1; sel = 0;
        #10;
        sel = 1;
        #10;
        a = 1; b = 0; sel = 0;
        #10;
        sel = 1;
        #10;
        
        // End simulation
        $finish;
    end
      
    initial begin
        // Monitor changes
        $monitor("At time %t, a = %b, b = %b, sel = %b, y = %b", $time, a, b, sel, y);
        
        // Dump variables for GTKWave
        $dumpfile("mux_2to1.vcd");
        $dumpvars(0, mux_2to1_tb);
    end

endmodule
