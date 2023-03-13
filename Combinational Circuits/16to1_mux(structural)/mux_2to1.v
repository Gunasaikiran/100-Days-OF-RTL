`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 22:05:30
// Design Name: 
// Module Name: mux_2to1
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


module mux_2to1(
    input [1:0] in,
    input sel,
    output out
    );
    wire sbar, w1, w2;
  not G1 (selbar, sel);
  and G2 (w1, in[0], selbar);
  and G3 (w2, in[1], sel);
  or G4 (out, w1, w2);
endmodule
