module vga_controller(
    input clk, rst,
    output reg hsync, vsync,
    output reg [9:0] hcount, vcount
);
parameter H_TOTAL=800, V_TOTAL=525;
always @(posedge clk or posedge rst)
    if (rst) hcount <= 0;
    else hcount <= (hcount==H_TOTAL-1) ? 0 : hcount+1;
always @(posedge clk)
    if (hcount==H_TOTAL-1) vcount <= (vcount==V_TOTAL-1) ? 0 : vcount+1;
assign hsync = (hcount < 656 || hcount >= 752);
assign vsync = (vcount < 490 || vcount >= 492);
endmodule