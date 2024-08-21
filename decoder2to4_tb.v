`timescale 1ns/1ns
`include "decoder2to4.v"
module decoder2to4_tb();
reg [1:0]in;
reg en;
wire [3:0]o;
decoder2to4 d24(in,en,o);
initial
begin
$dumpfile("decoder2to4_tb.vcd");
$dumpvars(0,decoder2to4_tb);
in=2'b01;en=1'b1;
#20;
in=2'b11;en=1'b1;
#20;
in=2'b01;en=1'b1;
#20;
in=2'b01;en=1'b1;
#20;
in=2'b01;en=1'b0;
#20;
in=2'b10;en=1'b0;
#20;
$display("test Complete");
end
endmodule

