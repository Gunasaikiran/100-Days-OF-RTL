`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 22:05:30
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input [3:0] in,
    input [1:0] sel,
    output out
    );
    wire [1:0]t;
    mux_2to1 a1(in[1:0],sel[0],t[0]);
    mux_2to1 a2(in[3:2],sel[0],t[1]);
    mux_2to1 a3(t[1:0],sel[1],out);
endmodule
