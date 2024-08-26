`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/28 14:35:13
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
reg [4:0] Card;
reg [31:0] A,B;
reg Cin;
wire [31:0] F;
wire Cout,Zero;

ALU alu(A,B,Cin,Card,F,Cout,Zero);
initial
begin
         Card=5'b00001;        
         A=32'd10;
         B=32'd2;
         Cin=0;
    #20  Card=5'd00010;   
         A=32'd10;
         B=32'd2;
         Cin=1;
    //F=A 减 B    
    #20  Card=5'd00011;   
         A=32'd10;
         B=32'd2;
         Cin=1;
    //F=A 减 B 减 Cin
    #20  Card=5'd00100;   
         A=32'd10;
         B=32'd2;
         Cin=1;
    //F=B 减 A
    #20  Card=5'd00101;   
         A=32'd10;
         B=32'd2;
         Cin=0;
    //F= B 减 A 减 Cin
    #20  Card=5'd00110;   
         A=32'd10;
         B=32'd2;
         Cin=1;
    //F=A
    #20  Card=5'd00111;   
         A=32'd10;
         B=32'd2;
         Cin=0;

    //F=B
    #20  Card=5'd01000;   
         A=32'd10;
         B=32'd2;
         Cin=0;

    //F=/A
    #20  Card=5'd01001;   
         A=32'd10;
         B=32'd2;
         Cin=0;

    //F=/B
    #20  Card=5'd01010;   
         A=32'd10;
         B=32'd2;
         Cin=0;
    //F=A+B
    #20  Card=5'd01011;   
         A=32'd10;
         B=32'd2;
         Cin=0;

    //F=AB
    #20  Card=5'd01100;   
         A=32'd10;
         B=32'd2;
         Cin=0;

    //F=A⊙B
    #20  Card=5'd01101;   
         A=32'd10;
         B=32'd2;
         Cin=0;

     //F=A⊕B
    #20  Card=5'd01110;   
         A=32'd10;
         B=32'd2;
         Cin=0;

      //F=/(AB)
    #20  Card=5'd01111;   
         A=32'd10;
         B=32'd2;
         Cin=0;

      //F=0
    #20  Card=5'd10000;   
         A=32'd10;
         B=32'd2;
         Cin=0;
end

endmodule
