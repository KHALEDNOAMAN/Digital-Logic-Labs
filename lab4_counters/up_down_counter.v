module up_down_counter (input clk, input rst, input dir, output reg [3:0] count);
  always @(posedge clk) if(rst) count<=0; else if(dir) count<=count+1; else count<=count-1;
endmodule