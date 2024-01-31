`timescale 1ns / 1ps
module fifth(btn0,btn1,clk,data,led);

input btn0;
input btn1;
input clk;
input [7:0] data;
output reg [15:0] led;

reg [22:0] cntr;
reg [7:0] data_reg;
wire [1:0] btbtn;

initial begin 
cntr=23'd0;
end

 always @ (posedge(clk))
    cntr <= cntr + 1;


always @ (posedge cntr[22]) begin

data_reg = data;

case(btbtn)
2'b01: led<={8'd0,data_reg};
2'b00: led<={led[14:0],led[15]};
2'b10: led<={data_reg,8'd0};
endcase

end


assign btbtn[0] =btn0;
assign btbtn[1] =btn1;

endmodule
