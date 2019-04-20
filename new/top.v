`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/18 21:16:58
// Design Name: 
// Module Name: top
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

module top(
     input wire clk
    );
    
      input_ram buffer_i(
      .clk(clk),
      .we(we),
      .addr_a(addr_a1),
      .addr_b(addr_b1),
      .din_a(din_a1),
       .dout_a(dout_a1),
        .dout_b(dout_b1)
      ); 
      
        input_ram buffer_q(
          .clk(clk),
          .we(we),
          .addr_a(addr_a2),
          .addr_b(addr_b12),
          .din_a(din_a2),
           .dout_a(dout_a2),
            .dout_b(dout_b2)
          ); 
          
      OM om_est(
      .clk(clk),
      .din_i(dout_b1),
      .din_q(dout_b2),
      .epslion(epslion)
      );
      
      
      interpolation  inter(
      . iepslion(epslion),
       .symbol_i(symbol_i),
       .symbol_q(symbol_q)
      );
      
      
endmodule
