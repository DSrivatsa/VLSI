module fullsub_tb;
	reg a,b,c;
	wire diff, borrow;

fullsub dut(
	.a(a),
	.b(b),
	.diff(diff),
	.borrow(borrow));

    integer i;	
    initial begin 
	
	
	//loop through the combinations of a,b,c
	
	for ( i=0; i<8; i=i+1)
	   begin
	    {a,b,c}=i;
	    #10; 	
	   end
  	end
	initial
	$monitor("%b %b %b | %b %b", a,b,c,diff,borrow);
endmodule
