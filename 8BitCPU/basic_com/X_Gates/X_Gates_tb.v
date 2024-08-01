`timescale 1ns/1ps
module X_Gates_tb ();

wire a;
wire b;
wire out_xor;
wire out_xnor;

X_Gates_tb uut (           //instantiating the gates
    .a(b),
    .b(b),
    .out_xor(out_xor),
    .out_xnor(out_xnor)
);

initial 
begin 





    a = 0;              // initialize inputs
    b = 0;

    #10; a = 0; b = 1;
    #10; a = 1; b = 0;
    #10; a = 1; b = 1;
    #10;

    $finish;           // finish the simulation
    
end
initial
begin
                        // printing the outputs after the simulation
$moniter("time = %t, a = %b, b = %b, out_xor = %b, out_xnor = %b", a, b, out_xor, out_xnor);

end
initial begin
     $dumpfile("X_Gates_tb.vcd");
    $dumpvars(0, X_Gates_tb);
end

endmodule