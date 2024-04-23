module clock_divider(
    input clk,                // Assume 50 MHz input clock
    output reg one_second_pulse
);
    // Counter to store the number of ticks
    reg [25:0] counter = 26'd0; 
    localparam max_count = 26'd50000000; // Set to system clock frequency

    always @(posedge clk) begin
        if (counter >= max_count - 1) begin
            counter <= 26'd0;
            one_second_pulse <= ~one_second_pulse;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule