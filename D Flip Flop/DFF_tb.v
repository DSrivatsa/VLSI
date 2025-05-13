module DFlipflop_tb;
reg D,clk,reset;
wire Q;
DFFasynch dut(.D(D),.clk(clk),.reset(reset),.Q(Q));


initial begin
clk=0;
forever #5 clk=~clk;
end
/*initial begin
reset=0;D=0; #10;$display("%b %b %b | %b %b",clk,reset,D, Q,~Q);
#10;
reset=0;D=1;  #10;$display("%b %b %b | %b %b",clk,reset,D, Q,~Q);
#10;
reset=1;D=0;  #10;$display("%b %b %b | %b %b",clk,reset,D, Q,~Q);
#10;
reset=1;D=1; #10; $display("%b %b %b | %b %b",clk,reset,D, Q,~Q);
#10;
end 
endmodule*/
integer i;
initial begin
for ( i=0; i<4; i=i+1)
	   begin
	   {reset,D}=i;
	   #10;	
end 
end
initial 
$display("clk reset D Q ~Q");
initial
$monitor("%b  %b  %b  |  %b  %b", clk, reset,D, Q,~Q);
endmodule
