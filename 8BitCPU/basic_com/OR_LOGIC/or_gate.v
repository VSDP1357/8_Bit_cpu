
module or_gate (
    input wire a,  
    input wire b,   
    output wire out   
);
    // AND operation
    assign out = a | b;
endmodule
