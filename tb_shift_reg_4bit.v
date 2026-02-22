module tb_shift_reg_4bit;

    reg clk = 0;
    reg reset;
    reg serial_in;
    wire [3:0] q;

    // Instantiate the shift register
    shift_reg_4bit uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk; // Clock period = 10 time units

    initial begin
        reset = 1;
        serial_in = 0;
        #10 reset = 0; // Release reset

        // Provide serial input sequence
        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;

        #40 $finish; // End simulation
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | Shift Reg Q=%b", $time, q);
    end

endmodule
