`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/27 16:39:23
// Design Name: 
// Module Name: add32_tb
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


`timescale  1ns/1ns
module add32_tb;

  reg [32:1] A;
  reg [32:1] B;
  reg Cin;
  wire [32:1] S;
  wire c32;
 
  add32 add32(
        .A(A),
		.B(B),
		.Cin(Cin),
        .S(S),
		.C32(c32)
		 );
		 
  initial begin
     A = 32'h00000000; B = 32'h00000000;Cin=1'd0;
	 
	  #5; A = 32'hffffffff;  B = 32'h7fffffff;Cin=1'd1;
	  #5; A = 32'd4;  B = 32'd5;Cin=1'd1;
	    
  end
endmodule 


