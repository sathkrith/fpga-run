module top_level_module(
    input clk,                 // Main clock input from FPGA
    input reset,               // Reset button
    input set_hours_button,    // Button to set hours
    input set_minutes_button,  // Button to set minutes
    output [6:0] seg,          // Outputs to 7-segment display
    output [3:0] an,           // 4-digit anode control for 7-segment display
    output dp                   // Decimal point control for 7-segment display
);

// Internal connections
wire one_second_pulse;
wire [5:0] seconds, minutes;
wire [4:0] hours;
wire set_signal;

// Instantiate the clock divider
clock_divider clk_div(
    .clk(clk),
    .one_second_pulse(one_second_pulse)
);

// Instantiate the time counter
time_counter counter(
    .clk(clk),
    .reset(reset),
    .one_second_pulse(one_second_pulse),
    .seconds(seconds),
    .minutes(minutes),
    .hours(hours)
);

// Instantiate the display driver
display_driver display(
    .seconds(seconds),
    .minutes(minutes),
    .hours(hours),
    .seg(seg),
    .an(an),
    .dp(dp)
);

// Instantiate the button interface
button_interface buttons(
    .clk(clk),
    .reset(reset),
    .set_hours(set_hours_button),
    .set_minutes(set_minutes_button),
    .set_signal(set_signal)
);

// Additional connections or logic can be added here if necessary

endmodule