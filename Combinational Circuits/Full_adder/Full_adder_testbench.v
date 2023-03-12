`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 19:04:11
// Design Name: 
// Module Name: Full_adder_testbench
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


module Full_adder_testbench;
    reg A;
    reg B;
    reg C;
    wire Sum;
    wire Cout;
    integer i;
    parameter PERIOD=10;
Full_adder DUT(.A(A),.B(B),.C(C),.Sum(Sum),.Cout(Cout));
         initial
         begin
          #PERIOD A=0;
          B=0;
          C=0;
          #PERIOD A=0;
          B=0;
          C=1;
          #PERIOD A=0;
          B=1;
          C=0;
          #PERIOD A=0;
          B=1;
          C=1;
          #PERIOD A=1;
          B=0;
          C=0;
          #PERIOD A=1;
          B=0;
          C=1;
          #PERIOD A=1;
          B=1;
          C=0;
          #PERIOD A=1;
          B=1;
          C=1;
            
//           for(i=0;i<8;i=i+1)
//             begin
//                {A,B,C}=i;
//                 #PERIOD;
//             end
             #100 $finish;
         end
endmodule
