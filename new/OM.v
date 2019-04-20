`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/18 22:07:36
// Design Name: 
// Module Name: OM
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
module OM    #(parameter Data_Width=12) (
     input clk,
     input  wire[Data_Width-1:0] din_i,
       input  wire[Data_Width-1:0] din_q,
      output  wire   [15:0] epslion
    );
   reg [9:0] count=0;
    //count the sample
     reg  [23:0] i2;
     reg[23:0] q2;
      reg [24:0]  esti_sample_abs_quare;
     reg [33:0]   Xm_re;
     reg [33:0]  Xm_im;
     reg [0:0] ce;
     reg [2:0] zero3;
    suqare_multiplier i_square
    (
        .clk(clk),
        .a(din_i),
        .b(din_i),
        .p(i2)
    );
    suqare_multiplier q_square
        (
            .clk(clk),
            .a(din_q),
            .b(din_q),
            .p(q2)
        );
    ADDer  square
    (
            .A(i2),
      .B(q2),
      .clk(clk),
      .ce(ce),
      .S(esti_sample_abs_quare)
    );
    branch_choose cal_Xm
    (
       .clk(clk),
       .esti_sample_abs_quare(esti_sample_abs_quare),
       .Xm_re(Xm_re),
       .Xm_im(Xm_im)
    );
    cordic_xm arctan   //untested
    (
     .s_axis_cartesian_tdata ({Xm_im,Xm_re}),
     .m_axis_dout_tdata (epslion)
    );            
    
endmodule
