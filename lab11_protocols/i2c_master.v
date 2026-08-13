module i2c_master(
    input clk, rst, start, stop,
    input [7:0] data_in,
    output reg sda, scl,
    output reg busy, ack_received
);
reg [3:0] state;
reg [3:0] bit_cnt;
parameter IDLE=0, START=1, DATA=2, ACK=3, STOP=4;
always @(posedge clk or posedge rst) begin
    if (rst) begin state <= IDLE; scl <= 1; sda <= 1; busy <= 0; end
    else case(state)
        IDLE: if (start) begin state <= START; busy <= 1; end
        START: begin sda <= 0; state <= DATA; bit_cnt <= 7; end
        DATA: begin sda <= data_in[bit_cnt]; if (bit_cnt==0) state <= ACK; else bit_cnt <= bit_cnt-1; end
        ACK: begin ack_received <= ~sda; state <= stop ? STOP : IDLE; end
        STOP: begin sda <= 1; busy <= 0; state <= IDLE; end
    endcase
end
endmodule