`timescale 1ns / 1ps

module test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] out;
integer i,j;

	// Instantiate the Unit Under Test (UUT)
	ary_mul uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
$monitor($time, " a=%0d b=%0d, out=%0d", a,b,out);
		for(i=0;i<256; i=i+1) begin
a=i;
for(j=0;j<255;j=j+1) begin
b=j;
#5;
end
end

	end
      
endmodule

