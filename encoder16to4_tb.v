/*
You can use random W values as well instead of for loop from 0 to 2^17
I used it to check whether the code was running properly
*/

`timescale 1ns/1ns
`include "encoder16to4.v"

module encoder16to4_tb();
	reg [15:0]W;
	reg en;
	wire [3:0]F;
	integer i;
	
	encoder16to4 enc(W,F,en);
	initial begin
		$dumpfile("encoder16to4.vcd");
		$dumpvars(0,encoder16to4_tb);
		
		for (i=0;i<131072;i++) begin
			{en,W} = i; #20;
		end
		$display("Test complete");
	end
endmodule
