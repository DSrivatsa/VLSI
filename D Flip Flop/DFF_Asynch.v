module DFFasynch(input D, clk, reset, output reg Q);
always @(posedge clk or posedge reset) begin
Q<=0;
if(reset)
Q<=0;
else
Q<=D;
end
endmodule
