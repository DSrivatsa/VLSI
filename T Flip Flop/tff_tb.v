module TFF_tb;
reg T,clk,reset;
wire q;
T_ff dut(.T(T),.clk(clk),.reset(reset),.q(q));


initial begin
clk=0;
forever #5 clk=~clk;
end
/*initial begin
reset=0;T=0; #10;$Tisplay("%b %b %b | %b %b",clk,reset,T, q);
#10;
reset=0;T=1;  #10;$Tisplay("%b %b %b | %b %b",clk,reset,T, q);
#10;
reset=1;T=0;  #10;$Tisplay("%b %b %b | %b %b",clk,reset,T, q,~q);
#10;
reset=1;T=1; #10; $Tisplay("%b %b %b | %b %b",clk,reset,T, q,~q);
#10;
enT 
enTmoTule*/
integer i;
initial begin
for ( i=0; i<4; i=i+1)
	   begin
	   {reset,T}=i;
	   #10;	
end
end
initial 
$display("clk reset T q ");
initial
$monitor("%b  %b  %b  |  %b  ", clk, reset,T, q);
endmodule

