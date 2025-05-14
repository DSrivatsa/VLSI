//sr flipflop

module SR_ff ( input clk, reset,S,R,output reg Q);
  
  initial Q=0;
  always@(posedge clk or negedge reset)
  begin
  Q<=0;
        if(~reset) Q <= 0;
        else begin
            if(S==0&&R==0) begin Q<=Q; end
            if(S==0&&R==1) begin Q<=0; end
            if(S==1&&R==0) begin Q<=1; end
            if(S==1&&R==1) begin Q<=1'bx; end
        end end
endmodule
