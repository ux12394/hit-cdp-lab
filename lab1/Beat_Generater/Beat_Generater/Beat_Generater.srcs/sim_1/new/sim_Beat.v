`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/26 15:20:20
// Design Name: 
// Module Name: sim_Beat
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


module sim_Beat();
    reg rst;
    reg clk;
    wire [3:0]out;
    
    initial begin
        clk = 0;
        rst = 0;
    end
     
    design_Beat beat(
        .clk(clk),
        .rst(rst),
        .out(out)
    );
    
endmodule
