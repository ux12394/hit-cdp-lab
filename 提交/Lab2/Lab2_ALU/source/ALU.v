`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/27 17:01:02
// Design Name: 
// Module Name: ALU
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


module ALU(
op,in0,in1,cin,cout,zero,F
    );
    input [31:0] in0,in1;
    input [3:0] op;
    input cin;
    output reg[32:0] F;
    output reg cout,zero;
    reg[31:0] temp;
always@(*)
begin
    case(op)
        //F=A 加 B
        4'b0000:
            begin
            F=in0+in1;
            cout=(F[32]==1)?1:0;
            zero=(F==0)?1:0;
            end
        //F=A 加 B 加 Cin
        4'b0001:
            begin
            temp=in1+cin;
            F=in0+temp;
            zero=(F==0)?1:0;
            cout=(F[32]==1)?1:0;
            end
        //F=A 减 B
        4'b0010:
            begin
            F=in0-in1;
            zero=(in0==in1)?1:0;
            cout=(F[32]==1)?1:0;
            end
        //F=A 减 B 减 Cin
        4'b0011:
            begin
            temp=in1+cin;
            F=in0-temp;
            zero=(F==0)?1:0;
            cout=(F[32]==1)?1:0;
            end
        //and
        4'b1011:
            begin
            F=in0&in1;
            zero=(F==0)?1:0;
            cout=0;
            end
        //or
        4'b1010:
            begin
            F=in0|in1;
            zero=(F==0)?1:0;
            cout=0;
            end
        //xor
        4'b1101:
            begin
            F=in0^in1;
            zero=(F==0)?1:0;
            cout=0;
            end
        //not in0
        4'b1000:
            begin
            F=!in0;
            zero=(F==0)?1:0;
            cout=0;
            end
        //not in1
        4'b1001:
            begin
            F=!in1;
            zero=(F==0)?1:0;
            cout=0;
            end
            //同或   
        4'b1100:
            begin
             F=(in1^~in0);
             zero=(F==0)?1:0;
             cout=0;
            end
            
        4'b1110:
            begin
                F=!(in0&in1);
                zero=(F==0)?1:0;
                cout=0;
            end
         4'b1111:
            begin
                F=0;
                zero=(F==0)?1:0;
                cout=0;
            end
           //B-A u
         4'b0100:
            begin
                F=in1-in0;
                zero=(F==0)?1:0;
                cout=(F[32]==1)?1:0;
            end
           //B-A-cin 
         4'b0101:
            begin
                temp=in0+cin;
                F=in1-temp;
                zero=(in0==in1)?1:0;
                cout=(F[32]==1)?1:0;
            end
            //A
         4'b0110:
            begin
                F=in0;
                zero=(in0==0)?1:0;
                cout=0;

            end 
            //B
         4'b0111:
            begin
                F=in1;
                zero=(in1==0)?1:0;
                cout=0;
            end           
    endcase
end
endmodule

