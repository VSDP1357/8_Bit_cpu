module n_gates_tb;
    reg a, b;
    wire out_or, out_nand, out_nor;

    // Instantiate the gates module
    n_gates uut (
        .a(a),
        .b(b),
        .not_a(not_a),
        .not_b(not_b),
        .out_nand(out_nand),
        .out_nor(out_nor)
    );

    initial begin
        // Initialize GTKWave dump file
        $dumpfile("n_gates.vcd");
        $dumpvars(0, n_gates_tb);

        // Apply test vectors
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // End simulation
       #80 $finish;
    end
endmodule
