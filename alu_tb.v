`timescale 1ns / 1ps

module alu_tb();
    //inputs
    reg[31:0] Operand1;
    reg[31:0] Operand2;
    reg[3:0] OPCODE;
    //output
    wire[31:0] result;
    
    //design under test
    alu DUT (.Operand1(Operand1), .Operand2(Operand2), .OPCODE(OPCODE), .result(result));
	
	initial begin
	    //Addition
		Operand1 = 1;
		Operand2 = 2;
		OPCODE = 4'b0000;
		#10;
		
		//Substraction
		Operand1 = 4;
		Operand2 = 3;
		OPCODE = 4'b0001;
		#10;
		
		//Multiplication
		Operand1 = 7;
		Operand2 = 12;
		OPCODE = 4'b0010;
		#10;
		
		//AND
		Operand1 = 4;
		Operand2 = 5;
		OPCODE = 4'b0011;
		#10;
		
		//OR
		Operand1 = 5;
		Operand2 = 7;
		OPCODE = 4'b0100;
		#10;
		
		//XOR
		Operand1 = 2;
		Operand2 = 6;
		OPCODE = 4'b0110;
		#10;
		
		//NOT
		Operand1 = 1;
		Operand2 = 0;
		OPCODE = 4'b0111;
		#10;
		
		//Left Shift
		Operand1 = 4;
		OPCODE = 4'b1000;
		#10;
		
		//Right Shift
		Operand1 = 4;
		OPCODE = 4'b1001;
		#10;
		
	end
endmodule
