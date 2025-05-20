module bidir_sr_tb;
parameter MSB=8;
reg d,clk,en,dir,reset;
wire [MSB-1:0] out;
bidirec_sr #(MSB) dut(.d(d),.clk(clk),.en(en),.dir(dir),.reset(reset),.out(out));

always #10 clk=~clk;

initial begin
clk<=0;
en<=0;
dir<=0;
reset<=0;
d<='o1;
end

initial begin
reset<=0;
#20 reset<=1;
en<=1;

repeat(7) @(posedge clk)
d<=~d;
#10 dir<=1;
repeat(7) @ (posedge clk)
d<=~d;

repeat(7) @(posedge clk);

$finish;
end

initial 
$monitor("reset=%0b data=%b en=%0b dir=%0b out=%b",reset,d,en,dir,out);

endmodule
