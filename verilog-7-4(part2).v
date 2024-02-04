`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 22:43:40
// Design Name: 
// Module Name: fourth
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

module fourthpart2(btn1, btn0,clk, data,led);
input clk;
input btn0; // enable of register
input btn1; //selector of mux
input [7:0] data;
output reg [7:0] led;

reg [7:0] op;

always @ (posedge clk) begin
  if(btn0 ==1) begin
  op = data;
  end
  
end

always @(btn1,op,data) begin
case(btn1)
1'b0: led <= data;
1'b1: led <= op;
endcase
end

endmodule
