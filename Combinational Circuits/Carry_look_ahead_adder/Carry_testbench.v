`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 17:21:55
// Design Name: 
// Module Name: Carry_testbench
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


module Carry_testbench;
    reg[3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    parameter PERIOD=10;
    integer i;
    Carry_look_adder dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    initial
    begin
     Cin = 0;
     for(i=0;i<256;i=i+1)
     begin
     {A,B}=i;
     #PERIOD;
     end
     $finish;
    end
endmodule
