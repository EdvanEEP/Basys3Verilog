`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 23:36:35
// Design Name: 
// Module Name: first
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


module first(
    input S,
    input R,
    output Q,
    output Qn

    );
reg s;
reg r;

stimulus output_stimulus(
.S(s),
.R(r),
.Q(Q),
.Qn(Qn)
);

initial begin
    // Initialize Inputs
    s = 1;
    r = 1;

    // Add stimulus here
    #100 s = 0;
    #100 s = 1;
    #100 r = 0;
    #100 r = 1;
    #100 s = 0;
         r = 0;
    #100 s = 1;
         r = 1;
    #100 s = 0;
         r = 0;
    #100 ;
end

assign S=s;
assign R=r;

    
endmodule

module stimulus(    
    input S,
    input R,
    output Q,
    output Qn
);


wire Q_int, Qn_int;

assign #1 Q_int = ~(S & Qn_int);
assign #1 Qn_int = ~(R & Q_int);
assign Q = Q_int;
assign Qn = Qn_int;

endmodule
