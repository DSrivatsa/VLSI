module halfadder_tb;
	reg a,b;
	wire sum, carry;

halfadder dut(
	.a(a),
	.b(b),
	.sum(sum),
	.carry(carry));

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
	$monitor("%b %b | %b %b", a,b,sum,carry);
endmodule
		
