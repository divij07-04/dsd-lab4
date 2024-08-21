module encoder4to2 (W,F,en);
	input [3:0]W;
	input en;
	output reg [1:0]F;
	
	always@(*) begin
		if (en==1) begin
			casex(W)
				4'b0001: F = 2'b00;
				4'b001x: F = 2'b01;
				4'b01xx: F = 2'b10;
				4'b1xxx: F = 2'b11;
			endcase
		end
		else F = 2'b00;
	end
endmodule
