`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 12:17:51
// Design Name: 
// Module Name: oddeven1
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


module oddeven1(
input [7:0] sw,
output [1:0] led,
input btnU,
input btnC,
input btnL,
input btnR,
input btnD
    );
 assign led[0]= (sw[0]^sw[1]^sw[2]^sw[3]^sw[4]^sw[5]^sw[6]^sw[7]); 
 assign led[1]= (sw[0]^sw[1]^sw[2]^sw[3]^sw[4]^sw[5]^sw[6]^sw[7]) & 
 ~(btnU^btnC^btnL^btnR^btnD);   
endmodule    