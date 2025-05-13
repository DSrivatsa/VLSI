//jk flipflop


module JK_ff(input J,K,clk,output reg Q);

  always@(posedge clk)
    begin 
    Q<=0;
    if(J==0&&K==0) begin Q<=Q; end
    else if(J==0&&K==1) begin Q<=1; end
    else if(J==1&&K==0) begin Q<=0; end
    else if(J==1&&K==1) begin Q<=~Q; end
    end
    
endmodule
