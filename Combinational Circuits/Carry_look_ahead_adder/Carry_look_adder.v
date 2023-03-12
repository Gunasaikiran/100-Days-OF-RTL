`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 17:08:47
// Design Name: 
// Module Name: Carry_look_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// As WE know about carry look ahead adder 
// it has two functions
// pi=ai^bi;
// gi=ai&bi;
// si=pi^ci;
// ci+1=gi+(pi&ci);
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Carry_look_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    wire p0,p1,p2,p3;
    wire g1,g2,g3;
    wire c1,c2,c3;
    assign p0 =A[0]^B[0];
    assign p1 =A[1]^B[1];
    assign p2 =A[2]^B[2];
    assign p3 =A[3]^B[3];
   
    
    assign g0=A[0]&B[0];
    assign g1=A[1]&B[1];
    assign g2=A[2]&B[2];
    assign g3=A[3]&B[3];
    
    assign c1=g0|(p0&Cin);
    assign c2=g1|(p1&p0&Cin)|(p1&g0);
    assign c3=g2|(p2&g1)|(p2&p1&p0&Cin)|(p2&p1&g0);
    assign Cout=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&p0&Cin)|(p3&p2&p1&g0);
    
    assign Sum[0]=p0^Cin;
    assign Sum[1]=p1^c1;
    assign Sum[2]=p2^c2;
    assign Sum[3]=p3^c3;
endmodule
