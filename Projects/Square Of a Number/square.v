`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 09:57:17
// Design Name: 
// Module Name: square
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


module square(
    input A,
    input B,
    input C,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f
    );
    assign a=A&B;
    assign b=(A&~B)|(A&C);
    assign c=(A^B)&C;
    assign d=B&~C;
    assign e=0;
    assign f=C;
endmodule
