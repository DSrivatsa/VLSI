module tb_fir_filter_4bit;
    reg clk;
    reg reset;
    reg [3:0] sample_in;
    wire signed [3:0] out;

    // Instantiate the DUT (4-bit output version)
    fir_filter dut (
        .clk(clk),
        .reset(reset),
        .sample_in(sample_in),
        .out(out)
    );

    // Clock generation: 100 MHz = 10 ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Test stimulus
    initial begin
        reset = 1;
        sample_in = 0;

        // Hold reset for some cycles
        #(20);
        reset = 0;

        // Apply some test samples (random 4-bit unsigned inputs)
        repeat (20) begin
            sample_in = $random % 16; // random 4-bit number
            #(10); // wait one clock cycle
        end

        // Finish simulation
        #(100);
        $stop;
    end

    // Monitor output changes
    initial begin
        $display("Time\tclk reset sample_in out");
        $monitor("%0t\t%b   %b      %d       %d", $time, clk, reset, sample_in, out);
    end
endmodule
