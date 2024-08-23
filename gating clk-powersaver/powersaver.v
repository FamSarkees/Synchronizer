module powersaver(
input wire en,clk,
 reg clk_out
);

//using latch in powersaver to solve GLETCH problem 

reg latch_out;

always @ (!clk) 
begin
if(en)
begin
	latch_out <= en;
	clk_out = latch_out & clk;
end
end
	assign clk_out = latch_out & clk;
endmodule
