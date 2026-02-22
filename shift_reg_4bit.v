module shift_reg_4bit(
    input clk,
    input reset,
    input serial_in,
    output reg [3:0] q
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= {q[2:0], serial_in}; // Shift left
    end

endmodule
