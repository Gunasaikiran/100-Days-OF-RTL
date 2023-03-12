`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 19:01:12
// Design Name: FULL-ADDER
// Module Name: Full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:USING SIMPLE ASSIGNMENT STATEMENTS
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_adder(
    input A,
    input B,
    input C,
    output Sum,
    output Cout
    );
    assign Sum = A^B^C;
    assign Cout =(A&B)|(B&C)|(C&A);
endmodule
