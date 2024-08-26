`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 17:57:23
// Design Name: 
// Module Name: tb_bram
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

module tb_bram();
    reg clk;

    reg [1:0]choice;

    reg [`ADDR_RANGE]ram_addr;    // 像写入数据的地址
    reg [`DATA_RANGE]ram_wdata;   // 想写入RAM的数据
    reg ram_wen;                  // RAM写使能

    reg [`REG_NUM_RANGE]raddr1;   // 读取地址1
    reg [`REG_NUM_RANGE]raddr2;   // 读取地址2
    reg we;                       // 寄存器堆写使能
    reg [`REG_NUM_RANGE]waddr;    // 写地址
    reg [`DATA_RANGE]wdata;       // 写的数据
    
    wire [`DATA_RANGE]ram_rdata;  // 从RAM中读取的数据
    wire [`DATA_RANGE]rdata1;     // 从寄存器堆地址1读出的数据
    wire [`DATA_RANGE]rdata2;     // 从寄存器堆地址2读出的数据

    integer i;

    initial begin
        clk <= 1'b0;
        forever begin
            #5 clk <= ~clk;
        end
    end

    initial begin
        ram_wen = 1'b0;
        we = 1'b0;
        choice = 2'b00;

        // 向RAM中写入数据
        // 从此处也可以看出写优先, 读取的是写入的值
        ram_wen = 1'b1;
        ram_addr = {32{1'b0}};
        ram_wdata = 0;
        for (i = 0; i < 32; i = i + 1) begin
            ram_addr = ram_addr + 1;
            ram_wdata = ram_wdata + 1;
            #10;
        end
        ram_wen = 1'b0;

        #50;

        // 从RAM中读取数据
        ram_addr = {32{1'b0}};
        for (i = 0; i < 32; i = i + 1) begin
            ram_addr = ram_addr + 1;
            #10;
        end
        ram_addr = 1;

        #50;

        // 从RAM中读取数据写入寄存器堆
        choice = 2'b10;
        we = 1'b1;
        waddr = 5'b00000;
        for (i = 0; i < 32; i = i + 1) begin
            // wdata = ram_rdata;
            waddr = waddr + 1;
            ram_addr = ram_addr + 1;
            #10;
        end
        we = 1'b0;
        choice = 2'b00;

        #50;

        // 从寄存器堆中读取数据（检查是否写入正确）
        raddr1 = 5'b00000;
        for (i = 0; i < 32; i = i + 1) begin
            raddr1 = raddr1 + 1;
            #10;
        end

        // 改变寄存器堆中数据
        we = 1'b1;
        waddr = 5'b00000;
        for (i = 0; i < 32; i = i + 1) begin
            wdata = 2**32 - i - 1;
            waddr = waddr + 1;
            #10;
        end
        we = 1'b0;

        #50;

        // 从寄存器堆中读取数据写入RAM
        choice = 2'b01;
        ram_wen = 1'b1;
        ram_addr = {32{1'b0}};
        raddr1 = 5'b00000;
        for (i = 0; i < 32; i = i + 1) begin
            // ram_wdata = rdata1;
            ram_addr = ram_addr + 1;
            raddr1 = raddr1 + 1;
            #10;
        end
        ram_wen = 1'b0;
        choice = 2'b00;

        #50;

        // 从RAM中读取数据
        ram_addr = {32{1'b0}};
        for (i = 0; i < 32; i = i + 1) begin
            ram_addr = ram_addr + 1;
            #10;
        end

    end

    bram_top block_ram (
        .clk(clk),
        .choice(choice),
        .ram_wen(ram_wen),
        .ram_addr(ram_addr),
        .ram_wdata(ram_wdata),
        .ram_rdata(ram_rdata),

        .raddr1(raddr1),
        .raddr2(raddr2),
        .we(we),
        .waddr(waddr),
        .wdata(wdata),
        .rdata1(rdata1),
        .rdata2(rdata2)
    );

endmodule
