module subtractor (input [3:0] a, input [3:0] b, output [3:0] diff, output borrow);
  assign {borrow, diff} = a - b;
endmodule