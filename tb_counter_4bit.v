module tb_counter_4bit;

    reg clk = 0;
    reg reset;
    wire [3:0] q;

    // Instantiate the counter
    counter_4bit uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk; // Clock period = 10 time units

    initial begin
        reset = 1;
        #10 reset = 0; // Release reset

        // Run simulation for 100 time units
        #100 $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | Counter Q=%b", $time, q);
    end

endmodule
