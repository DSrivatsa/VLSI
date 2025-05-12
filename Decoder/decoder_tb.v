module decoder_tb;
reg i0,i1;
wire a0,a1,a2,a3;
decoder dut(.i0(i0),.i1(i1),.a0(a0),.a1(a1),.a2(a2),.a3(a3));
integer i;
initial begin
for (i=0;i<4;i=i+1)
begin
{i0,i1}=i;
#10;
end
end 
initial
$monitor("%b %b | %b %b %b %b",i1,i0,a3,a2,a1,a0);
endmodule
