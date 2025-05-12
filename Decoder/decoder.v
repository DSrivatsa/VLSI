module decoder(input i0,i1, output a0,a1,a2,a3);
assign a0=(~i0)&(~i1);
assign a1=(~i1)&i0;
assign a2=i1&(~i0);
assign a3=i0&i1;
endmodule
