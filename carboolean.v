`timescale 1ns / 1ps

module carboolean(
  input [3:0] sw,
  output led0, //led[0]
  output led15 //led[15]
    );
  
  //led0 = Blue Light
  //led15 = Red Light
  //sw[0] = COOLANT LEVEL LOW
  //sw[1] = OIL LEVEL LOW
  //sw[2] = OIL TEMP HIGH
  //sw[3] = COOLANT TEMP HIGH
  
  assign led0 = (sw[0]) | (sw[1]) | (sw[2]) | (sw[1] & sw[3]);
  assign led15 = (sw[3] & sw[0]) | (sw[2] & sw[1]) | (sw[2] & sw[3]) | (sw[0] & sw[1] & sw[3]);
    
endmodule


