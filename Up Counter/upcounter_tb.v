module Up_Counter_tb;
reg clk,reset;
wire out;

Up_Counter dut(.clk(clk),.reset(reset),.out(out));
always #5 clk=~clk;
initial begin
clk<=0;
reset<=0;
#20 reset<=1;
#80 reset<=0;
#50 reset<=1;

#20 $finish;
end 
endmodule
