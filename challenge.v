`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 21:37:33
// Design Name: 
// Module Name: fourtooneMux
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

module mux_41 (
    input [3:0] data,
    output [3:0] Y
);

// we can only assign values to registers 
// inside an always block
reg [3:0] tmp;


always @(data) begin
    case (data)
    4'b0011 : tmp <= data;
    4'b0100 : tmp <= data;
    4'b0110 : tmp <= data;
    4'b1000 : tmp <= data;
    4'b1001 : tmp <= data;
    4'b1010 : tmp <= data;
    4'b1101 : tmp <= data;
    default: tmp <= 4'd0;
    endcase
end

assign Y = tmp;
endmodule