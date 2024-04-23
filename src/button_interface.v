module button_interface(
    input clk, reset,
    input set_hours, set_minutes,
    output reg set_signal
);
    always @(posedge clk) begin
        if (reset) set_signal <= 0;
        else if (set_hours || set_minutes) set_signal <= 1;
        else set_signal <= 0;
    end
endmodule
