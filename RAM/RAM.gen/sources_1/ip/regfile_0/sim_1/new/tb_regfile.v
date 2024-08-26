`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 21:45:07
// Design Name: 
// Module Name: tb_regfile
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

module tb_regfile();
    reg clk;
    reg [`ADDR_RANGE]raddr1;
    reg [`ADDR_RANGE]raddr2;
    reg we;
    reg [`ADDR_RANGE]waddr;
    reg [`DATA_RANGE]wdata;

    wire [`DATA_RANGE]rdata1;
    wire [`DATA_RANGE]rdata2;

    integer i;

    initial begin
        clk = 1'b0;
        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        // 写操作
        we = 1'b1;
        waddr = 5'b00000;
        wdata = 2**20 - 1;
        for (i = 0; i < 32; i = i + 1) begin
            waddr = waddr + 1;
            wdata = wdata - 1;
            #10;
        end

        #100;

        // 读操作
        we = 1'b0;
        raddr1 = 5'b00000;
        raddr2 = 5'b00001;
        for (i = 0; i < 32; i = i + 1) begin
            raddr1 = raddr1 + 1;
            raddr2 = raddr2 + 1;
            #10;
        end

        #100;

        // 同时读写（检查是否读取旧值）
        we = 1'b1;
        waddr = 5'b00001;
        wdata = 2**32 - 1;
        raddr1 = 5'b00000;
        raddr2 = 5'b00001;
        for (i = 0; i < 32; i = i + 1) begin
            raddr1 = raddr1 + 1;
            raddr2 = raddr2 + 1;
            waddr = waddr + 1;
            wdata = wdata - 1;
            #10;
        end
    end

    regfile reg_file1(
        .clk(clk),
        .raddr1(raddr1),
        .raddr2(raddr2),
        .we(we),
        .waddr(waddr),
        .wdata(wdata),
        .rdata1(rdata1),
        .rdata2(rdata2)
    );

endmodule
