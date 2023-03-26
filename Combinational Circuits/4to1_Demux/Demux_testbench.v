`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 22:45:36
// Design Name: 
// Module Name: Demux_testbench
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


module Demux_testbench;
      reg in;
      reg [1:0] sel;
      wire [3:0] out;
      parameter PERIOD=10;
      integer i;
      demux_1to4 dut(.in(in),.sel(sel),.out(out));
      initial
      begin
          in=1;
          for(i=0;i<4;i=i+1)
            begin
            sel=i;
            #PERIOD;
            end
            $finish;
      end
endmodule
