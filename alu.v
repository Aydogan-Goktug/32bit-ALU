`timescale 1ns / 1ps
 
module alu(
    input [31:0] Operand1,
    input [31:0] Operand2,
    input [3:0] OPCODE,
    output reg [31:0] result
    );
	
	always@(*) begin
	
    case(OPCODE)
    4'b0000:
	result = Operand1 + Operand2;//ALU_Addition
    4'b0001:
	result = Operand1 - Operand2;//ALU_Substraction
    4'b0010:
	result = Operand1 * Operand2;//ALU_Multiplication
    4'b0011:
	result = Operand1 & Operand2;//ALU_AND
    4'b0100:
	result = Operand1 | Operand2;//ALU_OR
    4'b0110:
	result = Operand1 ^ Operand2;//ALU_XOR
    4'b0111:
	result = !Operand1;//ALU_NOT
    4'b1000:
	result = Operand1 << 1;//ALU_Left_Shift
	4'b1001:
	result = Operand1 >> 1;//ALU_right_Shift
	default:
	result = 32'b0;
    endcase
    end
    
    
    
endmodule
