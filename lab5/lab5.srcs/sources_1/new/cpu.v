/*
 * @Author: S.H.Y 
 * @Date: 2024-09-09 23:03:47 
 * @Last Modified by: S.H.Y
 * @Last Modified time: 2024-09-09 23:13:19
 */
/*
 * @Author: S.H.Y 
 * @Date: 2024-09-09 12:05:14 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2024-09-09 12:06:35
 */

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/09 11:51:16
// Design Name: 
// Module Name: cpu
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


module cpu(
    input           clk,                // 时钟信号
    input           resetn,             // 低有效复位信号

    output          inst_sram_en,       // 指令存储器读使能
    output   [31:0]  inst_sram_addr,     // 指令存储器读地址
    input   [31:0]  inst_sram_rdata,    // 指令存储器读出的数据，指令
//16×1的存储器
    output          data_sram_en,       // 数据存储器端口读/写使能
    output  [3:0]   data_sram_wen,      // 数据存储器写使能      
    output  [31:0]  data_sram_addr,     // 数据存储器读/写地址
    output  [31:0]  data_sram_wdata,    // 写入数据存储器的数据
    input   [31:0]  data_sram_rdata,    // 数据存储器读出的数据，数据

    // 供自动测试环境进行CPU正确性检查
    output reg [31:0]  debug_wb_pc,        // 当前正在执行指令的PC
    output           debug_wb_rf_wen,    // 当前通用寄存器组的写使能信号
    output reg  [4:0]   debug_wb_rf_wnum,   // 当前通用寄存器组写回的寄存器编号
    output reg  [31:0]  debug_wb_rf_wdata   // 当前指令需要写回的数据
);

wire [31:0] pc;//此指令地址
wire wen;//指令是否写回寄存器
wire [4:0] waddr;//指令要写回的寄存器//指令要写回的寄存器
wire rden1;//指令是否要读寄存器1
wire [4:0] raddr1;//指令要读的寄存器1
wire rden2;//指令是否要读寄存器2
wire [4:0] raddr2;//指令要读的寄存器2
wire alu_en;//指令的结果是否为ALU的输出
wire [4:0] alu_card;//ALU的操作码
wire mem_rd;//指令是否需要读存储器
wire mem_wr;//指令是否需要写存储器
wire jmp;//指令是否会直接修改PC
wire invalid;//输入的指令无法识别
wire [31:0] instruction;
wire [31:0] npc;//下一个指令地址
wire isR;//是否是R型指令
wire isI;//是否是I型指令
wire isJ;//是否是J型指令
wire [15:0] offset;
wire [31:0] rdata1;
wire [31:0] rdata2;
wire [25:0] instr_index;
wire [31:0] wdata;
wire [7:0]  out;
wire select_for_writereg;
reg reg_debug_wb_rf_wen;
wire select_for_pc;//默认为0，自增4;1时要用npc改变pc值
wire [4:0] sa;

// 按照时序逻辑编写
// 取指
design_Beat my_beat(
    .clk(clk),
    .rst(resetn),
    .out(out)
);

initial begin
    reg_debug_wb_rf_wen = 1'b0;
end

assign debug_wb_rf_wen = reg_debug_wb_rf_wen;
always @(posedge out[0]) begin
    reg_debug_wb_rf_wen=1'b0;
end


pc my_pc(
    .clk(clk),
    .out(out),
    .pc(pc),
    .select_for_pc(select_for_pc),
    .inst_sram_en(inst_sram_en),
    .inst_sram_addr(inst_sram_addr),
    .reset(resetn),
    .next_pc(npc)
);

// 译码
inst_decoder my_decode(
    .out(out),
    .clk(clk),
    .inst(inst_sram_rdata),
    .wen(wen),
    .isI(isI),
    .isJ(isJ),
    .isR(isR),
    .offset(offset),
    .waddr(waddr),
    .rden1(rden1),
    .raddr1(raddr1),
    .rden2(rden2),
    .raddr2(raddr2),
    .alu_en(alu_en),
    .alu_card(alu_card),
    .mem_rd(mem_rd),
    .mem_wr(mem_wr),
    .jmp(jmp),
    .instr_index(instr_index),
    .invalid(invalid),
    .sa(sa),
    .select_for_writereg(select_for_writereg)
);


my_reg reg1(
    .out(out),
    .clk(clk),
    .raddr1(raddr1),
    .raddr2(raddr2),
    .rden1(rden1),
    .rden2(rden2),
    .rdata1(rdata1),
    .rdata2(rdata2),
    .we(reg_debug_wb_rf_wen),
    .wdata(debug_wb_rf_wdata),
    .waddr(debug_wb_rf_wnum)
);


//执行
CU my_cu(
    .out(out),
    .pc(pc),
    .offset(offset),
    .isR(isR),
    .isI(isI),
    .isJ(isJ),
    .wen(wen),
    .sa(sa),
    .raddr1(raddr1),
    .raddr2(raddr2),
    .alu_en(alu_en),
    .select_for_pc(select_for_pc),
    .alu_card(alu_card),
    .mem_rd(mem_rd),
    .mem_wr(mem_wr),
    .jmp(jmp),
    .rdata1(rdata1),
    .rdata2(rdata2),
    .instr_index(instr_index),
    .wdata(wdata),
    .npc_new(npc)
);

//访存，写回，写回寄存器和写回存储器一起
access my_access(
    .out(out),
    .wdata(wdata),
    .clk(clk),
    .basedata(rdata1),
    .offset(offset),
    .mem_rd(mem_rd),
    .mem_wr(mem_wr),
    .data_sram_en(data_sram_en),
    .data_sram_wen(data_sram_wen),
    .data_sram_addr(data_sram_addr),
    .data_sram_wdata(data_sram_wdata)
);


// write_back my_write_back(
//     .out(out),
//     .clk(clk),
//     .select_for_writereg(select_for_writereg),
//     .waddr(waddr),
//     .wdata(wdata),
//     .wen(wen),
//     .pc(pc),
//     .data_sram_rdata(data_sram_rdata),
//     .reg_debug_wb_rf_wdata(reg_debug_wb_rf_wdata)
// );
always @(posedge out[7]) begin
    reg_debug_wb_rf_wen=wen;
    debug_wb_rf_wnum=waddr;
    debug_wb_rf_wdata=(select_for_writereg==1)?data_sram_rdata:wdata;
    debug_wb_pc=pc;
end
endmodule
