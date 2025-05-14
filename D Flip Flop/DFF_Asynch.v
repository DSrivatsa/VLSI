//D flipflop using non-blocking assignment (asynchronous reset)


module D_flipflop(input D,clk,reset, output reg Q);
  initial Q=0;
  always@(posedge clk or posedge reset)
   begin
   
	if (reset)	
	  Q<=0;
	else 
	  Q<=D;
   end	
endmodule

