module instsyn( input wire d,nrst,clk,
output reg syn_rst
);

reg w;

syn DUT(
.clk(clk),
.nrst(nrst),
.d(1),
.syn_rst(w)
);

syn DUT1(
.clk(clk),
.nrst(nrst),
.d(w),
.syn_rst(syn_rst)
);
endmodule;