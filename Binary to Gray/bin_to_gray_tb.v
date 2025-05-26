module bin_to_gray_tb;
reg [3:0] bin;
wire [3:0] gray;
 bin_to_gray dut (.bin(bin),.gray(gray));
 integer i;
 initial 
 begin
 for(i=0;i<16;i=i+1)
 begin
 {bin}=i; #10;
 end
 end
 initial
 $monitor("%b %b",bin,gray);
endmodule
