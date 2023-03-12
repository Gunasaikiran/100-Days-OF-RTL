`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 19:33:58
// Design Name: 
// Module Name: Ripple_carry_adder
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


module Ripple_carry_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    wire [2:0] C;
    Adder B0(C[0],Sum[0],A[0],B[0],Cin);
    Adder B1(C[1],Sum[1],A[1],B[1],C[0]);
    Adder B2(C[2],Sum[2],A[2],B[2],C[1]);
    Adder B3(Cout,Sum[3],A[3],B[3],C[2]);
endmodule
