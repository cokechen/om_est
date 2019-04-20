`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/19 16:46:16
// Design Name: 
// Module Name: interpolation
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


module interpolation(
          input wire[15:0]epslion,
          output reg [15:0] symbol_i,symbol_q
    );
         optimal_point find
         (
            .epslion(epslion),
            .interp_index(interp_index),
         //   .esti_index(esti_index),
            .epslion1(epslion1)
         
         );
      interplate   tri_inter(
                .interp_index(interp_index),
                .epslion1(eplison1),
                .symbol_i(symbol_i),
                .symbol_q(symbol_q)
      );
    
endmodule
