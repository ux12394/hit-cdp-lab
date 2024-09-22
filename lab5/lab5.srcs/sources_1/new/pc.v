/*
 * @Author: S.H.Y 
 * @Date: 2024-09-15 23:09:09 
 * @Last Modified by:   S.H.Y 
 * @Last Modified time: 2024-09-15 23:09:09 
 */
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/12 20:04:30
// Design Name: 
// Module Name: pc
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


module pc(
    input [7:0] out,
    input clk,
    output reg [31:0] pc,
    input reset,
    input select_for_pc,
    input [31:0] next_pc,
    output reg inst_sram_en,
    output reg [31:0] inst_sram_addr
    );
reg [31:0] npc;
initial begin
    pc=32'h00000000;
    npc=32'h00000000;
end

always @(posedge out[0]) begin
    inst_sram_en=1'b1;
    if(reset==1)begin
        pc=npc;
        npc=npc+32'h00000004;
        if (select_for_pc==1'b1) begin
            pc=next_pc;
            npc=next_pc+32'h00000004;
        end
    inst_sram_addr=pc;
    end
    else if (reset==1'b0) begin
        pc=32'h00000000;
        npc=32'h00000000;
    end
end
endmodule
