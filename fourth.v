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

module fourth(btn1, btn0, data,led);

input btn0; //mux
input btn1; //register
input [7:0] data;
output reg [7:0] led;

reg [7:0] op;

always @ (posedge btn1) begin
  op = data;
end

always @(btn0,op,data) begin
case(btn0)
1'b0: led <= data;
1'b1: led <= op;
endcase
end

endmodule