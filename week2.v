`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 15:47:10
// Design Name: 
// Module Name: week2
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


module top (
    input [7:0] sw,
    output [2:0] led
);

//Sum of Product (SOP)
//assign led[0] = (sw[0] & ~sw[1]) | (~sw[0] & sw[1]);
//assign led[1] = (~sw[1] & ~sw[2] & ~sw[3]) | (sw[1] & ~sw[2] & sw[3]) | (sw[1] & sw[2] & ~sw[3]);// you must write this statement;
//assign led[2] = (sw[4] & ~sw[5] & ~sw[6] & ~sw[7]) | (sw[4] & sw[5] & ~sw[6] & ~sw[7]) | (~sw[4] & ~sw[5] & sw[6] & ~sw[7]) | (sw[4] & sw[5] & sw[6] & sw[7]);// and this one too;


//Product of Sum (POS)
assign led[0] = (sw[1] | sw[0]) & (~sw[1] | ~sw[0]);
assign led[1] = (~sw[1] | sw[2] | sw[3]) & (sw[1] | ~sw[2] | sw[3]) & (sw[1] | sw[2] | ~sw[3]) & (sw[1] | ~sw[2] | ~sw[3]) & (~sw[1] | ~sw[2] | ~sw[3]); 
assign led[2] = (sw[4] | sw[5] | sw[6] | sw[7]) & (sw[4] | ~sw[5] | sw[6] | sw[7]) & (~sw[4] | sw[5] | ~sw[6] | sw[7]) & (sw[4] | ~sw[5] | ~sw[6] | sw[7]) & (~sw[4] | ~sw[5] | ~sw[6] | sw[7]) & (sw[4] | sw[5] | sw[6] | ~sw[7]) & (~sw[4] | sw[5] | sw[6] | ~sw[7]) & (sw[4] | ~sw[5] | sw[6] | ~sw[7]) & (~sw[4] | ~sw[5] | sw[6] | ~sw[7]) & (sw[4] | sw[5] | ~sw[6] | ~sw[7]) & (~sw[4] | sw[5] | ~sw[6] | ~sw[7]) & (sw[4] | ~sw[5] | ~sw[6] | ~sw[7]);
endmodule
 