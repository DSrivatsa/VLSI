module fulladder(
	input wire a,
	input wire b,
	input wire c,
	output reg sum,
	output reg carry);
always @(*) begin
	sum=0;
	carry=0; //these are the default values
  if (a==0 && b==0 && c==0) begin
	sum=0;
	carry=0;
  end
  else if (a==0 && b==0 && c==1) begin
	sum=1;
	carry=0;
  end
  else if (a==0 && b==1 && c==0) begin
	sum=1;
	carry=0;
  end
  else if (a==0 && b==1 && c==1) begin
	sum=0;
	carry=1;
  end
  else if (a==1 && b==0 && c==0) begin
	sum=1;
	carry=0;
  end
  else if (a==1 && b==0 && c==1) begin
	sum=0;
	carry=1;
  end
  else if (a==1 && b==1 && c==0) begin
	sum=0;
	carry=1;
  end
  else if (a==1 && b==1 && c==1) begin
	sum=1;
	carry=1;
  end
 end
endmodule

/*xor(sum,a,b,c)
or(carry,and(a,b),and(b,c),and(a,c))*/
