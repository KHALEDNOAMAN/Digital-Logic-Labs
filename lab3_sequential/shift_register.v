module shift_register (input clk, input rst, input sin, output reg [3:0] q);
  always @(posedge clk) if(rst) q<=0; else q<={q[2:0], sin};
endmodule