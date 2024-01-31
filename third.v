`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 20:16:49
// Design Name: 
// Module Name: third
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


module third(
    input D,
    input En,
    output Q,
    output Qn

    );
reg d,en;

stimulus3 output_stimulus3(
.D(D),
.En(En),
.Q(Q),
.Qn(Qn)
);

initial begin
    // Initialize Inputs
    d = 1;
    en = 1;

    // Add stimulus here
    #100 d = 0;
    #100 d = 1;
    #100 en = 0;
    #100 en = 1;
    #100 d = 0;
         en = 0;
    #100 ;
end

assign D=d;
assign En=en;

    
endmodule

module stimulus3(
    input D,
    input En,    
    output Q,
    output Qn

);

wire Q_int, Qn_int, S, R, Dn;

assign #1 S = ~(D & En);
assign #1 Dn = ~D ;
assign #1 R = ~(Dn & En);
assign #1 Q_int = ~(S & Qn_int);
assign #1 Qn_int = ~(R & Q_int);
assign Q = Q_int;
assign Qn = Qn_int;

endmodule

