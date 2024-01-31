`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 22:43:40
// Design Name: 
// Module Name: fourth
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


module fourthtestbench(
    input [7:0] data, //8 slide switch. Enters mux and D latch
    input btn0, // selector of mux
    input btn1, // clock input (En = Enable input) of D latch
    output [7:0] led, //output of mux
    output [7:0] Q, //Output of D latch
    output [7:0] Qn
    );
reg [7:0] tmp; //temporary register for mux, we will assign this to led output later
wire [7:0] Q_int; 
wire [7:0] Qn_int; 
wire [7:0] S; 
wire [7:0] R; 
wire [7:0] Dn; //wires of D latch
reg [7:0] d ;
reg [7:0] bt;
reg btbtn;
reg btbtn0;
initial begin
    // Initialize Inputs
    d = 8'b11111111;
    btbtn = 1;
    btbtn0 = 0;
 
    // Add stimulus here
    #10 btbtn = 0;
    #10 d= 8'b01001101;
    #10 btbtn = 1;
    #10 btbtn = 0;
    #10 d= 8'b00000000;
    #10 btbtn0=1;
    #10 btbtn0=0;
end


always @(btn1, bt) begin
case(btn1)
1'b0: bt <= 8'b00000000;
1'b1: bt <= 8'b11111111;
endcase
end


always @(data,Q,btn0) begin
case(btn0)
1'b0: tmp <= data;
1'b1: tmp <= Q;
endcase
end

assign btn0=btbtn0; //for testbench
//2 by 1 Mux Part
assign led = tmp;


//Register (DLatch Part)
assign data = d;
assign btn1 = btbtn;
assign S = ~(data & bt); //D and Enable of D latch enters the NAND gate
assign Dn = ~data ; //D not of D latch
assign R = ~(Dn & bt); //D not and Enable of D latch enters the NAND gate
assign Q_int = ~(S & Qn_int); //Set and Q not wire enters to NAND gate S-R of Latch
assign Qn_int = ~(R & Q_int);  //Set and Q not wire enters to NAND gate S-R of Latch
assign Q = Q_int; 
assign Qn = Qn_int;   
   
endmodule
