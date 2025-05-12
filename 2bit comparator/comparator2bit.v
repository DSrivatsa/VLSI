module comparator_2bit(input a1,a2,b1,b2,output AgB,AlB,AeB);

assign AgB=(a1&(~b1))|(a1&a2&(~b2))|(a2&(~b1)&(~b2));

assign AlB=(~a1&b1)|(~a1&~a2&b2)|(~a2&b1&b2);
assign AeB=(a1&a2&b1&b2)|(~a1&a2&~b1&b2)|(a1&~a2&b1&~b2)|(~a1&~a2&~b1&~b2);
endmodule
