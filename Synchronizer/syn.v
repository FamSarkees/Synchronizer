module syn(input wire d,nrst,clk,
output reg syn_rst
);

always @ (posedge clk or negedge nrst) 
begin
if(~nrst)

	syn_rst <= 0;
else
	syn_rst <= d;


end
endmodule
