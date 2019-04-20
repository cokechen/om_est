`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/19 17:03:22
// Design Name: 
// Module Name: optimal_point
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


module optimal_point    #(parameter  segment_sample=1024) (
        output reg [15:0]epslion,    ///
       input wire [15:0]epslion_before,//epslion(n-1)
        input wire [19:0] process_times,
        
          output reg  [9:0]esti_index,
         output reg[9:0] esti_index_next,
       output reg [9:0]interp_index,
          output reg [15:0]epslion1
    );
    always @*begin  
            
                if(epslion>16384)
                                        if ((process_times>10)&&(epslion>=24576)&&(epslion_before<=-8192))
                                            begin
                                               interp_index=esti_index-4;
                                               esti_index=esti_index-1;
                                               esti_index_next=esti_index+segment_sample-1;
                                               epslion1=epslion-16384;
                                               epslion=(-32767-epslion)-16384;
                                            end
                                        else
                                             begin
                                              interp_index=esti_index;
                                              esti_index=esti_index;
                                              esti_index_next=esti_index+segment_sample+1;
                                                epslion1=epslion-16384;
                                            
                                        end
              else
                  begin
                      ////write 3456blocks here;
             
             
             
              end
      
      
      end
endmodule
