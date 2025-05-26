module gray_to_bin_tb;
reg [3:0] gray;
wire [3:0] bin;
gray_to_bin dut(.gray(gray),.bin(bin));
integer i;
initial begin
for(i=0;i<16;i=i+1) begin
{gray}=i;
#10;
end
end
initial
$monitor("%b %b",gray,bin);
endmodule
