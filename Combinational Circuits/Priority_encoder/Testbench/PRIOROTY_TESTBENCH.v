`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2023 18:44:03
// Design Name: 
// Module Name: PRIOROTY_TESTBENCH
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


module PRIOROTY_TESTBENCH;
  reg [3:0]i;
  reg en;
  wire [1:0]y;
  
  // instantiate the model: creating 
  // instance for block diagram 
    encoder2to4 dut(en,i,y);
  initial
    begin
      en=1; i=8;#5
      en=1; i=4;#5
      en=1; i=2;#5
      en=1; i=0;#5
      en=0;i=8'bx;#5
      $finish;
    end
endmodule
