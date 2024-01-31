`timescale 1ns / 1ps


module SingleSevenSegment(

 input [3:0] sw,
 output an,
 output reg [0:6] seg // segment pattern 0-9

    );
    
parameter ZERO  = 7'b000_0001;  // 0
parameter ONE   = 7'b100_1111;  // 1
parameter TWO   = 7'b001_0010;  // 2 
parameter THREE = 7'b000_0110;  // 3
parameter FOUR  = 7'b100_1100;  // 4
parameter FIVE  = 7'b010_0100;  // 5
parameter SIX   = 7'b010_0000;  // 6
parameter SEVEN = 7'b000_1111;  // 7
parameter EIGHT = 7'b000_0000;  // 8
parameter NINE  = 7'b000_0100;  // 9   
parameter A= 7'b000_1000; //A
parameter B= 7'b110_0000; //b
parameter C= 7'b011_0001; //C
parameter D= 7'b100_0010; //d
parameter E= 7'b011_0000; //E
parameter F= 7'b011_1000; //F


always @ (sw,seg)
begin
case(sw)
4'd0: seg<=ZERO;
4'd1: seg<=ONE;
4'd2: seg<=TWO;
4'd3: seg<=THREE;
4'd4: seg<=FOUR;
4'd5: seg<=FIVE;
4'd6: seg<=SIX;
4'd7: seg<=SEVEN;
4'd8: seg<=EIGHT;
4'd9: seg<=NINE;
4'd10: seg<=A;
4'd11: seg<=B;
4'd12: seg<=C;
4'd13: seg<=D;
4'd14: seg<=E;
4'd15: seg<=F;
endcase

end

assign an=0;
    
endmodule
