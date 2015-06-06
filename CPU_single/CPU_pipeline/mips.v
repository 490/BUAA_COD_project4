`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:08 11/22/2014 
// Design Name: 
// Module Name:    mips 
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
module mips(
  input clk,
  input reset
);
  wire [31:0] imout, rd1,imm32,rd2,wd,b,aluout,dmout,spc,pc,npc;
  wire [1:0] aluop,extop,regdst;
  wire j,jal,jr,ifbeq, memtoreg, alusrc,regwrite,memwrite,zero;
  wire [5:0] op,funct;
  wire [4:0] rs, rt, rd, a1,a2,a3;
  wire [15:0] imm16;
  
  pc_32 i_PC(.clk(clk),.reset(reset),.npc(npc),.pc(pc));
  
  npc_32 i_NPC(.zero(zero),.ifbeq(ifbeq),.ifj(j),.ifjal(jal),.ifjr(jr),.pc(pc),.imm26(imout[25:0]),.rd1(rd1),.spc(spc),.npc(npc));
	
  im_1k i_IM(.addr(pc[11:2]),.dout(imout));

  ctrl i_CTRL(.op(imout[31:26]),.func(imout[5:0]),.aluop(aluop[1:0]),.ifbeq(ifbeq),.memwrite(memwrite),.extop(extop[1:0]),.regwrite(regwrite),.memtoreg(memtoreg),.alusrc(alusrc),.regdst(regdst[1:0]),.ifj(j),.ifjal(jal),.ifjr(jr));
  
  mux_3_5b i_MUX_3_5b(.en(regdst[1:0]),.A(imout[20:16]),.B(imout[15:11]),.C(5'b11111),.out(a3));
  
  mux_3_32b i_MUX_3_32b(.en({jal,memtoreg}),.A(aluout),.B(dmout),.C(spc),.out(wd));//
    
  gpr i_GPR(.clk(clk),.a1(imout[25:21]),.a2(imout[20:16]),.a3(a3),.gpr_we(regwrite),.wd(wd),.rd1(rd1),.rd2(rd2));
      
  ext i_EXT(.extop(extop[1:0]),.imm16(imout[15:0]),.imm32(imm32));

  mux_2_32b i_MUX_2_32b(.en(alusrc),.A(rd2),.B(imm32),.out(b));
   
  alu i_ALU(.a(rd1),.b(b),.op(aluop[1:0]),.zero(zero),.aluout(aluout)); 

  dm_4k i_DM(.addr(aluout[11:2]),.din(rd2),.dm_we(memwrite),.clk(clk),.dout(dmout));
	
endmodule  
