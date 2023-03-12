`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 10:03:38
// Design Name: 
// Module Name: Testbench_square
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


module Testbench_square;
    reg A;
    reg B;
    reg C;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    parameter TIME=20;
    reg i=3'b000;
    square Dut(.A(A),.B(B),.C(C),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f));
       initial
       begin
        A=0;
        B=0;
        C=0;
        #TIME;
        A=1;
        B=0;
        C=0;
        #TIME;
        A=1;
        B=1;
        C=0;
        #TIME;
        A=1;
        B=1;
        C=1;
        #TIME;
        $finish;
        
       end 
endmodule
