`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 23:01:48
// Design Name: 
// Module Name: MULTIPLIER_testbench
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


module MULTIPLIER_testbench;
       reg [1:0] A;
       reg [1:0] B;
       wire [3:0] Y;
       parameter PERIOD=10;
       integer i;
       multiplier dut(.A(A),.B(B),.Y(Y));
       initial
       begin
         for(i=0;i<16;i=i+1)
         begin
             {A,B}=i;
             #PERIOD;
         end
         $finish;
       end
endmodule
