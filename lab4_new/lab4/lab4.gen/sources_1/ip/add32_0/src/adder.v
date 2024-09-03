`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/27 16:44:40
// Design Name: 
// Module Name: adder
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


//一位全加器
module adder(X,Y,Cin,F,Cout);

  input X,Y,Cin;
  output F,Cout;
  
  assign F = X ^ Y ^ Cin;
  assign Cout = (X ^ Y) & Cin | X & Y;
endmodule 

