`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 22:46:02
// Design Name: 
// Module Name: Full_sub
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


module Full_sub;
    reg A;
    reg B;
    reg C;
    wire Sub;
    wire Borrow;
    parameter PERIOD=10;
    Full_subtractor Dut(.A(A),.B(B),.C(C),.Sub(Sub),.Borrow(Borrow));
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
             
          end
endmodule
