// Parity checker in Verilog
module parity_checker(input [7:0] data, output parity);
    assign parity = ^data;
endmodule
