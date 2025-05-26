module prio_encoder_8x3_tb; 
   reg [7:0] din; 
   wire[2:0] dout; 
   prio_enco_8x3 dut (.dout(dout), .din(din) ); 
   initial 
     begin 
    din=8'b11001100;    #10; $display("%b %b", din,dout);
    din=8'b01100110;    #10; $display("%b %b", din,dout);
    din=8'b00110011;    #10; $display("%b %b", din,dout);
    din=8'b00010010;    #10; $display("%b %b", din,dout);
    din=8'b00001001;    #10; $display("%b %b", din,dout);
    din=8'b00000100;    #10; $display("%b %b", din,dout);
    din=8'b00000011;    #10; $display("%b %b", din,dout);
    din=8'b00000001;    #10; $display("%b %b", din,dout);
    din=8'b00000000;    #10;  $display("%b %b", din,dout);
    
     end 
 endmodule
