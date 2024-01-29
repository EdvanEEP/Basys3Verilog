`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 07:08:03
// Design Name: 
// Module Name: pushbuttonled
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


module pushbuttonled(

   input pb1,
   input pb2,
   input pb3,
   output led1,
   output led2,
   output led3

    );
    
 assign led1=pb1;
 assign led2=pb2;
 assign led3=pb3;   
 
//or we can assign that

endmodule
