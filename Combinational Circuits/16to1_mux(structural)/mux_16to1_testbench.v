`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 22:13:22
// Design Name: 
// Module Name: mux_16to1_testbench
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


module mux_16to1_testbench;
    reg [15:0] in;
    reg [3:0] sel;
    wire out;
    parameter PERIOD=10;
    integer i;
    mux_16to1 dut(.in(in),.sel(sel),.out(out));
       initial
       begin
         sel=4'b0000; //3 input
         for(i=0;i<16;i=i+1)
         begin
           in=i;
           #PERIOD;
         end
         $finish;
       end
endmodule
