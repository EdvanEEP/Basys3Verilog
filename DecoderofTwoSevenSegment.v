`timescale 1ns / 1ps

module DecoderofTwoSevenSegment(
    input [3:0] decoderinput,
    output reg [0:6] decoderoutput
    );


always @ (decoderinput,decoderoutput)
begin
if(decoderinput==4'b0000)
decoderoutput=7'b000_0001;
else if (decoderinput==4'b0001)
decoderoutput=7'b100_1111;
else if (decoderinput==4'b0010)
decoderoutput=7'b001_0010;
else if (decoderinput==4'b0011)
decoderoutput=7'b000_0110;
else if (decoderinput==4'b0100)
decoderoutput=7'b100_1100;
else if (decoderinput==4'b0101)
decoderoutput=7'b010_0100;
else if (decoderinput==4'b0110)
decoderoutput=7'b010_0000;
else if (decoderinput==4'b0111)
decoderoutput=7'b000_1111;
else if (decoderinput==4'b1000)
decoderoutput=7'b000_0000;
else if (decoderinput==4'b1001)
decoderoutput=7'b000_0100;
else if (decoderinput==4'b1010)
decoderoutput=7'b000_1000;
else if (decoderinput==4'b1011)
decoderoutput=7'b110_0000;
else if (decoderinput==4'b1100)
decoderoutput=7'b011_0001;
else if (decoderinput==4'b1101)
decoderoutput=7'b100_0010;
else if (decoderinput==4'b1110)
decoderoutput=7'b011_0000;
else if (decoderinput==4'b1111)
decoderoutput=7'b011_1000;

end    
    
endmodule
