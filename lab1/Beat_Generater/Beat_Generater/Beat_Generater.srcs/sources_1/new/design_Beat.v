`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/26 15:10:36
// Design Name: 
// Module Name: design_Beat
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


module design_Beat(
    input clk,
    input rst,
    output reg [3:0] out
    );
    
    always @(posedge clk or posedge rst) begin
        if (rst == 1'b1) begin
            out <= 4'b0001;
        end
        else begin
            out <= {out[0], out[3:1]};
        end
    end
endmodule
