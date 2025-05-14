//D flipflop using non-blocking assignment


module D_flipflop(input D,clk,reset, output reg Q);

  always@(posedge clk )
   begin
   Q<=0;
	if (reset)	
	  Q<=0;
	else 
	  Q<=D;
   end	
endmodule

