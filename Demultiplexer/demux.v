module demux(input I,s1,s2,output a,b,c,d);
assign a=s1&s2&I;
assign b=s1&(~s2)&I;
assign c=(~s1)&s2&I;
assign d=(~s1)&(~s2)&I;
endmodule
