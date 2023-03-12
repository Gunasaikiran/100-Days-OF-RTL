`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 19:48:01
// Design Name: 
// Module Name: ripple_testbench
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


module ripple_testbench;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    parameter PERIOD=10;
    integer i;
 Ripple_carry_adder Dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    initial
    begin
       Cin=0;
       for(i=0;i<256;i=i+1)
       begin
         {A,B}=i;
         #PERIOD;
       end
       $finish;
    end
endmodule
