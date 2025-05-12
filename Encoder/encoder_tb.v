module encoder_tb;
reg i0,i1,i2,i3;
wire a0,a1;
encoder dut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.a0(a0),.a1(a1));

initial begin


i3=0;i2=0;i1=0;i0=1; 
#10;
i3=0;i2=0;i1=1;i0=0;
#10; 
i3=0;i2=1;i1=0;i0=0; 
#10;
i3=1;i2=0;i1=0;i0=0; 
#10;
$monitor(" %b %b %b %b | %b %b",i3,i2,i1,i0,a1,a0);
end 
endmodule
