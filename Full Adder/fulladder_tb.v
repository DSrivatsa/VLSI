module fulladder_tb;
	reg a,b,c;
	wire sum, carry;

fulladder dut(
	.a(a),
	.b(b),
	.c(c),
	.sum(sum),
	.carry(carry));

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
	$monitor("%b %b %b | %b %b", a,b,c,sum,carry);
endmodule
