module T_ff(input clk,T,reset, output reg q);
always @(posedge clk) begin
	if(reset)
	begin
		q<=0;
	end
	else
	begin
		q<=~T;
	end
end
endmodule
