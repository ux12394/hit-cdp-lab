/*
 * @Author: S.H.Y 
 * @Date: 2024-09-15 23:09:03 
 * @Last Modified by:   S.H.Y 
 * @Last Modified time: 2024-09-15 23:09:03 
 */
/*
 * @Author: S.H.Y 
 * @Date: 2024-09-09 23:03:49 
 * @Last Modified by: S.H.Y
 * @Last Modified time: 2024-09-09 23:10:22
 */
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/09 15:18:59
// Design Name: 
// Module Name: inst_decode
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


module inst_decoder(
    input[31:0]         inst,//处理器待执行的指令
    input [7:0]         out,               //时钟
    output reg          isR,//是否是r指令
    output reg          isI,//是否是I指令
    output reg          isJ,//是否是J指令
    output reg[15:0]    offset,//偏移
    output reg[4:0]     waddr,//指令要写回的寄存器
    output reg          rden1,//指令是否要读寄存器1
    output reg[4:0]     raddr1,//指令要读的寄存器1
    output reg          rden2,//指令是否要读寄存器2
    output reg[4:0]     raddr2,//指令要读的寄存器2
    output reg          alu_en,//指令的结果是否为ALU的输出
    output reg[4:0]     alu_card,//ALU的操作码
    output reg          mem_rd,//指令是否需要读存储器
    output reg          mem_wr,//指令是否需要写存储器
    output reg          jmp,//指令是否会直接修改PC
    output reg          invalid,//输入的指令无法识别
    output reg [25:0]   instr_index,
    output reg [4:0]    sa,
    output reg  select_for_writereg

);
//移位指令暂时没有写
parameter [5:0] ALU=6'b000000;
parameter [5:0] SW=6'b101011;
parameter [5:0] LW=6'b100011;
parameter [5:0] J=6'b000010;
parameter [5:0] CMP=6'b111110;
parameter [5:0] BBT=6'b111111;

parameter [5:0] ADD=6'b100000;
parameter [5:0] SLL = 6'b000000;
parameter [5:0] SUB=6'b100010;
parameter [5:0] AND=6'b100100;
parameter [5:0] OR=6'b100101;
parameter [5:0] XOR=6'b100110;
parameter [5:0] MOVZ=6'b001010;//条件移动



reg [4:0] rs;
reg [4:0] rt;
reg [4:0] rd;
reg [5:0] cal;//计算码
reg [5:0] op;//操作码
reg [4:0] base;


always @(posedge out[2]) begin
    op=inst[31:26];
    if(op==ALU)begin
        isR=1;
        isI=0;
        isJ=0;
        offset=16'b0;
        rs=inst[25:21];
        rt=inst[20:16];
        rd=inst[15:11];
        cal=inst[5:0];
        waddr<=rd;
        rden1<=1;
        raddr1<=rs;
        rden2<=1;
        raddr2<=rt;
        mem_rd<=0;
        mem_wr<=0;
        jmp<=0;
        select_for_writereg<=0;
        sa=5'b00000;
        //加法
        if(cal==ADD)begin
            alu_card=5'b00001;
            alu_en<=1;
            invalid<=0;
        end
        //减法
        else if(cal==SUB)begin
             alu_card=5'b00011;
             alu_en<=1;
             invalid<=0;
        end
        //与
        else if(cal==AND)begin
             alu_card=5'b01100;
             alu_en<=1;
             invalid<=0;
        end
        //或
        else if(cal==OR)begin
             alu_card=5'b01011;
             alu_en<=1;
             invalid<=0;
        end
        //异或
        else if (cal==XOR)begin
             alu_card=5'b01110;
             alu_en<=1;
             invalid<=0;
        end
        //条件移动
        else if (cal==MOVZ)begin
            alu_card=5'b01010;
            alu_en=1;
            invalid=0;
        end
        //移位
        else if (cal==SLL) begin
            alu_en=1;
            sa=inst[10:6];
            alu_card=5'b10000;//重新定义移位，反正也没什么用最后6位
            invalid=0;
        end
        else begin
            invalid=1;
        end
     end
     //存数
     else if (op==SW)begin
        isI=1;
        isJ=0;
        isR=0;
        base=inst[25:21];
        rt=inst[20:16];
        offset=inst[15:0];
        waddr<=5'b00000;
        rden1<=1;
        raddr1=base;
        rden2<=1;
        raddr2<=rt;
        alu_en<=0;
        alu_card<=5'b00000;
        mem_rd<=0;
        mem_wr<=1;
        jmp<=0;
        invalid<=0;
     end
     //取数
     else if (op==LW)begin
        isI=1;
        isJ=0;
        isR=0;
        base=inst[25:21];
        rt=inst[20:16];
        offset=inst[15:0];
        waddr<=rt;
        rden1<=1;
        raddr1<=base;
        rden2<=0;
        raddr2<=5'b00000;
        alu_en<=0;
        alu_card<=5'b00000;
        mem_rd<=1;
        mem_wr<=0;
        select_for_writereg<=1;
        jmp<=0;
        invalid<=0;
     end
     //跳转
     else if (op==J)begin
        isI=0;
        isR=0;
        isJ=1;
        instr_index=inst[25:0];
        waddr<=5'b00000;
        rden1<=0;
        raddr1<=5'b00000;
        rden2<=0;
        raddr2<=5'b00000;
        alu_en<=0;
        alu_card<=5'b00000;
        mem_rd<=0;
        mem_wr<=0;
        jmp<=1'b1;
        invalid<=0;
     end
     else if (op==CMP) begin//比较
        isI=0;
        isR=1;
        isJ=0;
        rs=inst[25:21];
        rt=inst[20:16];
        rd=inst[15:11];
        waddr<=rd;
        rden1<=1;
        raddr1<=rs;
        rden2<=1;
        raddr2<=rt;
        alu_en<=0;
        mem_rd<=0;
        mem_wr<=0;
        jmp<=0;
        invalid=0;
        alu_card=5'b00000;
        select_for_writereg<=0;
     end
     //条件跳转
     else if (op==BBT) begin
        isI=1;
        isR=0;
        isJ=0;
        rs=inst[25:21];
        base=inst[20:16];
        offset=inst[15:0];
        rden1<=1;
        raddr1<=rs;
        rden2<=0;
        raddr2<=base;
        jmp=1'b1;
        alu_en=0;
        alu_card=5'b00000;
        mem_rd=1'b0;
        mem_wr=1'b0;
        invalid<=0;
        waddr<=5'b00000;
     end
     //不合格指令
     else begin
        isI=0;
        isR=0;
        isJ=0;
         invalid<=1;
         waddr<=5'b00000;
         rden1<=0;
         raddr1<=5'b00000;
         rden2<=0;
         raddr2<=5'b00000;
         alu_en<=0;
         alu_card<=5'b00000;
         mem_rd<=0;
         mem_wr<=0;
         jmp<=0;
         invalid=0;
         alu_card=5'b00000;
     end
end

endmodule
