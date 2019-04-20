`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/18 21:49:28
// Design Name: 
// Module Name: input_ram
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
module input_ram  #(parameter Addr_Width=10,Data_Width=12) (     
         input wire clk,we,
         input wire [Addr_Width-1:0] addr_a,addr_b,
         input wire[Data_Width-1:0] din_a,
         output wire[Data_Width-1:0] dout_a,dout_b
    );
    reg [Data_Width-1:0] ram[2**Addr_Width-1:0];
    reg [Addr_Width-1:0] addr_a_reg,addr_b_reg;
    ////////////////////////////////////////////////
   //   reg[11:0] mem_i[1:1024];
  //       reg[11:0] mem_q[1:1024];
    //    initial $readmemh("real.txt",mem_i,1,1024);
     //   initial $readmemh("real.txt",mem_q,1,1024);
    //////////////////////////////////////////////
    always @(posedge clk)begin
    if (we)
            ram[addr_a]<=din_a;
          addr_a_reg<=addr_a;
          addr_b_reg<=addr_b;        
     end
           assign dout_a=ram[addr_a_reg];
          assign dout_b =ram[addr_b_reg];   
endmodule
