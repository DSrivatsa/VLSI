module XOR_Gate_tb();
reg a,b;
wire c,d,e,f,g,h,i;
XOR_Gate dut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.i(i));
integer j;
initial begin
for(j=0;j<4;j=j+1)
begin
{a,b}=i;
#10;
end
end
endmodule
