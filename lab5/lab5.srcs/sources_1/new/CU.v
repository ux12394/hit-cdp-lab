/*
 * @Author: S.H.Y 
 * @Date: 2024-09-15 23:09:14 
 * @Last Modified by:   S.H.Y 
 * @Last Modified time: 2024-09-15 23:09:14 
 */
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/12 20:15:24
// Design Name: 
// Module Name: CU
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

//执行代码
module CU(
    input [7:0] out,
    input [15:0] offset,
    input [31:0] pc,
    input isR,
    input isI,
    input isJ,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input alu_en,
    input [4:0] alu_card,
    input mem_rd,
    input mem_wr,
    input jmp,
    input [4:0] sa,
    input [31:0] rdata1,
    input [31:0] rdata2,
    input [25:0] instr_index,
    output reg [31:0] wdata,
    output reg wen,
    output reg [31:0] npc_new,
    output reg select_for_pc
    );

parameter [4:0] ADD=5'b00001;
parameter [4:0] SUB=5'b00011;
parameter [4:0] AND=5'b01100;
parameter [4:0] OR=5'b01011;
parameter [4:0] XOR=5'b01110;
parameter [4:0] MOVZ=5'b01010;
parameter [4:0] SLL =5'b10000;
    

reg [31:0] rdata1_unsigned;
reg [31:0] rdata2_unsigned;
reg [31:0] npc=32'h00000000;
reg [4:0]  reg_addr2;
reg [31:0] reg_rdata1;

    always @(posedge out[4]) begin
        rdata1_unsigned=$unsigned(rdata1);
        rdata2_unsigned=$unsigned(rdata2);
        wdata=32'h00000000;
        //R型指令
        //可能是ALU指令，还有条件转移，比较
        if (isR) begin
            select_for_pc=1'b0;
            //先解决ALU和条件转移计算问题
            if (alu_en) begin
                if (alu_card==ADD) begin
                    wdata<=rdata1+rdata2;
                    wen=1'b1;
                end
                else if (alu_card==SUB) begin
                    wdata=rdata1-rdata2;
                    wen=1'b1;
                end
                else if (alu_card==AND) begin
                    wdata=rdata1&rdata2;
                    wen=1'b1;
                end
                else if (alu_card==OR) begin
                    wdata=rdata1|rdata2;
                    wen=1'b1;
                end
                else if(alu_card==XOR) begin
                    wdata=rdata1^rdata2;
                    wen=1'b1;
                end
                else if (alu_card==MOVZ) begin
                    if (rdata2==0) begin
                        wdata=rdata1;
                        wen=1'b1;
                    end
                    else
                        wen=1'b0;
                end
                else if (alu_card==SLL) begin
                    wdata=rdata2<<sa;
                    wen=1'b1;
                end
            end
            //比较
            else begin
                wdata[0]=(rdata1==rdata2)?1:0;
                wdata[2]=(rdata1_unsigned<rdata2_unsigned)?1:0;
                wdata[1]=(rdata1<rdata2)?1:0;
                wdata[4]=(rdata1_unsigned<=rdata2_unsigned)?1:0;
                wdata[3]=(rdata1<=rdata2)?1:0;
                wdata[9:5]=~wdata[4:0];
                wdata={22'b0,wdata[9:0]};
                wen=1'b1;
            end   


        end
        //I型指令
        else if (isI) begin
            //存数，取数,条件跳转
            if (jmp) begin
                //条件跳转
                reg_addr2=raddr2;
                reg_rdata1=rdata1;
                if (reg_rdata1[reg_addr2]==1'b1) begin
                    npc=pc+32'h00000004;
                    npc_new=({{16{offset[15]}}, offset[15:0]} << 2)+npc;
                    wen=1'b0;
                    select_for_pc=1'b1;
                end
                else
                    select_for_pc=1'b0;
            end
            else if (mem_rd) begin
                wen=1'b1;
                select_for_pc=1'b0;
            end
            else if (mem_wr) begin
                wen=1'b0;
                wdata=rdata2;
                select_for_pc=1'b0;
            end
            //取数，存数在访存时执行
        end
        //J型指令
        else if (isJ) begin
            //跳转
            npc=pc+32'h00000004;
            npc_new={npc[31:28],(instr_index<<2)};
            wen=1'b0;
            select_for_pc=1'b1;
         end
    end

endmodule
