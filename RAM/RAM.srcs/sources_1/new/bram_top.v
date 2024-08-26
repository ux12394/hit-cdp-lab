`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 17:53:30
// Design Name: 
// Module Name: bram_top
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
`define REG_NUM_RANGE 4:0
`define ADDR_RANGE 15:0
`define DATA_RANGE 31:0

module bram_top (
    input  clk,
    
    input [1:0]choice,

    // 同步RAM
    input [`ADDR_RANGE]ram_addr,
    input [`DATA_RANGE]ram_wdata,
    input ram_wen,
    output [`DATA_RANGE]ram_rdata,

    // 寄存器堆
    // 写按时钟, 读不按时钟
    input [`REG_NUM_RANGE]raddr1,
    input [`REG_NUM_RANGE]raddr2,
    input we,
    input [`REG_NUM_RANGE]waddr,
    input [`DATA_RANGE]wdata,
    output [`DATA_RANGE]rdata1,
    output [`DATA_RANGE]rdata2

    );

    reg [`DATA_RANGE]data1;
    reg [`DATA_RANGE]data2;

    block_ram block_ram(
        .clka(clk),
        .wea(ram_wen),
        .addra(ram_addr),
        .dina(data1),
        .douta(ram_rdata) 
    );

    regfile_0 my_regfile(
        .clk(clk),
        .raddr1(raddr1),
        .raddr2(raddr2),
        .we(we),
        .waddr(waddr),
        .wdata(data2),
        .rdata1(rdata1),
        .rdata2(rdata2)
    );

    // assign ram_wdata = data1;
    // assign wdata = data2;

    always @(*) begin
        if (choice==2'b00) begin
            data1 = ram_wdata;
            data2 = wdata;
        end

        // 寄存器向RAM
        else if (choice==2'b01) begin
            data1 = rdata1;
            data2 = wdata;
        end

        // RAM向寄存器
        else begin
            data1 = ram_wdata;
            data2 = ram_rdata;
        end
    end

endmodule
