`timescale 1ns/1ps

module srff_tb;

  // Inputs
  reg clk;
  reg s;
  reg r;

  // Output
  wire q;

  // Instantiate the SR flip-flop
  srff uut (
    .clk(clk),
    .s(s),
    .r(r),
    .q(q)
  );

  // Generate clock: 10ns period (100 MHz)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    // Monitor output
    $monitor("Time = %0t | clk = %b | s = %b | r = %b | q = %b", $time, clk, s, r, q);

    // Initial values
    s = 0; r = 0;

    // Apply input combinations at positive clock edges
    #10 s = 0; r = 0;  // Hold
    #10 s = 1; r = 0;  // Set
    #10 s = 0; r = 1;  // Reset
    #10 s = 1; r = 1;  // Invalid
    #10 s = 0; r = 0;  // Hold
    #10 s = 1; r = 0;  // Set
    #10 s = 0; r = 1;  // Reset
    #10 s = 1; r = 1;  // Invalid

    #10 $finish;
  end

endmodule
