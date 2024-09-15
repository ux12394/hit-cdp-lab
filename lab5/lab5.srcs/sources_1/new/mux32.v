`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 21:42:34
// Design Name: 
// Module Name: mux32
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


module mux32(
    input  [31:0] input_data0,
    input  [31:0] input_data1,
    input         select,
    output [31:0] output_data
);
	
	assign output_data = (select == 1)? input_data1 : input_data0;


endmodule
