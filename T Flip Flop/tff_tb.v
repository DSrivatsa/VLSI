//t flipflop testbench


module T_flipflop_tb;
reg T,clk,reset;
wire Q;

T_ff dut (.T(T),.clk(clk),.reset(reset),.Q(Q));

initial begin 
	clk=0;
	forever #5 clk=~clk;
end

initial begin

$display(" clk reset T | Q ~Q");
$display("-------------------");

reset=0;T=1;#10; 
reset=0;T=0;#10; 
reset=1;T=1;#10; 
reset=1;T=0;#10; 

end
initial
$monitor("  %b %b  %b |  %b  %b",clk,reset,T,Q,~Q);


endmodule
