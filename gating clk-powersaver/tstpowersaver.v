module tstpowersaver();

reg en,clk;
wire clk_out;

always
begin
#50 clk=~clk;
end

initial 
begin
clk=1'b1;
en=1'b1;
#100
en=1'b0;
#50
en=1'b1;
end

powersaver DUT(
.en(en),
.clk(clk),
.clk_out(clk_out)
);
endmodule