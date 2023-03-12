`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 22:53:03
// Design Name: 
// Module Name: multiplier
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


module multiplier(
    input [1:0] A,
    input [1:0] B,
    output [3:0] Y
    );
    assign Y[0]=A[0]&B[0];
    assign Y[1]=(A[0]&B[1])^(A[1]&B[0]);
    assign Y[2]=(A[1]&B[0]&A[0]&B[1])^(A[1]&B[1]);
    assign Y[3]=(A[0]&B[1]&A[1]&B[0])&(A[1]&B[1]);
endmodule
