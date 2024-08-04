 
module register_8B (
    input wire [7:0] D,    
    input wire clk,       
    input wire reset,      
    output reg [7:0] Q    
);

    // On the rising edge of the clock or reset signal
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 8'b0;   
        else
            Q <= D;     
    end

endmodule
