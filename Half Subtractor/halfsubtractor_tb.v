module halfsub_tb;
	reg a,b;
	wire diff, borrow;

halfsub dut(
	.a(a),
	.b(b),
	.diff(diff),
	.borrow(borrow));

    integer i;	
    initial begin 
	
	
	//loop through the combinations of a,b,c
	
	for ( i=0; i<4; i=i+1)
	   begin
	    {a,b}=i;
	    #10; 	
	   end
  	end
	initial
	$monitor("%b %b | %b %b", a,b,diff,borrow);
endmodule
		
