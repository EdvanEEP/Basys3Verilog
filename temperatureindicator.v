`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 15:58:40
// Design Name: 
// Module Name: temperatureindicator
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


module temperatureindicator(

input [3:0] sw,
output led

    );
//sw[0}=A
//sw[1]=B
//sw[2]=C
//sw[3]=D   
assign led= (sw[3]) | (sw[1]&sw[2]&sw[0]);    
endmodule
