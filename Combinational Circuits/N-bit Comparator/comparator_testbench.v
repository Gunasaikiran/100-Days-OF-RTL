`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 23:00:36
// Design Name: 
// Module Name: comparator_testbench
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


module comparator_testbench;
    reg [15:0] a,b;
    wire lt,gt,eq;
    parameter PERIOD=10;
    comparator dut(.a(a),.b(b),.lt(lt),.gt(gt),.eq(eq));
       initial
       begin 
         a=5;
         b=4;
         #PERIOD;
         a=8;
         b=9;
         #PERIOD;
         a=4;
         b=4;
         #PERIOD;
         $finish;
       end
endmodule
