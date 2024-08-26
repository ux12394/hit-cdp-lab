`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 21:26:14
// Design Name: 
// Module Name: regfile
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

`define REG_RANGE 31:0
`define ADDR_RANGE 4:0
`define DATA_RANGE 31:0

module regfile(
    input clk,
    input [`ADDR_RANGE]raddr1,
    input [`ADDR_RANGE]raddr2,
    input we,
    input [`ADDR_RANGE]waddr,
    input [`DATA_RANGE]wdata,
    output reg [`DATA_RANGE]rdata1,
    output reg [`DATA_RANGE]rdata2
    );

    // 定义寄存器堆
    // 注意：MIPS寄存器中R0寄存器数值永远为0
    reg [`DATA_RANGE] reg_file[`REG_RANGE];   

    // 读1（不需要时钟控制）
    // 要保证读取旧值
    always@(raddr1) begin
        if (raddr1==5'b00000) begin
            rdata1 <= {32{1'b0}};
        end
        else begin
            rdata1 <= reg_file[raddr1];
        end
    end
    // 读2（不需要时钟控制）
    always@(raddr2) begin
        if (raddr2==5'b00000) begin
            rdata2 <= {32{1'b0}};
        end
        else begin
            rdata2 <= reg_file[raddr2];
        end
    end

    // 写1
    always@(posedge clk or posedge we) begin
        if (we==1'b1 && waddr!=5'b00000) begin
            reg_file[waddr] = wdata;
        end
    end
endmodule
