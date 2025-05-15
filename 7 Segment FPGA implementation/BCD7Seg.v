module bcd7seg(input A,B,C,D, output a,b,c,d,e,f,g);
assign a=~(A|(C&D)|(B&D)|((~B)&(~D)));
assign b=~((~B)|((~C)&(~D))|(C&D));
assign c=~(B|(~C)|D);
assign d=~((~B)&(~D)|(C&(~D))|(B&(~C)&D)|((~B)&C));
assign e=~(((~B)&(~D))|(C&(~D)));
assign f=~(A|((~C)&(~D))|(B&(~C))|(B&(~D)));
assign g=~(A|(B&(~C))|((~B)&C)|(C&(~D)));
endmodule
