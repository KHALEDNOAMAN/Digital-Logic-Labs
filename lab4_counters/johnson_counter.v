module johnson_counter (input clk, input rst, output reg [3:0] q);
  always @(posedge clk) if(rst) q<=0; else q<={q[2:0], ~q[3]};
endmodule