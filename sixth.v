`timescale 1ns / 1ps
module sixth(

input clk,
input btn0,
input [15:0] data,
output reg [15:0] led

    );

integer i;
reg [15:0] data_reg;

   
always @ (posedge btn0) begin

for(i=0;i<16;i=i+1) begin

if(data[i]==1)begin

led[i]=data[i];

end
end

led <= led<<1;

end
    
endmodule
