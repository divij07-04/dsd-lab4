module de2to4(in,en,o);
input [0:1]in;
input en;
output [0:3]o;
reg [0:3]o;
always@(*)
begin
if (en==1 & in==0)
begin
	o=4'b0001;end
else if (en==1 & in==1)
	begin
	o=4'b0010;
	end
else if (en==1 & in==2)
	begin 
	o=4'b0100;
	end
else if (en==1 & in==3)
	begin
	o=4'b1000;
	end
else
	begin
	o=0;
	end
end
endmodule
module d4to16(i,e,op);
input [0:3]i;
input e;
output [0:15]op;
reg [0:15]o;
wire [0:3]x1;
de2to4 d1(i[0:1],e,x1);
de2to4 d2(i[2:3],x1[0],op[0:3]);
de2to4 d3(i[2:3],x1[1],op[4:7]);
de2to4 d4(i[2:3],x1[2],op[8:11]);
de2to4 d5(i[2:3],x1[3],op[12:15]);
endmodule


