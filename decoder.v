`timescale 1ns / 1ps

module decoder(
    input EN,
    input [2:0] I,
    output reg [7:0] Y
);
always @ (I,EN,Y)
begin

if(EN==1)begin
 if(I==3'b000)
 Y=8'd1;
 else if (I==3'b001)
 Y=8'd2;
 else if (I==3'b010)
 Y=8'd4;
 else if (I==3'b011)
 Y=8'd8;
 else if (I==3'b100)
 Y=8'd16;
 else if (I==3'b101)
 Y=8'd32;
 else if (I==3'b110)
 Y=8'd64;
 else if (I==3'b111)
 Y=8'd128;
 else
 Y=8'd0;
end 
else begin
Y=8'd0;
end

end

endmodule