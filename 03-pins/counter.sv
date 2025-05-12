module counter (
    input logic clkpulse,       // Clock input
    input logic rst_n,         // Active low reset
    output logic [3:0] leds // 4-bit counter output
);

    always @(posedge clkpulse or negedge rst_n) begin
        if (!rst_n) begin
            leds <= 4'b0000; // Reset counter to 0
        end else begin
            leds <= leds + 1; // Increment counter
        end
    end

endmodule