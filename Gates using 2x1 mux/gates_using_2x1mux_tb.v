module gates_using_2x1_mux_tb;
reg a,b;
wire y;
 //and gate
Andgate dut1(.a(a),.b(b),.y1(y1));
Orgate dut2(.a(a),.b(b),.y2(y2));
Nandgate dut3(.a(a),.b(b),.y3(y3));
Norgate dut4(.a(a),.b(b),.y4(y4));
XORgate dut5(.a(a),.b(b),.y5(y5));
XNORgate dut6(.a(a),.b(b),.y6(y6));
Notgate dut7(.a(a),.y7(y7));

integer i;	
    initial begin 
	
	
	//loop through the combinations of a,b,c
	
	for ( i=0; i<4; i=i+1)
	   begin
	    {a,b}=i;
	    #10; 
		$display("AND GATE%b %b | %b ",a,b,y1);
		$display("OR GATE %b %b | %b ",a,b,y2);
		$display("NAND GATE %b %b | %b ",a,b,y3);
		$display("NOR GATE %b %b | %b ",a,b,y4);
		$display("XOR GATE %b %b | %b ",a,b,y5);
		$display("XNOR GATE %b %b | %b ",a,b,y6);
		$display("NOT GATE %b %b | %b ",a,b,y7);		
	   end
  	end
	
endmodule
