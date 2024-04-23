module time_counter(
    input clk, reset, one_second_pulse,
    output reg [5:0] seconds, minutes,
    output reg [4:0] hours
);
    always @(posedge clk) begin
        if (reset) begin
            seconds <= 0; minutes <= 0; hours <= 0;
        end else if (one_second_pulse) begin
            if (seconds == 59) begin
                seconds <= 0;
                if (minutes == 59) begin
                    minutes <= 0;
                    if (hours == 23) hours <= 0;
                    else hours <= hours + 1;
                end else minutes <= minutes + 1;
            end else seconds <= seconds + 1;
        end
    end
endmodule