`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 22:35:17
// Design Name: 
// Module Name: clock
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


module clock (
	input clk,
	output [2:0] Y
);

reg [27:0] counter;

always @ (posedge clk)
begin
	counter <= counter + 1;
end

assign Y[2] = counter[27];
assign Y[1] = counter[26];
assign Y[0] = counter[25];


endmodule