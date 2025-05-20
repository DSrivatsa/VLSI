module mult_2_bit_tb;
reg [1:0] A;
reg [1:0] B;
wire [3:0] p;
wire a,b,c,d,e,f,g;
mult_2_bit dut(.A(A),.B(B),.p(p),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
integer i,j;
initial begin
$display(" Time |A B | p");
$display("---------------------");
for(i=0;i<4;i=i+1) begin
for(j=0;j<4;j=j+1) begin
A=i;
B=j;
#10;
$display("%4t | %0d %0d | %0d | %b",$time,A,B,p,a,b,c,d,e,f,g);
end
end
$finish;
end
endmodule
