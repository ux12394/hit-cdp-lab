`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/31 22:31:55
// Design Name: 
// Module Name: ram
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


module ram (
input [1:0] choice,//选模式
input clk ,//时钟
input [15:0] ram_addr ,//ram读地址
input [31:0] ram_wdata,//ram写数据
input ram_wen ,//ram写使能
output [31:0] ram_rdata,//ram读数据
input [4:0] raddr1,//reg 读地址1
input [4:0] raddr2,//reg读地址2
output [31:0]rdata1,//reg读数据1
output [31:0]rdata2,//reg读数据2
input we,//reg使能
input [4:0] waddr,//reg写地址
input [31:0] wdata//reg写数据
);
reg [31:0] data1;
reg [31:0] data2;
block_ram block_ram (
.clka (clk ),
.wea (ram_wen ),
.addra(ram_addr ),
// .dina (ram_wdata ),
.dina (data1),
.douta(ram_rdata )
);

regfile_0 regfile(
.clk(clk),
.raddr1(raddr1),
.rdata1(rdata1),
.raddr2(raddr2),
.rdata2(rdata2),
.we(we),
.waddr(waddr),
.wdata(data2)
);

always @(*) begin
//reg to ram
        if (choice==2'b00) begin
            data1 = rdata1;
            data2 = wdata;
        end

        // ram to reg
        else if (choice==2'b01) begin
            data1 = ram_wdata;
            data2 = ram_rdata;
        end

        // nothing
        else begin
            data1 = ram_wdata;
            data2 = wdata;
        end
    end
endmodule