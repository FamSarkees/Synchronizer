module tstsyn();

reg d,nrst,clk;
wire syn_rst;

always 
begin  
#10 clk=~clk;
end 

initial 
begin 
clk=1'b0;
nrst=1'b0;

#45
nrst=1'b1;
d=1'b1;

end

syn DUT(
.clk(clk),
.nrst(nrst),
.syn_rst(syn_rst),
.d(d)
);
endmodule