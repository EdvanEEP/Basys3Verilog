`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 14:56:47
// Design Name: 
// Module Name: fivewaylightsw
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


module fivewaylightsw( 

input [4:0] sw,
output led

    );

//sw[0}=A
//sw[1]=B
//sw[2]=C
//sw[3]=D
//sw[4]=E

//Since we didn't know karnaugh maps we did this task at that time, this can be simplified but i will leave this without changes    
    assign led= (sw[3]) | 
    (sw[1]) | 
    (sw[0]) | 
    (sw[2]) | 
    (sw[0]&sw[1]&sw[3]) | 
    (sw[1]&sw[2]&sw[3]) | 
    (sw[0]&sw[2]&sw[3]) |
    (sw[0]&sw[1]&sw[2]) |
    (sw[4]) |
    (sw[0]&sw[1]&sw[4]) |
    (sw[1]&sw[3]&sw[4]) |
    (sw[0]&sw[3]&sw[4]) |
    (sw[2]&sw[3]&sw[4]) |
    (sw[0]&sw[1]&sw[2]&sw[3]&sw[4]) |
    (sw[1]&sw[2]&sw[4]) |
    (sw[0]&sw[2]&sw[4]) ;
      
endmodule
