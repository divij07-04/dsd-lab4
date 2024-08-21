`timescale 1ns/1ns
`include "d4to16.v"
module d4to16_tb();
reg [0:3]i;
reg e;
wire [0:15]op;
d4to16 d416(i,e,op);
initial
begin
$dumpfile("d4to16_tb.vcd");
$dumpvars(0,d4to16_tb);
i=4'b0011;e=1'b1;
#20;
i=4'b1111;e=1'b1;
#20;
i=4'b0101;e=1'b1;
#20;
i=4'b0111;e=1'b1;
#20;
i=4'b1101;e=1'b0;
#20;
i=4'b1100;e=1'b0;
#20;
$display("test Complete");
end
endmodule

