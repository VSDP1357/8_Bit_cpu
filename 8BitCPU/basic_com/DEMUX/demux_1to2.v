module demux_1to2 (
    input wire in,
    input wire sel,
    output wire y0,
    output wire y1
);
    // 1-to-2 DEMUX
    assign y0 = (sel == 0) ? in : 0;
    assign y1 = (sel == 1) ? in : 0;
endmodule
