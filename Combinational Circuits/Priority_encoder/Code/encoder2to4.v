`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2023 18:39:57
// Design Name: 
// Module Name: encoder2to4
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


module encoder2to4(en,i,y);
  // declare
  input en;
  input [3:0]i;
  // store and declare output values
  output reg [1:0]y;
  always @(en,i)
  begin
    if(en==1)
      begin
        // priority encoder
        // if condition to choose 
        // output based on priority. 
        if(i[3]==1) y=3'b11;
        else if(i[2]==1) y=3'b10;
        else if(i[1]==1) y=3'b01;
        else
        y=3'b000;
      end
     // if enable is zero, there is
     // an high impedance value. 
    else y=3'bzzz;
  end
endmodule
