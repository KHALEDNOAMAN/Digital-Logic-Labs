module pwm_generator(
    input clk, rst,
    input [7:0] duty,
    output reg pwm_out
);
reg [7:0] counter;
always @(posedge clk or posedge rst)
    if (rst) counter <= 0;
    else counter <= counter + 1;
always @(posedge clk)
    pwm_out <= (counter < duty);
endmodule