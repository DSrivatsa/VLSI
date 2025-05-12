module mux_4_1_tb;
reg i0,i1,i2,i3,s0,s1;
wire y;
mux4_1 dut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));

initial begin
i0=0;i1=0;i2=0;i3=0;s0=0;s1=0; #10;
i0=1;i1=0;i2=0;i3=0;s0=0;s1=0; #10;
i0=0;i1=0;i2=0;i3=0;s0=0;s1=1; #10;
i0=1;i1=1;i2=0;i3=0;s0=0;s1=0; #10;
i0=0;i1=0;i2=0;i3=0;s0=1;s1=0; #10;
i0=1;i1=1;i2=1;i3=0;s0=1;s1=0; #10;
i0=0;i1=0;i2=0;i3=0;s0=1;s1=1; #10;
i0=1;i1=1;i2=1;i3=1;s0=1;s1=1; #10;
end
initial
$monitor("%b %b %b %b  | %b %b| %b",i0,i1,i2,i3,s0,s1,y);

endmodule
