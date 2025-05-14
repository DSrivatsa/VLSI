//T flipflop with asynchronous reset

module T_ff(input T,clk,reset, output reg Q);

initial Q=0; 
  always@(posedge clk or posedge reset)
  
   if(reset) begin
   Q<=0;
   end
	else begin
	if(T) begin
	   Q<=~Q;
	   end
	else begin
	   Q<=Q; 
	   end
	end	
endmodule 	 
