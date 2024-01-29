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

module mux_4_1 (
    input [3:0] data,
    input [1:0] sel,
    output Y
);

// we can only assign values to registers 
// inside an always block
reg tmp;


always @(data, sel) begin
    case (sel)
    2'b00:   tmp <= data[0];
    2'b01:   tmp <= data[1];
    2'b10:   tmp <= data[2];
    2'b11:   tmp <= data[3];
    default: tmp <= 1'b0;
    endcase
end

assign Y = tmp;
endmodule