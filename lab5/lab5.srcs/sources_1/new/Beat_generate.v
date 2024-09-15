`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 16:05:53
// Design Name: 
// Module Name: Beat_generate
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
    output reg [7:0] out
    );
    initial begin
        out=8'b00000000;
    end
    always @(posedge clk) begin
        if (rst) begin
            if (out==5'b00000) begin
                out = 5'b00001;
            end
            else begin
                out ={out[6:0],out[7]};
            end
        end
        else
            out=8'b00000000;
        
    end
endmodule
