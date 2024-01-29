`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 01:18:07
// Design Name: 
// Module Name: fourtoonemux4BVER
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


module mux_4_1 (
    input [15:0] data,
    input [1:0] sel,
    output [3:0] Y
);

// we can only assign values to registers 
// inside an always block
reg [3:0] tmp;

always @(data, sel) begin
    case (sel)
    2'b00:   tmp <= data[3:0];
    2'b01:   tmp <= data[7:4];
    2'b10:   tmp <= data[11:8];
    2'b11:   tmp <= data[15:12];
    default: tmp <= 4'b0000;
    endcase
end

assign Y = tmp;
endmodule
