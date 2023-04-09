`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 09:53:56
// Design Name: 
// Module Name: Seven_segment_testbench
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


module Seven_segment_testbench;
    reg A;
    reg B;
    reg C;
    reg D;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    Seven_segment Dut(.A(A),.B(B),.C(C),.D(D),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
    initial
    begin
    A=1;
    B=1;
    C=1;
    D=1;
    #20 A=0;
    B=0;
    C=0;
    D=0;
    #60 $finish;
    end
endmodule
