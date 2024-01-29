`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 08:20:11
// Design Name: 
// Module Name: oddeven
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


module oddeven(
input clk,
input [7:0] sw,
output led

    );
reg swled_reg ;
reg led_yak;
initial begin
swled_reg=0;
led_yak=0;
end    
 always @(posedge sw[0]) swled_reg= swled_reg + 1 ;
 always @(negedge sw[0]) swled_reg= swled_reg - 1 ;
 always @(posedge sw[1]) swled_reg= swled_reg + 1;
 always @(negedge sw[1]) swled_reg= swled_reg - 1 ;
 always @(posedge sw[2]) swled_reg= swled_reg + 1 ;
 always @(negedge sw[2]) swled_reg= swled_reg - 1 ;
 always @(posedge sw[3]) swled_reg= swled_reg + 1 ;
 always @(negedge sw[3]) swled_reg= swled_reg - 1 ;
 always @(posedge sw[4]) swled_reg= swled_reg + 1 ;
 always @(negedge sw[4]) swled_reg= swled_reg - 1 ;
 always @(posedge sw[5]) swled_reg= swled_reg + 1 ;
 always @(negedge sw[5]) swled_reg= swled_reg - 1 ;
 always @(posedge sw[6]) swled_reg= swled_reg + 1 ;
 always @(negedge sw[6]) swled_reg= swled_reg - 1 ;
 always @(posedge sw[7]) swled_reg= swled_reg + 1 ;
 always @(negedge sw[7]) swled_reg= swled_reg - 1 ;
 always @(posedge clk)
 begin  
  if(swled_reg % 2 == 1) begin
    led_yak=1;
  end
  if(swled_reg % 2 == 0) begin
    led_yak=0;
 end 
 end
assign led=led_yak;
 
endmodule



