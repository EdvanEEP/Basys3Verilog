`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 22:18:07
// Design Name: 
// Module Name: decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder_3_8 (
    input [1:0] I,
    input [3:0] data,
    output [3:0] led
);

reg [3:0] Y;


always @ (I)
begin
    case (I)
        3'd0:    Y <= 4'd1;
        3'd1:    Y <= 4'd2;
        3'd2:    Y <= 4'd4;
        3'd3:    Y <= 4'd8;
        default: Y <= 4'd0;
    endcase
       
end


assign led = Y & data;

endmodule