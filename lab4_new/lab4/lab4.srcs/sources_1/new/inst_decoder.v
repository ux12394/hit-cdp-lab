`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/02 14:06:37
// Design Name: 
// Module Name: inst_decoder
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
    input[31:0]     inst,
    output  reg       wen,
    output reg[4:0]     waddr,
    output reg         rden1,
    output reg[4:0]     raddr1,
    output reg          rden2,
    output reg[4:0]     raddr2,
    output reg          alu_en,
    output reg[4:0]     alu_card,
    output reg         mem_rd,
    output reg         mem_wr,
    output reg        jmp,
    output reg      invalid
);

reg [4:0]rs;
reg [4:0]rt;
reg [4:0]rd;
reg [10:0] cal;//计算码
reg [5:0]op;//操作码
reg [4:0] base;
reg [15:0] offset;
reg [25:0] instr_index;
always@(*)begin
    op=inst[31:26];
    if(op==6'b000000)begin
        rs=inst[25:21];
        rt=inst[20:16];
        rd=inst[15:11];
        cal=inst[10:0];
        wen<=1;
        waddr<=rd;
        rden1<=1;
        raddr1<=rs;
        rden2<=1;
        raddr2<=rt;
        alu_en<=1;
        mem_rd<=0;
        mem_wr<=0;
        jmp<=0;
        //加法
        if(cal==11'b00000100000)begin
            alu_card=5'b00001;
            invalid<=0;
        end
        //减法
        else if(cal==11'b00000100010)begin
             alu_card=5'b00011;
             invalid<=0;
        end
        //与
        else if(cal==11'b00000100100)begin
             alu_card=5'b01100;
             invalid<=0;
        end
        //或
        else if(cal==11'b00000100101)begin
             alu_card=5'b01011;
             invalid<=0;
        end
        //异或
        else if (cal==11'b00000100110)begin
             alu_card=5'b01110;
             invalid<=0;
        end
        else begin
            invalid<=1;
        end
     end
     //存数
     else if (op==6'b101011)begin
        wen<=0;
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
     else if (op==6'b100011)begin
        wen<=1;
        base=inst[25:21];
        rt=inst[20:16];
        offset=inst[15:0];
        waddr=rt;
        rden1<=1;
        raddr1=base;
        rden2<=0;
        raddr2<=5'b00000;
        alu_en<=0;
        alu_card<=5'b00000;
        mem_rd<=1;
        mem_wr<=0;
        jmp<=0;
        invalid<=0;
     end
     //跳转
     else if (op==6'b000010)begin
         wen<=0;
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
         jmp<=1;
         invalid<=0;
     end
     else begin
         invalid<=1;
         wen<=0;
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
         invalid<=0;
     end
end 
endmodule
