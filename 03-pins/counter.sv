module counter (
    input logic clkpulse,       // Clock input
    input logic [1:0] sw,   // Direction control (1 = up, 0 = down)
    input logic rst,         // Active low reset
    output logic [3:0] led // 4-bit counter output
);

    always @(posedge clkpulse or posedge rst) begin
        if (rst) begin
            led <= 4'b0000; // Reset counter to 0
        end else begin
            if (sw == 1'b1) begin
                led <= led + 1'b1; 
            end else begin
                led <= led - 1'b1;
            end
        end
    end

endmodule