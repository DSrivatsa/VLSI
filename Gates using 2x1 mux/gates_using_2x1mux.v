//defining 2x1 mux first
module Mux_2x1(input i0,i1,s,output y);

assign y=((~s)&i0)|(s&i1);
endmodule

// and gate- inputs 0,b; select line- a
module Andgate(input a,b, output y1);
Mux_2x1 andusingmux(.i0(0),.i1(b),.s(a),.y(y1));
endmodule

//or gate- inputs b,1; select line- a
module Orgate(input a,b, output y2);
Mux_2x1 orusingmux(.i0(b),.i1(1),.s(a),.y(y2));
endmodule

//nand gate- inputs 1,~b; select line- a
module Nandgate(input a,b, output y3);
Mux_2x1 nandusingmux(.i0(1),.i1((~b)),.s(a),.y(y3));
endmodule

//nor gate- inputs ~b,0; select line- a
module Norgate(input a,b, output y4);
Mux_2x1 norusingmux(.i0((~b)),.i1(0),.s(a),.y(y4));
endmodule

//xor gate- inputs b,~b; select line- a
module XORgate(input a,b, output y5);
Mux_2x1 xorusingmux(.i0(b),.i1((~b)),.s(a),.y(y5));
endmodule

//xnor gate- inputs ~b,b; select line- a
module XNORgate(input a,b, output y6);
Mux_2x1 XNORusingmux(.i0((~b)),.i1(b),.s(a),.y(y6));
endmodule

//not gate- inputs 1,0; select line- a
module Notgate(input a, output y7);
Mux_2x1 notusingmux(.i0(1),.i1(0),.s(a),.y(y7));
endmodule


