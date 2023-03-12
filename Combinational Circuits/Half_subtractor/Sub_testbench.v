`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 22:19:20
// Design Name: 
// Module Name: Sub_testbench
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


module Sub_testbench;
    reg A;
    reg B;
    wire Sub;
    wire Borrow;
    parameter PERIOD=10;
    Subtractor_HALF Dut(.A(A),.B(B),.Sub(Sub),.Borrow(Borrow));
          initial
          begin
             A=0;
             B=0;
             #PERIOD;
             A=0;
             B=1;
             #PERIOD;
             A=1;
             B=0;
             #PERIOD;
             A=1;
             B=1;
             #PERIOD;
             $finish;
             
          end
endmodule
