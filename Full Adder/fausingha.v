module halfadder(input a,b, output sumh, carryh);
	
	xor x1(sumh,a,b);
	and a1(carryh,a,b);
endmodule

module fainha(input a,b,c, output sumf,carryf);
wire w1,w2,w3;

halfadder ha1(.a(a),.b(b),.sumh(w1),.carryh(w2));
halfadder ha2(.a(w1),.b(c),.sumh(sumf),.carryh(w3));
 or(carryf,w3,w2);
endmodule
