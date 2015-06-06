`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:18 11/17/2014 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
    input [31:0] a,
    input [31:0] b,
    input [1:0] op,
    output zero,
    output reg [31:0] aluout
    );
	//reg [31:0] re;
	//reg z;
	//assign zero=z;
	always@(*)
		begin
			case(op[1:0])
				2'b00:aluout=a+b;
				2'b01:aluout=a-b;
				2'b10:aluout=(a|b);
				2'b11:aluout={b[15:0],16'b0000_0000_0000_0000};
			endcase
			//re=a-b;
			//assign z=!(|re);
		end	
	assign zero=(aluout==0)?1:0;

endmodule
