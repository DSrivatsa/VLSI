module bcd7seg_tb;
reg A,B,C,D;
wire a,b,c,d,e,f,g;
bcd7seg dut(.A(A),.B(B),.C(C),.D(D),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
integer i;
initial begin
for ( i=0; i<10; i=i+1)
	   begin
	    {A,B,C,D}=i;
	    #10; 	
	   end
  	end
	initial
	$monitor("%b %b %b %b | %b %b %b %b %b %b %b", A,B,C,D,a,b,c,d,e,f,g);
endmodule
