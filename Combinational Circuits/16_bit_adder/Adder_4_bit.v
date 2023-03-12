`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 19:29:43
// Design Name: 
// Module Name: Adder_4_bit
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


module Adder_4_bit(
    input [3:0] X,
    input [3:0] Y,
    output [3:0] Z,
    output Cout,
    input Cin
    );
    assign {Cout,Z}=X+Y+Cin;
endmodule
