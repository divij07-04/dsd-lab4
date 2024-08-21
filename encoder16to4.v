/*
break statement was not working hence used flag to replace break
i starts from 15 to work as priority encoder
*/

module encoder16to4 (W,F,en);
	input [15:0]W;
	input en;
	output reg [3:0]F;
	integer i;
	reg fl;

	always@(*) begin
		fl = 0;
		if (en==1) begin
			for (i=15;i>=0;i--) begin
				if ((W[i]==1) && (fl==0)) begin
					F = i;
					fl = 1'b1;
				end
			end
		end
		else F = 4'b0000;
	end
endmodule
