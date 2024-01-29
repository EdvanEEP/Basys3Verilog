`timescale 1ns / 1ps

module wrapper (
    input [7:0] sw,
    output [7:0] led,
    input clk
);
reg [2:0] Y;
wire sdata;
reg [27:0] counter;

always @ (posedge clk)
begin
	counter <= counter + 1;
	Y[2] = counter[27];
    Y[1] = counter[26];
    Y[0] = counter[25];

end



mux input_mux (
    .I(sw),
    .S(Y),
    .Y(sdata)
);

decoder output_decoder (
    .EN(sdata),
    .I(Y),
    .Y(led)
);


endmodule