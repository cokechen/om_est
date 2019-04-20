`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/19 17:03:43
// Design Name: 
// Module Name: interplate
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


module interplate(
      input wire [9:0]interp_index,
      input wire [15:0]epslion1,
       output reg [15:0]symbol_i,
      output reg [15:0]symbol_q
    );
    reg [13:0] k_i,k_q;
    reg[12:0] k_i1,k_q1;
    reg[13:0] c0_i,c0_q;
    reg[12:0] c0_i1,c0_q1;
    reg[13:0] c1_i_re,c1_i_im,c1_q_re,c1_q_im;
    
    
endmodule
