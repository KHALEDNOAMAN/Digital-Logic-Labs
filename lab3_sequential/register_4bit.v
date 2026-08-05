module register_4bit (input clk, input rst, input [3:0] d, output reg [3:0] q);
  always @(posedge clk) if(rst) q<=0; else q<=d;
endmodule