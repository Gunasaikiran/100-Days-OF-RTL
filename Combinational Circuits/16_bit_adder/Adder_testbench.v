`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 19:31:25
// Design Name: 
// Module Name: Adder_testbench
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


module Adder_testbench;
    reg [15:0] X;
    reg [15:0] Y;
    wire [15:0] Z;
    wire Carry;
    parameter PERIOD=10;
    integer i;
    Adder_16_bit dut(.X(X),.Y(Y),.Z(Z),.Carry(Carry));
    initial
    begin
//       X=16'b0010101010101011;
//       Y=16'b1101010101010100;
//       #PERIOD;
//       $finish;
      for(i=0;i<65536;i=i+1)
      begin
        {X,Y}=i;
        #PERIOD;
      end
       $finish;
    end
endmodule
