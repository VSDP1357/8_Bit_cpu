module or_gate_tb;
    reg a, b;
    wire out;

    // Instantiate the OR gate
    or_gate_tb uut (
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin


        // Apply test vectors
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // End simulation
        #40 $finish;
    end
    initial begin
                // Initialize GTKWave dump file
        $dumpfile("or_gate_tb.vcd");
        $dumpvars(0, or_gate_tb);
    end
endmodule
