`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 22:05:30
// Design Name: 
// Module Name: mux_16to1
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


module mux_16to1(
    input [15:0] in,
    input [3:0] sel,
    output out
    );
    wire [3:0]t;
    mux_4to1 m1(in[3:0],sel[1:0],t[0]);
    mux_4to1 m2(in[7:4],sel[1:0],t[1]);
    mux_4to1 m3(in[11:8],sel[1:0],t[2]);
    mux_4to1 m4(in[15:12],sel[1:0],t[3]);
    mux_4to1 m5(t[3:0],sel[3:2],out);
endmodule
