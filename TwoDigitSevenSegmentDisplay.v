`timescale 1ns / 1ps

module TwoDigitSevenSegmentDisplay(
input clk,
input [7:0] sw,
output reg [3:0] an,
output [0:6] seg

    );
    
reg [9:0] counter;
reg Y;
always @ (posedge clk)
begin
	counter <= counter + 1;
	Y=counter[9];
end

    
wire [0:3] sdata;
   
 MuxofTwoDigitSegment input_MuxofTwoDigitSegment(
 
 .data(sw),
 .sel(Y),
 .muxoutput(sdata)
);

DecoderofTwoSevenSegment output_DecoderofTwoSevenSegment(
  .decoderinput(sdata),
  .decoderoutput(seg)

);

always @(an,Y) begin
if(Y==1)
an=4'b1101;
else
an=4'b1110;
end


endmodule
