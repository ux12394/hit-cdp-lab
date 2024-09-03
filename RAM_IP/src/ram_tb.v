`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/31 22:35:05
// Design Name: 
// Module Name: ram_tb
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


module ram_tb();
reg [1:0] choice;

reg         clk;
reg         ram_wen;
reg  [15:0] ram_addr;
reg  [31:0] ram_wdata;
reg  [4:0]  raddr1;
reg [4:0]raddr2;
wire [31:0]rdata1;
wire [31:0]rdata2;
reg we;
reg [4:0] waddr;
reg [31:0] wdata;
wire [31:0] ram_rdata;

ram u_ram_top(
    .clk      (clk       ),
    .choice(choice),
    .ram_wen  (ram_wen   ),
    .ram_addr (ram_addr  ),
    .ram_wdata(ram_wdata ),
    .ram_rdata(ram_rdata ),
    .raddr1(raddr1),
    .rdata1(rdata1),
    .rdata2(rdata2),
    .raddr2(raddr2),
    .we(we),
    .waddr(waddr),
    .wdata(wdata)
);
integer i;
initial 
    begin
        clk <= 1'b1;
        forever begin
                #5 clk = ~clk;
        end
    end

initial begin
//向ram写数据
        choice=2'b11;
        we=1'b0;
        ram_wen = 1'b1;
        raddr1=5'b00000;
        raddr2=5'b00000;
        ram_addr = 16'b0000000000000000;
        ram_wdata = 32'b00000000000000000000000000000000;
        for(i=0;i<32;i=i+1)begin
               ram_addr=1+ram_addr;
               ram_wdata=1+ram_wdata;
               #10;
        end
        ram_wen = 1'b0;
         #50;
	
        //从ram读数据
        choice=2'b11;
        we=1'b0;
        ram_wen=1'b0;
        ram_addr = 16'b0000000000000000;
        for(i=0;i<32;i=i+1)begin
           ram_addr=ram_addr+1;
           #10;
        end
         #50;
        //从ram读数据写入reg堆
        choice=2'b01;
        we=1'b1;
        ram_wen=1'b0;
        ram_addr = 16'b0000000000000000;
        waddr=5'b00000;
        for(i=0;i<32;i=i+1)begin
           ram_addr=ram_addr+1;
           waddr=waddr+1;
           #10;
        end
         #50;
	
        //修改reg数据
        choice=2'b11;
        we=1'b1;
        waddr=5'b00000;
        for(i=0;i<32;i=i+1)begin
           waddr=waddr+1;
           wdata=i*2;
           #10;
        end
         #50;
	   //reg to ram
        choice=2'b00;
        ram_wen=1'b1;
        we=1'b0;
        raddr1=5'b00000;
        ram_addr = 16'b0000000000000000;
        for(i=0;i<32;i=i+1)begin
           ram_addr=ram_addr+1;
           raddr1=raddr1+1;
           #10;
        end
         #50;
        //读出ram
        choice=2'b11;
        ram_wen=1'b0;
        we=1'b0;
        ram_addr = 16'b0000000000000000;
        for(i=0;i<32;i=i+1)begin
           ram_addr=ram_addr+1;
           #10;
        end
end

endmodule
