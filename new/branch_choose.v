`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/19 15:03:10
// Design Name: 
// Module Name: branch_choose
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


module branch_choose  #(parameter segment=1024)(
     input clk,
    input wire [24:0]esti_sample_abs_quare,
    output reg[33:0]  Xm_re=0,Xm_im=0
    );
    integer i;
   reg [9:0]count;
   reg [1:0] mod;
    always @*
    begin
            for (i=1;i<=segment;i=i+1)      
            begin
                    count[9:0]=i[9:0];
                    mod=count<<8; //final 2bits
                    case(mod)
                        2'b00:  Xm_im=Xm_im+esti_sample_abs_quare;
                        2'b01:   Xm_re=Xm_re+esti_sample_abs_quare;
                        2'b10:   Xm_im=Xm_im-esti_sample_abs_quare;
                        2'b11:   Xm_re=Xm_re-esti_sample_abs_quare;
                      endcase
            end
    end
    
endmodule
