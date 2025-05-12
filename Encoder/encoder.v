module encoder(input i0,i1,i2,i3, output a0,a1);
assign a0= i1|i3;
assign a1=i2|i3;
endmodule
