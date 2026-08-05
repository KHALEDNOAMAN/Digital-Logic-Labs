module frequency_divider (input clk, input rst, output reg clk_out);
  reg [15:0] count;
  always @(posedge clk) if(rst) {count, clk_out} <= 0; else begin count <= count+1; if(count==16'd50000) begin count<=0; clk_out<=~clk_out; end end
endmodule