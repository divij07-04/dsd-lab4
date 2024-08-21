module decoder2to4(in,en,o);
input [1:0]in;
input en;
output [0:3]o;
reg [0:3]o;
always@(*)
begin
if (en==0 & in==0)
begin
	o=1;end
else if (en==0 & in==1)
	begin
	o=2;
	end
else if (en==0 & in==2)
	begin 
	o=4;
	end
else if (en==0 & in==3)
	begin
	o=8;
	end
else
	begin
	o=0;
	end
end
endmodule

