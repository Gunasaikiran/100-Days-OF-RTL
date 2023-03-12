`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 22:16:33
// Design Name: 
// Module Name: Subtractor_HALF
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


module Subtractor_HALF(
    input A,
    input B,
    output Sub,
    output Borrow
    );
    assign Sub =A^B;
    assign Borrow =(~A&B);
endmodule
