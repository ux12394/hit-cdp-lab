`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 21:20:29
// Design Name: 
// Module Name: access
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

//访存,向存储器写
module access(
    input [31:0] wdata,
    input clk,
    input [31:0] basedata,
    input [15:0] offset,
    input mem_rd,
    input mem_wr,
    input [7:0] out,
    output reg          data_sram_en,       // 数据存储器端口读
    output reg[3:0]     data_sram_wen,      // 数据存储器写使能      
    output reg[31:0]    data_sram_addr,     // 数据存储器读/写地址
    output reg[31:0]    data_sram_wdata    // 写入数据存储器的数据
    );


always @(posedge out[5]) begin
    //读取
    if (mem_rd) begin
        data_sram_en=1'b1;
        data_sram_wen=4'b0000;
        data_sram_addr=basedata+offset;
        data_sram_wdata=32'h00000000;
    end
    //写回存储器
    else if (mem_wr) begin
        data_sram_en=1'b1;
        data_sram_wen=4'b1111;
        data_sram_addr=basedata+offset;
        data_sram_wdata=wdata;
    end
end
endmodule
