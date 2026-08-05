module sr_latch (input s, input r, output q, output qn);
  nor(q, r, qn);
  nor(qn, s, q);
endmodule