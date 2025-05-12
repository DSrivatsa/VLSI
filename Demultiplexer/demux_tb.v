module demux_tb;
reg I,s1,s2;
wire a,b,c,d;
demux dut(.I(I),.s1(s1),.s2(s2),.a(a),.b(b),.c(c),.d(d));
integer i;
initial begin
for(i=0;i<8;i=i+1)
begin
{I,s1,s2}=i;
#10;
end
end
initial
$monitor("%b %b %b | %b %b %b %b",I, s1,s2,a,b,c,d);
endmodule
