`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 21:33:51
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg A;
    reg B;
    wire Sum;
    wire Carry;
    Half_adder uut ( .A(A),.B(B),.Sum(Sum), .Carry(Carry));

    initial 
    begin

      #10 A=1'b0;
          B=1'b0;                       

      #10 A=1'b0;
          B=1'b1;                    

      #10 A=1'b1;
          B=1'b0;                       

      #10 A=1'b1;
          B=1'b1;                         

      #10 $finish;

  end
endmodule
