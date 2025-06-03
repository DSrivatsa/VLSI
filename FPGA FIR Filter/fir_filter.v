module fir_filter(
    input  wire        clk,       // 100 MHz clock
    input  wire        reset,     // synchronous reset
    input  wire [3:0]  sample_in, // 4-bit unsigned input
    output reg  signed [3:0] out  // 4-bit signed output (Q1.3 assumed)
);
    // Fixed-point coefficients (signed 16-bit Q1.15)
    localparam signed [15:0] h0 = 16'h2000;  // 0.25
    localparam signed [15:0] h1 = 16'h0000;  // 0.0
    localparam signed [15:0] h2 = 16'h0000;  // 0.0
    localparam signed [15:0] h3 = 16'h0000;  // 0.0
    localparam signed [15:0] h4 = 16'h2000;  // 0.25

    // Shift registers to hold past 5 samples
    reg [3:0] x0, x1, x2, x3, x4;
    // Extend inputs to 16 bits signed for multiplication
    wire signed [15:0] sx0 = {12'b0, x0};
    wire signed [15:0] sx1 = {12'b0, x1};
    wire signed [15:0] sx2 = {12'b0, x2};
    wire signed [15:0] sx3 = {12'b0, x3};
    wire signed [15:0] sx4 = {12'b0, x4};

    // Multiply each sample by its coefficient (Q1.15 * Q1.15 = Q2.30)
    wire signed [31:0] mul0 = h0 * sx0;
    wire signed [31:0] mul1 = h1 * sx1;
    wire signed [31:0] mul2 = h2 * sx2;
    wire signed [31:0] mul3 = h3 * sx3;
    wire signed [31:0] mul4 = h4 * sx4;

    // Accumulate products
    wire signed [31:0] acc = mul0 + mul1 + mul2 + mul3 + mul4;

    always @(posedge clk) begin
        if (reset) begin
            x0 <= 0; x1 <= 0; x2 <= 0; x3 <= 0; x4 <= 0;
            out <= 0;
        end else begin
            // Shift the samples
            x4 <= x3;
            x3 <= x2;
            x2 <= x1;
            x1 <= x0;
            x0 <= sample_in;

            // Scale/truncate the accumulator to 4-bit output
            // acc is Q2.30 fixed point, to get back roughly to Q1.3 (4-bit signed),
            // take bits [18:15] (choose range carefully depending on scale)
            // You may adjust the bits chosen depending on expected dynamic range.

            out <= acc[18:15];
        end
    end
endmodule
