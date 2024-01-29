`timescale 1ns / 1ps

module MuxofTwoDigitSegment(

    input [7:0] data,
    input sel,
    output reg [3:0] muxoutput
    );

always @(data, sel) begin
    case (sel)
    1'b0:   muxoutput <= data[3:0];
    1'b1:   muxoutput <= data[7:4];
    endcase
    
end 
      
    
endmodule
