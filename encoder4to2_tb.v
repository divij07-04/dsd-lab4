`timescale 1ns/1ns
`include "encoder4to2.v"

module encoder4to2_tb();
	reg [3:0]W;
	reg en;
	wire [1:0]F;
	integer i;
	
	encoder4to2 enc(W,F,en);
	initial begin
		$dumpfile("encoder4to2.vcd");
		$dumpvars(0,encoder4to2_tb);
		
		for (i=0;i<32;i++) begin
			{en,W} = i; #20;
		end
		$display("Test complete");
	end
endmodule
