`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 19:22:34
// Design Name: 
// Module Name: Adder_16_bit
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


module Adder_16_bit(
    input [15:0] X,
    input [15:0] Y,
    output [15:0] Z,
    input Carry
    );
    wire C[3:1];
    Adder_4_bit A0(X[3:0],Y[3:0],Z[3:0],C[1],1'B0);
    Adder_4_bit A1(X[7:4],Y[7:4],Z[7:4],C[2],C[1]);
    Adder_4_bit A2(X[11:8],Y[11:8],Z[11:8],C[3],C[2]);
    Adder_4_bit A3(X[15:12],Y[15:12],Z[15:12],Carry,C[3]);
endmodule
