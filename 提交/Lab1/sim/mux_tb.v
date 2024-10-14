`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/26 15:28:38
// Design Name: 
// Module Name: mux_tb
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



module mux_tb();
    reg s_a;
    reg s_b;
    reg s_sel;
    wire out;
 
    mux mux(                     //例化
        .a(s_a),
        .b(s_b),
        .sel(s_sel),
        .out(out)
    );
 
    initial begin
        s_a = 0;s_b = 0;s_sel = 0;
        #200;
        s_a = 1;s_b = 0;s_sel = 0;
        #200;       
        s_a = 0;s_b = 1;s_sel = 0;
        #200;   
        s_a = 1;s_b = 1;s_sel = 0;
        #200;    
        s_a = 0;s_b = 0;s_sel = 1;
        #200;
        s_a = 1;s_b = 0;s_sel = 1;
        #200;       
        s_a = 0;s_b = 1;s_sel = 1;
        #200;   
        s_a = 1;s_b = 1;s_sel = 1;
        #200; 
        s_a = 1;s_b = 0;s_sel = 1;
        #200; 
    end
 
endmodule
