`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 20:04:53
// Design Name: 
// Module Name: write_back
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

//写回寄存器
module write_back(
    input [7:0] out,
    input clk,
    input select_for_writereg,//0是寄存器，1是存储器
    input [4:0] waddr,
    input [31:0] wdata,
    input wen,
    input [31:0] pc,
    input [31:0] data_sram_rdata,
    output reg [31:0] reg_debug_wb_rf_wdata
    );
// reg [4:0] raddr1=5'b00000;
// reg [4:0] raddr2=5'b00000;
// wire [31:0] rdata1;
// wire [31:0] rdata2;
// reg rden1=1'b0;
// reg rden2=1'b0;
reg [31:0] write_data;


// my_reg my_reg1(
//     .out(out),
//     .raddr1(raddr1),
//     .raddr2(raddr2),
//     .rdata1(rdata1),
//     .rdata2(rdata2),
//     .rden1(rden1),
//     .rden2(rden2),
//     .we(wen),
//     .waddr(waddr),
//     .wdata(write_data)
// );


always @(posedge out[7]) begin
        write_data=(select_for_writereg==1)?data_sram_rdata:wdata;
        reg_debug_wb_rf_wdata=write_data;
end




endmodule
