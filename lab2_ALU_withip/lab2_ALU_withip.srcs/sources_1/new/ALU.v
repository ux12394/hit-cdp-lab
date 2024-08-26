`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/28 14:28:57
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


`define add 5'b00001
`define add_Cin 5'b00010
`define sub 5'b00011
`define sub_Cin 5'b00100
`define sub_reverse 5'b00101
`define sub_reverse_Cin 5'b00110
`define equal_A 5'b00111
`define equal_B 5'b01000
`define neg_A 5'b01001
`define neg_B 5'b01010
`define OR 5'b01011
`define AND 5'b01100
`define XNOR 5'b01101
`define XOR 5'b01110
`define neg_AND 5'b01111
`define equal_zero 5'b10000

module ALU(
    input [31:0]A,
    input [31:0]B,
    input Cin,
    input [4:0]Card,
    output reg [31:0]F,
    output reg Cout,
    output reg Zero
    );

    reg [4:0]Choose;
    wire [31:0]result1;
    wire [31:0]result2;
    wire Cout1;
    wire Cout2;
    
    always @(*) begin

        Choose = Card;

        case(Choose)
            `add: begin
                assign F = result1;
                assign Cout = Cout1;
            end

            `add_Cin: begin
                assign F = result2;
                assign Cout = Cout2;
            end 

            `sub: assign F = A - B;
            `sub_Cin: assign F = A - B - Cin;
            `sub_reverse: assign F = B - A;
            `sub_reverse_Cin: assign F = B - A - Cin;
            `equal_A: assign F = A;
            `equal_B: assign F = B;
            `neg_A: assign F = ~A;
            `neg_B: assign F = ~B;
            `OR: assign F = A | B;
            `AND: assign F = A & B;
            `XNOR: assign F = A - B;
            `XOR: assign F = A ^ B;
            `neg_AND: assign F = ~(A & B);
            `equal_zero: assign F = 32'b0;

            default: assign F = 2**32 - 1;
        endcase

        if (!F) begin
            assign Zero = 1;
        end
        else begin
            assign Zero = 0;
        end

    end

    add32_0 adder1(
        .A(A),
        .B(B),
        .Cin(1'b0),
        .S(result1),
        .C32(Cout1)
    );

    add32_0 adder2(
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(result2),
        .C32(Cout2)
    );

endmodule

