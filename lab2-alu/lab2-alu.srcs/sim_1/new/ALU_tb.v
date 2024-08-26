`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/27 17:50:47
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


module ALU_tb(

    );
    reg [10:0] op;
    reg [31:0] in0,in1;
    reg cin;
    wire [32:0] F;
    wire cout,zero;
    ALU alu(op,in0,in1,cin,cout,zero,F);
    initial
    begin
    //F=A 加 B
         op=4'b0000;        
         in0=32'd10;
         in1=32'd2;
         cin=0;
    //F=A 加 B 加 Cin          
    #20  op=4'd0001;   
         in0=32'd10;
         in1=32'd2;
         cin=1;
    //F=A 减 B    
    #20  op=4'b0010;        
         in0=32'd5;
         in1=32'd6;
         cin=0;
    //F=A 减 B 减 Cin
    #20  op=4'b0011;        
         in0=32'd5;
         in1=32'd3;
         cin=1;
    //F=B 减 A
    #20  op=4'b0100;        
         in0=32'd3;
         in1=32'd2;
         cin=0;
    //F= B 减 A 减 Cin
    #20  op=4'b0101;        
         in0=32'd4;
         in1=32'd5;
         cin=1;
    //F=A
    #20  op=4'b0110;        
         in0=32'b0010;
         in1=32'b0100;
         cin=0;

    //F=B
    #20  op=4'b0111;        
         in0=32'b101010;
         in1=32'd0;
         cin=0;

    //F=/A
    #20  op=4'b1000;        
         in0=32'd0;
         in1=32'b1011;
         cin=0;

    //F=/B
    #20  op=4'b1001;        
         in0=32'b1011;
         in1=32'b0;

         cin=0;
    //F=A+B
    #20  op=4'b1010;
         in0=32'b0011;
         in1=32'b0101;
         cin=0;

    //F=AB
    #20  op=4'b1011;
         in0=32'b1011;
         in1=32'b0111;
         cin=0;

    //F=A⊙B
    #20  op=4'b1100;
         in0=32'b1010;
         in1=32'b1000;
         cin=0;

     //F=A⊕B
    #20  op=4'b1101;
         in0=32'b1010;
         in1=32'b0101;
         cin=0;

      //F=/(AB)
    #20  op=4'b1110;
         in0=32'b1001;
         in1=32'b0110;
         cin=0;

      //F=0
    #20  op=4'b1111;
         in0=32'd4;
         in1=32'd8;
         cin=0;

    end
    
endmodule

