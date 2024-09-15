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
reg flag=1'b1;
    always @(posedge clk ) begin
        if (flag) begin
            out <= 4'b0001;
        end
        else begin
            out =out*2;
        end
    end
endmodule
