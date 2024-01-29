`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 23:52:25
// Design Name: 
// Module Name: encoder
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


module priority_encoder(
	input [3:0] I,
	input Ein,
	output reg [1:0] Y,
	output reg GS, 
	/*An encoder module that can be used as a building block for larger encoders must 
	have one additional output called Group Signal (GS). 
	GS is asserted whenever EIN is asserted along with any other input signal, 
	and it is used to form the most significant bit of the encoded output data element. 
	*/
	output reg Eout
	/*To avoid creating an ambiguous "00" output, encoders typically 
	use an "Enable In" (EIN) signal and an "Enable Output" (EOUT) signal.*/
	
	/*EIN functions like other enable signals, when it is de-asserted, all outputs are 
	driven to logic '0', and when it is asserted, the encoder outputs can be driven by the inputs. 
	EOUT is asserted only when EIN is asserted and no input signals are asserted. 
	Thus, EOUT can be used to distinguish between no inputs asserted and the 0th input asserted. */
);

always @ (I, Ein)
begin
    if(Ein == 1) begin
        if (I[3] == 1)
            Y <= 2'd3;
        else if (I[2] == 1)
            Y <= 2'd2;
        else if (I[1] == 1)
            Y <= 2'd1;
        else
            Y <= 2'd0;
    end
    else
        Y = 2'd0;
end

always @ (I, Ein)
begin
    if (Ein == 1 && I == 0)
        Eout <= 1'b1;
    else
        Eout <= 1'b0;
end

always @ (I, Ein)
begin
    if (Ein == 1 && I != 0)
        GS <= 1'b1;
    else
        GS <= 1'b0;
end
endmodule
