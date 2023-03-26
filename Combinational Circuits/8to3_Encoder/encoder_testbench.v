`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 23:16:58
// Design Name: 
// Module Name: encoder_testbench
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


module encoder_testbench;
reg [7:0]in;
reg e;
wire [2:0]out;
parameter PERIOD=10;
integer i;
encoder uut(.in(in),.e(e),.out(out));
     initial
     begin
     e=1;
     for(i=1;i<257;i=i*2)
     begin
      in=i;
      #PERIOD;
     end
     $finish;
     end
endmodule
