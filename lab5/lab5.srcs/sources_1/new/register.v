/*
 * @Author: S.H.Y 
 * @Date: 2024-09-09 23:03:57 
 * @Last Modified by:   S.H.Y 
 * @Last Modified time: 2024-09-09 23:03:57 
 */
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/09 16:48:31
// Design Name: 
// Module Name: alu
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

//reg要有可以和ram交互的
module my_reg(
input [7:0] out,
input clk,
input [4:0] raddr1,
output reg [31:0] rdata1,
input [4:0] raddr2,
output reg [31:0] rdata2,
input we,
input [4:0] waddr,
input [31:0] wdata,
input rden1,
input rden2
);

reg [31:0] rf[31:0]; 
integer i=0;
initial begin
    for (i = 0; i < 32; i = i + 1) begin
        rf[i] = 32'h00000000;
    end
end




always @(posedge out[3]) begin
    if (rden1) begin
       rdata1 = rf[raddr1]; 
    end 
    if (rden2) begin
       rdata2 = rf[raddr2];
    end
end
always @(posedge clk) begin
    if (we)begin
        if(waddr==5'b00000) begin
            rf[waddr]<=32'h00000000;
        end
        else    
            rf[waddr] <= wdata;
    end
end


endmodule
