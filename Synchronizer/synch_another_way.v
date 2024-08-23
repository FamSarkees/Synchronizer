module synch(
input wire d,nrst,clk,
output reg syn_rst
);

reg w1,w2;

always @ (posedge clk or negedge nrst) 
begin
if(~nrst)
begin
	w1 <= 0;
	w2 <= 0;
end
else
begin
	w1 <= 1;
	w2 <= w1;
end
end
     assign syn_rst = w2;

endmodule
