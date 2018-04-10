`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module top(
    input CLK100MHZ,
    output reg [3:0] led,
    input [3:0] sw
    );

   always @ (posedge CLK100MHZ)
     begin
        if(sw[0] == 4'b0000)
          begin
             led <= 4'b0000;
          end
        else
          begin
             led <= 4'b1111;
          end
     end

endmodule
