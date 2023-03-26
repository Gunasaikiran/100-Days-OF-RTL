`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 22:36:35
// Design Name: 
// Module Name: demux_1to4
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


module demux_1to4(
    input in,
    input [1:0] sel,
    output [3:0] out
    );
    reg[3:0] out;
    always@(in,sel)
    begin
      case(sel)
       2'b00 :begin
              out[0]=in;
              out[1]=0;
              out[2]=0;
              out[3]=0;
              end
       2'b01 :begin
              out[0]=0;
              out[1]=in;
              out[2]=0;
              out[3]=0;
              end
       2'b10 :begin
              out[0]=0;
              out[1]=0;
              out[2]=in;
              out[3]=0;
              end
       2'b11 :begin
              out[0]=0;
              out[1]=0;
              out[2]=0;
              out[3]=in;
              end
       default :out=4'b0000;
      endcase
    end
endmodule
