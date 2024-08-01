`timescale 1ns / 1ps

module demux_1to2_tb;
    // Inputs
    reg in;
    reg sel;
    
    // Outputs
    wire y0;
    wire y1;
    
    // Instantiate the Unit Under Test (UUT)
    demux_1to2 uut (
        .in(in), 
        .sel(sel), 
        .y0(y0), 
        .y1(y1)
    );

    initial begin
        // Initialize Inputs
        in = 1; sel = 0;
        #10;
        sel = 1;
        #10;
        in = 0; sel = 0;
        #10;
        sel = 1;
        #10;
        
        // End simulation
        $finish;
    end
      
    initial begin
        // Monitor changes
        $monitor("At time %t, in = %b, sel = %b, y0 = %b, y1 = %b", $time, in, sel, y0, y1);
        
        // Dump variables for GTKWave
        $dumpfile("demux_1to2.vcd");
        $dumpvars(0, demux_1to2_tb);
    end

endmodule
