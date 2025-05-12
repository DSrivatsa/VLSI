module comparator_2bit_tb;
reg a1,a2,b1,b2;
wire AgB,AlB,AeB;

comparator_2bit dut(.a1(a1),.a2(a2),.b1(b1),.b2(b2),.AgB(AgB),.AlB(AlB),.AeB(AeB));

integer i;
initial begin
for(i=0;i<16;i=i+1)
begin
{a2,a1,b2,b1}=i;
#10;
end
end
initial begin
$display("a1  a2  b1  b2 | AgB  AlB  AeB");
$monitor("%b  %b  %b  %b  |  %b   %b  %b",a2,a1,b2,b1,AgB,AlB,AeB);
end
endmodule
