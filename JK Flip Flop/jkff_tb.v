//jk flipflop testbench


module JK_ff_tb;
	reg J,K,clk;
	wire Q;
	
  JK_ff dut (.J(J),.K(K),.clk(clk),.Q(Q));
  initial begin
  clk=0;
    forever #5 clk=~clk;
  end
    
  initial begin  
  J=1;K=0;#10;
  J=1;K=1;#10;
  J=0;K=1;#10;
  J=0;K=0;#10;
  end
  initial $monitor("%b %b %b | %b",clk,J,K,Q);
  
endmodule

