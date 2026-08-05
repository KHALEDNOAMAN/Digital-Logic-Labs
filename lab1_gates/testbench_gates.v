module testbench_gates;
  reg a, b; wire y;
  and_gate uut (a, b, y);
  initial begin a=0; b=0; #10 a=1; #10 b=1; #10 ; end
endmodule