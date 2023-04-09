`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 09:45:49
// Design Name: 
// Module Name: Seven_segment
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


module Seven_segment(
    input A,
    input B,
    input C,
    input D,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
    assign a=A|C|(B&D)|(~B&~D);
    assign b=~B|(~C&~D)|(C&D) ;
    assign c=B|~C|D ;
    assign d=(~B&~D)|(C&~D)|(B&~C&D)|(~B&C)|A ;
    assign e=(~B&~D)|(C&~D) ;
    assign f=A|(~C&~D)|(B&~C)|(B&~D) ;
    assign g=A|(~B&C)|(B&~C)|(C&~D) ;
endmodule
