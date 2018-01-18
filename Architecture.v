`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:17 11/17/2017 
// Design Name: 
// Module Name:    porject 
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
module D_ff_PC(input clk, input reset, input regWrite, input d, output reg q);
	always@(negedge clk)
		begin
			if(reset)
				q=0;
			else
				if(regWrite == 1) begin q=d; end
		end
endmodule

module register32bit_PC(input clk, input reset, input regWrite, input [31:0] writeData, output  [31:0] outR);
	D_ff_PC d0(clk,reset,regWrite,writeData[0],outR[0]);
	D_ff_PC d1(clk,reset,regWrite,writeData[1],outR[1]);
	D_ff_PC d2(clk,reset,regWrite,writeData[2],outR[2]);
	D_ff_PC d3(clk,reset,regWrite,writeData[3],outR[3]);
	D_ff_PC d4(clk,reset,regWrite,writeData[4],outR[4]);
	D_ff_PC d5(clk,reset,regWrite,writeData[5],outR[5]);
	D_ff_PC d6(clk,reset,regWrite,writeData[6],outR[6]);
	D_ff_PC d7(clk,reset,regWrite,writeData[7],outR[7]);
	D_ff_PC d8(clk,reset,regWrite,writeData[8],outR[8]);
	D_ff_PC d9(clk,reset,regWrite,writeData[9],outR[9]);
	D_ff_PC d10(clk,reset,regWrite,writeData[10],outR[10]);
	D_ff_PC d11(clk,reset,regWrite,writeData[11],outR[11]);
	D_ff_PC d12(clk,reset,regWrite,writeData[12],outR[12]);
	D_ff_PC d13(clk,reset,regWrite,writeData[13],outR[13]);
	D_ff_PC d14(clk,reset,regWrite,writeData[14],outR[14]);
	D_ff_PC d15(clk,reset,regWrite,writeData[15],outR[15]);
	D_ff_PC d16(clk,reset,regWrite,writeData[16],outR[16]);
	D_ff_PC d17(clk,reset,regWrite,writeData[17],outR[17]);
	D_ff_PC d18(clk,reset,regWrite,writeData[18],outR[18]);
	D_ff_PC d19(clk,reset,regWrite,writeData[19],outR[19]);
	D_ff_PC d20(clk,reset,regWrite,writeData[20],outR[20]);
	D_ff_PC d21(clk,reset,regWrite,writeData[21],outR[21]);
	D_ff_PC d22(clk,reset,regWrite,writeData[22],outR[22]);
	D_ff_PC d23(clk,reset,regWrite,writeData[23],outR[23]);
	D_ff_PC d24(clk,reset,regWrite,writeData[24],outR[24]);
	D_ff_PC d25(clk,reset,regWrite,writeData[25],outR[25]);
	D_ff_PC d26(clk,reset,regWrite,writeData[26],outR[26]);
	D_ff_PC d27(clk,reset,regWrite,writeData[27],outR[27]);
	D_ff_PC d28(clk,reset,regWrite,writeData[28],outR[28]);
	D_ff_PC d29(clk,reset,regWrite,writeData[29],outR[29]);
	D_ff_PC d30(clk,reset,regWrite,writeData[30],outR[30]);
	D_ff_PC d31(clk,reset,regWrite,writeData[31],outR[31]);
endmodule

module pc_adder(input [31:0] in1, input [31:0] in2, output reg [31:0] adder_out);
	always@(in1 or in2)
	begin
		adder_out = in1 + in2;
	end
endmodule

module D_ff_reg(input clk, input reset, input regWrite_1, input regWrite_2, input decOut1b_1, input decOut1b_2 , input d_1, input d_2, output reg q);
	always @ (negedge clk)
	begin
	if(reset==1)
		q=0;
	else
		if(regWrite_1 == 1 && decOut1b_1==1)
		begin
			q=d_1;
		end
		if(regWrite_2 == 1 && decOut1b_2==1)
		begin
			q=d_2;
		end
	end
endmodule

module register32bit(input clk, input reset, input Regwrite_1, input Regwrite_2, input decOut1b_1, input decOut1b_2, input [31:0] writeData_1, 
input [31:0] writeData_2, output  [31:0] outR);

	D_ff_reg d0 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[0]  , writeData_2[0] , outR[0]);
	D_ff_reg d1 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[1]  , writeData_2[1] , outR[1]);
	D_ff_reg d2 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[2]  , writeData_2[2] , outR[2]);
	D_ff_reg d3 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[3]  , writeData_2[3] , outR[3]);
	D_ff_reg d4 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[4]  , writeData_2[4] , outR[4]);
	D_ff_reg d5 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[5]  , writeData_2[5] , outR[5]);
	D_ff_reg d6 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[6]  , writeData_2[6] , outR[6]);
	D_ff_reg d7 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[7]  , writeData_2[7] , outR[7]);
	D_ff_reg d8 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[8]  , writeData_2[8] , outR[8]);
	D_ff_reg d9 (clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[9]  , writeData_2[9] , outR[9]);
	D_ff_reg d10(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[10] , writeData_2[10],  outR[10]);
	D_ff_reg d11(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[11] , writeData_2[11],  outR[11]);
	D_ff_reg d12(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[12] , writeData_2[12],  outR[12]);
	D_ff_reg d13(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[13] , writeData_2[13],  outR[13]);
	D_ff_reg d14(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[14] , writeData_2[14],  outR[14]);
	D_ff_reg d15(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[15] , writeData_2[15],  outR[15]);
	D_ff_reg d16(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[16] , writeData_2[16],  outR[16]);
	D_ff_reg d17(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[17] , writeData_2[17],  outR[17]);
	D_ff_reg d18(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[18] , writeData_2[18],  outR[18]);
	D_ff_reg d19(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[19] , writeData_2[19],  outR[19]);
	D_ff_reg d20(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[20] , writeData_2[20],  outR[20]);
	D_ff_reg d21(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[21] , writeData_2[21],  outR[21]);
	D_ff_reg d22(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[22] , writeData_2[22],  outR[22]);
	D_ff_reg d23(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[23] , writeData_2[23],  outR[23]);
	D_ff_reg d24(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[24] , writeData_2[24],  outR[24]);
	D_ff_reg d25(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[25] , writeData_2[25],  outR[25]);
	D_ff_reg d26(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[26] , writeData_2[26],  outR[26]);
	D_ff_reg d27(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[27] , writeData_2[27],  outR[27]);
	D_ff_reg d28(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[28] , writeData_2[28],  outR[28]);
	D_ff_reg d29(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[29] , writeData_2[29],  outR[29]);
	D_ff_reg d30(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[30] , writeData_2[30],  outR[30]);
	D_ff_reg d31(clk, reset, Regwrite_1 , Regwrite_2, decOut1b_1 , decOut1b_2, writeData_1[31] , writeData_2[31],  outR[31]);
	
endmodule

module registerSet(input clk, input reset, input Regwrite_1, input Regwrite_2, input [31:0] decOut_1, input [31:0] decOut_2, input [31:0] writeData_1, 
input [31:0] writeData_2,output [31:0] outR0, output [31:0] outR1, output [31:0] outR2, output [31:0] outR3,
	output [31:0] outR4, output [31:0] outR5, output [31:0] outR6, output [31:0] outR7,
	output [31:0] outR8, output [31:0] outR9, output [31:0] outR10, output [31:0] outR11,
	output [31:0] outR12, output [31:0] outR13, output [31:0] outR14, output [31:0] outR15, output [31:0] outR16, output [31:0] outR17, output [31:0] outR18, output [31:0] outR19,
	output [31:0] outR20,output [31:0] outR21,output [31:0] outR22,output [31:0] outR23,output [31:0] outR24,output [31:0] outR25,output [31:0] outR26,output [31:0] outR27,output [31:0] outR28,
	output [31:0] outR29,output [31:0] outR30,output [31:0] outR31);

	register32bit register0(clk, reset, Regwrite_1,Regwrite_2, decOut_1[0], decOut_2[0], writeData_1,writeData_2, outR0);
	register32bit register1(clk, reset, Regwrite_1,Regwrite_2, decOut_1[1], decOut_2[1], writeData_1,writeData_2, outR1);
	register32bit register2(clk, reset, Regwrite_1,Regwrite_2, decOut_1[2], decOut_2[2], writeData_1,writeData_2, outR2);
	register32bit register3(clk, reset, Regwrite_1,Regwrite_2, decOut_1[3], decOut_2[3], writeData_1,writeData_2, outR3);
	register32bit register4(clk, reset, Regwrite_1,Regwrite_2, decOut_1[4], decOut_2[4], writeData_1,writeData_2, outR4);
	register32bit register5(clk, reset, Regwrite_1,Regwrite_2, decOut_1[5], decOut_2[5], writeData_1,writeData_2, outR5);
	register32bit register6(clk, reset, Regwrite_1,Regwrite_2, decOut_1[6], decOut_2[6], writeData_1,writeData_2, outR6);
	register32bit register7(clk, reset, Regwrite_1,Regwrite_2, decOut_1[7], decOut_2[7], writeData_1,writeData_2, outR7);
	register32bit register8(clk, reset, Regwrite_1,Regwrite_2, decOut_1[8], decOut_2[8], writeData_1,writeData_2, outR8);
	register32bit register9(clk, reset, Regwrite_1,Regwrite_2, decOut_1[9], decOut_2[9], writeData_1,writeData_2, outR9);
	register32bit register10(clk, reset, Regwrite_1,Regwrite_2, decOut_1[10],decOut_2[10], writeData_1,writeData_2, outR10);
	register32bit register11(clk, reset, Regwrite_1,Regwrite_2, decOut_1[11],decOut_2[11], writeData_1,writeData_2, outR11);
	register32bit register12(clk, reset, Regwrite_1,Regwrite_2, decOut_1[12],decOut_2[12], writeData_1,writeData_2, outR12);
	register32bit register13(clk, reset, Regwrite_1,Regwrite_2, decOut_1[13],decOut_2[13], writeData_1,writeData_2, outR13);
	register32bit register14(clk, reset, Regwrite_1,Regwrite_2, decOut_1[14],decOut_2[14], writeData_1,writeData_2, outR14);
	register32bit register15(clk, reset, Regwrite_1,Regwrite_2, decOut_1[15],decOut_2[15], writeData_1,writeData_2, outR15);
	register32bit register16(clk, reset, Regwrite_1,Regwrite_2, decOut_1[16],decOut_2[16], writeData_1,writeData_2, outR16);
	register32bit register17(clk, reset, Regwrite_1,Regwrite_2, decOut_1[17],decOut_2[17], writeData_1,writeData_2, outR17);
	register32bit register18(clk, reset, Regwrite_1,Regwrite_2, decOut_1[18],decOut_2[18], writeData_1,writeData_2, outR18);
	register32bit register19(clk, reset, Regwrite_1,Regwrite_2, decOut_1[19],decOut_2[19], writeData_1,writeData_2, outR19);
	register32bit register20(clk, reset, Regwrite_1,Regwrite_2, decOut_1[20],decOut_2[20], writeData_1,writeData_2, outR20);
	register32bit register21(clk, reset, Regwrite_1,Regwrite_2, decOut_1[21],decOut_2[21], writeData_1,writeData_2, outR21);
	register32bit register22(clk, reset, Regwrite_1,Regwrite_2, decOut_1[22],decOut_2[22], writeData_1,writeData_2, outR22);
	register32bit register23(clk, reset, Regwrite_1,Regwrite_2, decOut_1[23],decOut_2[23], writeData_1,writeData_2, outR23);
	register32bit register24(clk, reset, Regwrite_1,Regwrite_2, decOut_1[24],decOut_2[24], writeData_1,writeData_2, outR24);
	register32bit register25(clk, reset, Regwrite_1,Regwrite_2, decOut_1[25],decOut_2[25], writeData_1,writeData_2, outR25);
	register32bit register26(clk, reset, Regwrite_1,Regwrite_2, decOut_1[26],decOut_2[26], writeData_1,writeData_2, outR26);
	register32bit register27(clk, reset, Regwrite_1,Regwrite_2, decOut_1[27],decOut_2[27], writeData_1,writeData_2, outR27);
	register32bit register28(clk, reset, Regwrite_1,Regwrite_2, decOut_1[28],decOut_2[28], writeData_1,writeData_2, outR28);
	register32bit register29(clk, reset, Regwrite_1,Regwrite_2, decOut_1[29],decOut_2[29], writeData_1,writeData_2, outR29);
	register32bit register30(clk, reset, Regwrite_1,Regwrite_2, decOut_1[30],decOut_2[30], writeData_1,writeData_2, outR30);
	register32bit register31(clk, reset, Regwrite_1,Regwrite_2, decOut_1[31],decOut_2[31], writeData_1,writeData_2, outR31);
endmodule
module decoder5to32(input [4:0] destReg, output reg [31:0] decOut);
	always @(destReg)
		case(destReg)
			5'd0: decOut=32'b0000_0000_0000_0000_0000_0000_0000_0001;
			5'd1: decOut=32'b0000_0000_0000_0000_0000_0000_0000_0010;
			5'd2: decOut=32'b0000_0000_0000_0000_0000_0000_0000_0100;
			5'd3: decOut=32'b0000_0000_0000_0000_0000_0000_0000_1000;
			5'd4: decOut=32'b0000_0000_0000_0000_0000_0000_0001_0000;
			5'd5: decOut=32'b0000_0000_0000_0000_0000_0000_0010_0000;
			5'd6: decOut=32'b0000_0000_0000_0000_0000_0000_0100_0000;
			5'd7: decOut=32'b0000_0000_0000_0000_0000_0000_1000_0000;
			5'd8: decOut=32'b0000_0000_0000_0000_0000_0001_0000_0000;
			5'd9: decOut=32'b0000_0000_0000_0000_0000_0010_0000_0000;
			5'd10: decOut=32'b0000_0000_0000_0000_0000_0100_0000_0000;
			5'd11: decOut=32'b0000_0000_0000_0000_0000_1000_0000_0000;
			5'd12: decOut=32'b0000_0000_0000_0000_0001_0000_0000_0000;
			5'd13: decOut=32'b0000_0000_0000_0000_0010_0000_0000_0000;
			5'd14: decOut=32'b0000_0000_0000_0000_0100_0000_0000_0000;
			5'd15: decOut=32'b0000_0000_0000_0000_1000_0000_0000_0000;
			5'd16: decOut=32'b0000_0000_0000_0001_0000_0000_0000_0000;
			5'd17: decOut=32'b0000_0000_0000_0010_0000_0000_0000_0000;
			5'd18: decOut=32'b0000_0000_0000_0100_0000_0000_0000_0000;
			5'd19: decOut=32'b0000_0000_0000_1000_0000_0000_0000_0000;
			5'd20: decOut=32'b0000_0000_0001_0000_0000_0000_0000_0000;
			5'd21: decOut=32'b0000_0000_0010_0000_0000_0000_0000_0000;
			5'd22: decOut=32'b0000_0000_0100_0000_0000_0000_0000_0000;
			5'd23: decOut=32'b0000_0000_1000_0000_0000_0000_0000_0000;
			5'd24: decOut=32'b0000_0001_0000_0000_0000_0000_0000_0000;
			5'd25: decOut=32'b0000_0010_0000_0000_0000_0000_0000_0000;
			5'd26: decOut=32'b0000_0100_0000_0000_0000_0000_0000_0000;
			5'd27: decOut=32'b0000_1000_0000_0000_0000_0000_0000_0000;
			5'd28: decOut=32'b0001_0000_0000_0000_0000_0000_0000_0000;
			5'd29: decOut=32'b0010_0000_0000_0000_0000_0000_0000_0000;
			5'd30: decOut=32'b0100_0000_0000_0000_0000_0000_0000_0000;
			5'd31: decOut=32'b1000_0000_0000_0000_0000_0000_0000_0000;
		endcase
endmodule

module mux32to1(input [31:0] outR0, input [31:0] outR1, input [31:0] outR2, input [31:0] outR3,
	input [31:0] outR4, input [31:0] outR5, input [31:0] outR6, input [31:0] outR7,
	input [31:0] outR8, input [31:0] outR9, input [31:0] outR10, input [31:0] outR11,
	input [31:0] outR12, input [31:0] outR13, input [31:0] outR14, input [31:0] outR15,
	input [31:0] outR16, input [31:0] outR17, input [31:0] outR18, input [31:0] outR19,
	input [31:0] outR20, input [31:0] outR21, input [31:0] outR22, input [31:0] outR23,
	input [31:0] outR24, input [31:0] outR25, input [31:0] outR26, input [31:0] outR27,
	input [31:0] outR28, input [31:0] outR29, input [31:0] outR30, input [31:0] outR31,
	input [4:0] Sel, output reg [31:0] outBus);

	always@(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,
	outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,Sel)
		case(Sel)
			5'd0:outBus=outR0;
			5'd1:outBus=outR1;
			5'd2:outBus=outR2;
			5'd3:outBus=outR3;
			5'd4:outBus=outR4;
			5'd5:outBus=outR5;
			5'd6:outBus=outR6;
			5'd7:outBus=outR7;
			5'd8:outBus=outR8;
			5'd9:outBus=outR9;
			5'd10:outBus=outR10;
			5'd11:outBus=outR11;
			5'd12:outBus=outR12;
			5'd13:outBus=outR13;
			5'd14:outBus=outR14;
			5'd15:outBus=outR15;
			5'd16:outBus=outR16;
			5'd17:outBus=outR17;
			5'd18:outBus=outR18;
			5'd19:outBus=outR19;
			5'd20:outBus=outR20;
			5'd21:outBus=outR21;
			5'd22:outBus=outR22;
			5'd23:outBus=outR23;
			5'd24:outBus=outR24;
			5'd25:outBus=outR25;
			5'd26:outBus=outR26;
			5'd27:outBus=outR27;
			5'd28:outBus=outR28;
			5'd29:outBus=outR29;
			5'd30:outBus=outR30;
			5'd31:outBus=outR31;
		endcase
endmodule

module registerFile(input clk, input reset, input regWrite_1, input regWrite_2, input [4:0] rs_1, input [4:0] rt_1, input [4:0] rd_1, input [4:0] rs_2, input [4:0] rt_2, input [4:0] rd_2, input [31:0] writeData_1, input [31:0] writeData_2 , output [31:0] rsOut_1, output [31:0] rtOut_1, output [31:0] rsOut_2, output [31:0] rtOut_2);
	wire [31:0] decOut_1, decOut_2;
	wire [31:0] outR0, outR1, outR2, outR3, outR4, outR5, outR6, outR7, outR8, outR9, outR10, outR11, outR12, outR13, outR14, outR15, outR16, outR17, outR18, outR19, outR20, outR21, outR22, outR23, outR24, outR25, outR26, outR27, outR28, outR29, outR30, outR31;

	decoder5to32 decoderForNormal(rd_1, decOut_1);
	decoder5to32 decoderForCompressed(rd_2, decOut_2);

	registerSet RegisterSet(clk, reset, regWrite_1, regWrite_2, decOut_1, decOut_2, writeData_1, writeData_2, outR0,  outR1,  outR2,  outR3,
	 outR4,  outR5,  outR6,  outR7,	 outR8,  outR9,  outR10,  outR11, outR12,  outR13,  outR14,  outR15,  outR16,  outR17,  outR18,  outR19,
	 outR20, outR21, outR22, outR23, outR24, outR25, outR26, outR27, outR28, outR29, outR30, outR31);

	mux32to1 muxRegRs1(outR0, outR1, outR2, outR3, outR4, outR5, outR6, outR7, outR8, outR9, outR10, outR11, outR12, outR13, outR14, outR15, outR16, outR17, outR18, outR19,	outR20, outR21, outR22, outR23,	outR24, outR25, outR26, outR27, outR28, outR29, outR30, outR31, rs_1, rsOut_1); 

	mux32to1 muxRegRt1(outR0, outR1, outR2, outR3, outR4, outR5, outR6, outR7, outR8, outR9, outR10, outR11, outR12, outR13, outR14, outR15, outR16, outR17, outR18, outR19,	outR20, outR21, outR22, outR23,	outR24, outR25, outR26, outR27, outR28, outR29, outR30, outR31, rt_1, rtOut_1);

	mux32to1 muxRegRs2(outR0, outR1, outR2, outR3, outR4, outR5, outR6, outR7, outR8, outR9, outR10, outR11, outR12, outR13, outR14, outR15, outR16, outR17, outR18, outR19,	outR20, outR21, outR22, outR23,	outR24, outR25, outR26, outR27, outR28, outR29, outR30, outR31, rs_2, rsOut_2);

	mux32to1 muxRegRt2(outR0, outR1, outR2, outR3, outR4, outR5, outR6, outR7, outR8, outR9, outR10, outR11, outR12, outR13, outR14, outR15, outR16, outR17, outR18, outR19,	outR20, outR21, outR22, outR23,	outR24, outR25, outR26, outR27, outR28, outR29, outR30, outR31, rt_2, rtOut_2);

endmodule

module signExt16to32(input [15:0] in, output reg [31:0] signExtin);
	always@(in)
		signExtin={{16{in[15]}},in};
endmodule

module signExt12to32(input [11:0] in, output reg [31:0] signExtin);
	always@(in)
		signExtin={{20{in[11]}},in};
endmodule

module signExt11to32(input [10:0] in, output reg [31:0] signExtin);
	always@(in)
		signExtin={{21{in[10]}},in};
endmodule

module zeroExt5to32(input [4:0] in, output reg [31:0] zeroExtin);
	always@(in)
		zeroExtin={27'b0,in};
endmodule

module rs2extend(input [4:0] rs2, input [1:0] op, output reg [4:0] rs2ex);
	always@(rs2,op)
		begin
			if(op == 2'b00) begin
				rs2ex={2'b0,rs2[2:0]};
				end
			else
			 begin
				rs2ex=rs2;
			end
		end
endmodule

module ALU(input signed [31:0] aluIn1, input signed [31:0] aluIn2, input [1:0] aluOp, output reg [31:0] aluOut);

	always@(aluIn1 or aluIn2 or aluOp)
		begin
			case(aluOp)
				2'd0: aluOut = aluIn1 << aluIn2;
				2'd1:
				begin	
					//aluOut = $unsigned(aluIn1) - $unsigned(aluIn0);
					if($unsigned(aluIn1) < $unsigned(aluIn2)) begin
						aluOut = 32'd1;
						end
					else begin
						aluOut=32'd0;
						end
				end

				2'd2: aluOut = aluIn1 + aluIn2;
				
			endcase
		end
endmodule

/*
module register16bit_ins(input clk, input reset, input regWrite, input [15:0] writeData, output  [15:0] outR);
	D_ff_PC d0(clk,reset,regWrite,writeData[0],outR[0]);
	D_ff_PC d1(clk,reset,regWrite,writeData[1],outR[1]);
	D_ff_PC d2(clk,reset,regWrite,writeData[2],outR[2]);
	D_ff_PC d3(clk,reset,regWrite,writeData[3],outR[3]);
	D_ff_PC d4(clk,reset,regWrite,writeData[4],outR[4]);
	D_ff_PC d5(clk,reset,regWrite,writeData[5],outR[5]);
	D_ff_PC d6(clk,reset,regWrite,writeData[6],outR[6]);
	D_ff_PC d7(clk,reset,regWrite,writeData[7],outR[7]);
	D_ff_PC d8(clk,reset,regWrite,writeData[8],outR[8]);
	D_ff_PC d9(clk,reset,regWrite,writeData[9],outR[9]);
	D_ff_PC d10(clk,reset,regWrite,writeData[10],outR[10]);
	D_ff_PC d11(clk,reset,regWrite,writeData[11],outR[11]);
	D_ff_PC d12(clk,reset,regWrite,writeData[12],outR[12]);
	D_ff_PC d13(clk,reset,regWrite,writeData[13],outR[13]);
	D_ff_PC d14(clk,reset,regWrite,writeData[14],outR[14]);
	D_ff_PC d15(clk,reset,regWrite,writeData[15],outR[15]);
endmodule*/

module register5bit(input clk, input reset, input regWrite, input [4:0] writeData, output  [4:0] outR);
	D_ff_PC d0(clk,reset,regWrite,writeData[0],outR[0]);
	D_ff_PC d1(clk,reset,regWrite,writeData[1],outR[1]);
	D_ff_PC d2(clk,reset,regWrite,writeData[2],outR[2]);
	D_ff_PC d3(clk,reset,regWrite,writeData[3],outR[3]);
	D_ff_PC d4(clk,reset,regWrite,writeData[4],outR[4]);
endmodule

module register20bit(input clk, input reset, input regWrite, input [19:0] writeData, output  [19:0] outR);
	D_ff_PC d0(clk,reset,regWrite,writeData[0],outR[0]);
	D_ff_PC d1(clk,reset,regWrite,writeData[1],outR[1]);
	D_ff_PC d2(clk,reset,regWrite,writeData[2],outR[2]);
	D_ff_PC d3(clk,reset,regWrite,writeData[3],outR[3]);
	D_ff_PC d4(clk,reset,regWrite,writeData[4],outR[4]);
	D_ff_PC d5(clk,reset,regWrite,writeData[5],outR[5]);
	D_ff_PC d6(clk,reset,regWrite,writeData[6],outR[6]);
	D_ff_PC d7(clk,reset,regWrite,writeData[7],outR[7]);
	D_ff_PC d8(clk,reset,regWrite,writeData[8],outR[8]);
	D_ff_PC d9(clk,reset,regWrite,writeData[9],outR[9]);
	D_ff_PC d10(clk,reset,regWrite,writeData[10],outR[10]);
	D_ff_PC d11(clk,reset,regWrite,writeData[11],outR[11]);
	D_ff_PC d12(clk,reset,regWrite,writeData[12],outR[12]);
	D_ff_PC d13(clk,reset,regWrite,writeData[13],outR[13]);
	D_ff_PC d14(clk,reset,regWrite,writeData[14],outR[14]);
	D_ff_PC d15(clk,reset,regWrite,writeData[15],outR[15]);
	D_ff_PC d16(clk,reset,regWrite,writeData[16],outR[16]);
	D_ff_PC d17(clk,reset,regWrite,writeData[17],outR[17]);
	D_ff_PC d18(clk,reset,regWrite,writeData[18],outR[18]);
	D_ff_PC d19(clk,reset,regWrite,writeData[19],outR[19]);
endmodule

module register2bit(input clk, input reset, input regWrite, input [1:0] writeData, output  [1:0] outR);
	D_ff_PC d0(clk,reset,regWrite,writeData[0],outR[0]);
	D_ff_PC d1(clk,reset,regWrite,writeData[1],outR[1]);
	
endmodule

module register1bit(input clk, input reset, input regWrite, input writeData, output outR);
	D_ff_PC d0(clk,reset,regWrite,writeData,outR);
	
endmodule 

module D_ff_F(input clk, input reset, input regWrite, input flush, input d, output reg q);
	always@(negedge clk)
		begin
			if(reset==1'b1 || flush == 1'b1)
				q=0;
			else
				if(regWrite == 1) begin q=d; end
		end
endmodule

module register32bit_F(input clk, input reset, input regWrite, input flush,input [31:0] writeData, output  [31:0] outR);
	D_ff_F d0(clk,reset,regWrite,flush,writeData[0],outR[0]);
	D_ff_F d1(clk,reset,regWrite,flush,writeData[1],outR[1]);
	D_ff_F d2(clk,reset,regWrite,flush,writeData[2],outR[2]);
	D_ff_F d3(clk,reset,regWrite,flush,writeData[3],outR[3]);
	D_ff_F d4(clk,reset,regWrite,flush,writeData[4],outR[4]);
	D_ff_F d5(clk,reset,regWrite,flush,writeData[5],outR[5]);
	D_ff_F d6(clk,reset,regWrite,flush,writeData[6],outR[6]);
	D_ff_F d7(clk,reset,regWrite,flush,writeData[7],outR[7]);
	D_ff_F d8(clk,reset,regWrite,flush,writeData[8],outR[8]);
	D_ff_F d9(clk,reset,regWrite,flush,writeData[9],outR[9]);
	D_ff_F d10(clk,reset,regWrite,flush,writeData[10],outR[10]);
	D_ff_F d11(clk,reset,regWrite,flush,writeData[11],outR[11]);
	D_ff_F d12(clk,reset,regWrite,flush,writeData[12],outR[12]);
	D_ff_F d13(clk,reset,regWrite,flush,writeData[13],outR[13]);
	D_ff_F d14(clk,reset,regWrite,flush,writeData[14],outR[14]);
	D_ff_F d15(clk,reset,regWrite,flush,writeData[15],outR[15]);
	D_ff_F d16(clk,reset,regWrite,flush,writeData[16],outR[16]);
	D_ff_F d17(clk,reset,regWrite,flush,writeData[17],outR[17]);
	D_ff_F d18(clk,reset,regWrite,flush,writeData[18],outR[18]);
	D_ff_F d19(clk,reset,regWrite,flush,writeData[19],outR[19]);
	D_ff_F d20(clk,reset,regWrite,flush,writeData[20],outR[20]);
	D_ff_F d21(clk,reset,regWrite,flush,writeData[21],outR[21]);
	D_ff_F d22(clk,reset,regWrite,flush,writeData[22],outR[22]);
	D_ff_F d23(clk,reset,regWrite,flush,writeData[23],outR[23]);
	D_ff_F d24(clk,reset,regWrite,flush,writeData[24],outR[24]);
	D_ff_F d25(clk,reset,regWrite,flush,writeData[25],outR[25]);
	D_ff_F d26(clk,reset,regWrite,flush,writeData[26],outR[26]);
	D_ff_F d27(clk,reset,regWrite,flush,writeData[27],outR[27]);
	D_ff_F d28(clk,reset,regWrite,flush,writeData[28],outR[28]);
	D_ff_F d29(clk,reset,regWrite,flush,writeData[29],outR[29]);
	D_ff_F d30(clk,reset,regWrite,flush,writeData[30],outR[30]);
	D_ff_F d31(clk,reset,regWrite,flush,writeData[31],outR[31]);

endmodule 

module IF_ID(input clk,input reset,input regwrite,input flush,input [31:0] pc, input [31:0] ins1, input [31:0] ins2, output [31:0] ins2_out, output [31:0] ins1_out, output [31:0] pc_o);
	register32bit_F PC_reg(clk,reset,regwrite,flush,pc,pc_o);
	register32bit_F instruction_normal(clk,reset,regwrite,flush,ins1,ins1_out);
	register32bit_F instruction_compressed(clk,reset,regwrite,flush,ins2,ins2_out); // Have to make this 32 bit because of recent changes --done

endmodule

module ID_EX(input clk, input reset,input regwrite, input [31:0] pc, input [31:0] regrs1, input[31:0] regrs2, input [31:0] regrt1, input[31:0] regrt2, input [4:0] rs1, input [4:0] rs2, input [4:0] rt1, input [4:0] rt2, input[4:0] rd1, input [4:0] rd2, input [19:0] imm,input regWrite1, input regWrite2, input [1:0] aluSrcb1, input aluSrca2, input aluSrcb2, input [1:0] aluop1, input [1:0] aluop2, input regDst2, input branch, input jump, input Memread1, input Memwrite2, input [1:0] memToReg1, input memToReg2, input IF_ID_flush_1, input IF_ID_flush_2, input storeIM, input comparator, output cout, output storeIM_o, output IF_ID_flush_1_o, output IF_ID_flush_2_o, output [31:0] pc_o, output [31:0] regrs1_o, output[31:0] regrs2_o, output [31:0] regrt1_o, output[31:0] regrt2_o, output [4:0] rs1_o, output [4:0] rs2_o, output [4:0] rt1_o, output [4:0] rt2_o, output[4:0] rd1_o, output [4:0] rd2_o, output [19:0] imm_o,output regWrite1_o,output regWrite2_o, output [1:0] aluSrcb1_o, output aluSrcb2_o, output aluSrca2_o, output [1:0] aluop1_o,output [1:0] aluop2_o,output regDst2_o, output branch_o,output jump_o, output Memread1_o,output Memwrite2_o, output [1:0] memToReg1_o, output memToReg2_o);
	register32bit_PC PC_reg(clk,reset,regwrite,pc,pc_o);
	register32bit_PC Regrs1(clk,reset,regwrite,regrs1,regrs1_o);
	register32bit_PC Regrs2(clk,reset,regwrite,regrs2,regrs2_o);
	register32bit_PC Regrt1(clk,reset,regwrite,regrt1,regrt1_o);
	register32bit_PC Regrt2(clk,reset,regwrite,regrt2,regrt2_o);
	register5bit Rs1(clk,reset,regwrite,rs1,rs1_o);
	register5bit Rt1(clk,reset,regwrite,rs1,rs1_o);
	register5bit Rs2(clk,reset,regwrite,rs1,rs1_o);
	register5bit Rt2(clk,reset,regwrite,rt2,rt2_o);
	register5bit Rd1(clk,reset,regwrite,rd1,rd1_o);
	register5bit Rd2(clk,reset,regwrite,rd2,rd2_o);
	register20bit Imm(clk,reset,regwrite,imm,imm_o);
	register1bit comp1(clk,reset,regwrite,comparator,cout);
	//register2bit PCs1(clk,reset,regwrite,PCsrc1,PCsrc1_o);
	//register2bit PCs2(clk,reset,regwrite,PCsrc2,PCsrc2_o);
	register2bit alusb1(clk,reset,regwrite,aluSrcb1,aluSrcb1_o);
	register1bit alusa2(clk,reset,regwrite,aluSrca2,aluSrca2_o);
	register1bit alusb2(clk,reset,regwrite,aluSrcb2,aluSrcb2_o);
	register1bit swim(clk,reset,regwrite,storeIM_o,storeIM_o);
	register2bit Aluop1(clk,reset,regwrite,aluop1,aluop1_o);
	register2bit Aluop2(clk,reset,regwrite,aluop2,aluop2_o);
	register1bit MemToReg2(clk,reset,regwrite,memToReg2,memToReg2_o);
	register2bit MemToReg1(clk,reset,regwrite,memToReg1,memToReg1_o);
	register1bit regwr1(clk,reset,regwrite,regWrite1,regWrite1_o);
	//register1bit regdst1(clk,reset,regwrite,regDst1,regDst1_o);
	register1bit regwr2(clk,reset,regwrite,regWrite2,regWrite2_o);
	register1bit regdst2(clk,reset,regwrite,regDst2,regDst2_o);
	register1bit Branch(clk,reset,regwrite,branch,branch_o);
	register1bit JUMP(clk,reset,regwrite,jump,jump_o);
	register1bit memread1(clk,reset,regwrite,Memread1,Memread1_o);
	//register1bit memwrite1(clk,reset,regwrite,Memwrite1,Memwrite1_o);
	//register1bit memread2(clk,reset,regwrite,Memread2,Memread2_o);
	register1bit memwrite2(clk,reset,regwrite,Memwrite2,Memwrite2_o);
	register1bit flush1(clk,reset,regwrite,IF_ID_flush_1,IF_ID_flush_1_o);
	register1bit flush2(clk,reset,regwrite,IF_ID_flush_2,IF_ID_flush_2_o);
	//register1bit id_ex_flush(clk,reset,regwrite,id_ex_flush_i,id_ex_flush_o);

endmodule

module EX_MEM(input clk,input reset,input regwrite,input [31:0] aluout1, input Memread1, input [31:0] aluout2, input [31:0] luiout, input [31:0] regrs2, input [4:0] rd1, input [4:0] rd2, input [1:0] MemtoReg1, input regWrite1, input Memwrite2,  input MemtoReg2, input regWrite2,input [31:0] Pc,output [31:0] aluout1_o, output [31:0] aluout2_o, output Memread1_o, output [31:0] luiout_o, output [31:0] regrs2_o, output [4:0] rd1_o, output [4:0] rd2_o, output [1:0] MemtoReg1_o, output regWrite1_o, output Memwrite2_o,  output MemtoReg2_o, output regWrite2_o,output [31:0] Pc_o);

	register32bit_PC PC_reg(clk,reset,regwrite,Pc,Pc_o);
	register32bit_PC Aluout1(clk,reset,regwrite,aluout1,aluout1_o);
	register32bit_PC Aluout2(clk,reset,regwrite,aluout2,aluout2_o);
	register32bit_PC LuiOut(clk,reset,regwrite,luiout,luiout_o);
	register32bit_PC RegRs2(clk,reset,regwrite,regrs2,regrs2_o);
	register5bit Rd1(clk,reset,regwrite,rd1,rd1_o);
	register5bit Rd2(clk,reset,regwrite,rd2,rd2_o);
	//register1bit branch1(clk,reset,regwrite,branch,branch_o);
	//register1bit memwr1(clk,reset,regwrite,Memwrite1,Memwrite1_o);
	register1bit memwr2(clk,reset,regwrite,Memwrite2,Memwrite2_o);
	register1bit regwr1(clk,reset,regwrite,regWrite1,regWrite1_o);
	register1bit regwr2(clk,reset,regwrite,regWrite2,regWrite2_o);
	//register1bit Jump(clk,reset,regwrite,jump,jump_o);
	register1bit memtoreg2(clk,reset,regwrite,MemtoReg2,MemtoReg2_o);
	register2bit memtoreg1(clk,reset,regwrite,MemtoReg1,MemtoReg1_o);
	register1bit memread1(clk,reset,regwrite,Memread1,Memread1_o);
	//register1bit memread2(clk,reset,regwrite,Memread2,Memread2_o);

endmodule

module MEM_WB(input clk,input reset, input regwrite, input [31:0] Regout1, input [31:0] Regout2, input [4:0] rd1, input [4:0] rd2,  input regWrite1, input regWrite2,output [31:0] Regout1_o, output [31:0] Regout2_o,output [4:0] rd1_o, output [4:0] rd2_o,output  regWrite1_o, output regWrite2_o);

	//register32bit_PC PC_reg(clk,reset,regwrite,PC,PC_o);
	register32bit_PC regout1(clk,reset,regwrite,Regout1,Regout1_o);
	register32bit_PC regout2(clk,reset,regwrite,Regout2,Regout2_o);
	//register32bit_PC LuiOut(clk,reset,regwrite,luiout,luiout_o);
	//register32bit_PC RegRs2(clk,reset,regwrite,regrs2,regrs2_o);
	//register32bit_PC Memout(clk,reset,regwrite,memout,memout_o);
	register5bit Rd1(clk,reset,regwrite,rd1,rd1_o);
	register5bit Rd2(clk,reset,regwrite,rd2,rd2_o);
	register1bit regwr1(clk,reset,regwrite,regWrite1,regWrite1_o);
	register1bit regwr2(clk,reset,regwrite,regWrite2,regWrite2_o);
	//register1bit memtoreg2(clk,reset,regwrite,MemtoReg2,MemtoReg2_o);
	//register2bit memtoreg1(clk,reset,regwrite,MemtoReg1,MemtoReg1_o);

endmodule

module WB_ID(input clk, input reset,input regwrite,input [31:0] writedata1,input [31:0] writedata2, input [4:0] rd1, input [4:0] rd2, input regWrite1, input regWrite2, output [31:0] writedata1_o, output [31:0] writedata2_o, output [4:0] rd1_o, output [4:0] rd2_o, output regWrite1_o, output regWrite2_o);
	register32bit_PC wrdata1(clk,reset,regwrite,writedata1,writedata1_o);
	register32bit_PC wrdata2(clk,reset,regwrite,writedata2,writedata2_o);
	register5bit Rd1(clk,reset,regwrite,rd1,rd1_o);
	register5bit Rd2(clk,reset,regwrite,rd2,rd2_o);
	register1bit regwr1(clk,reset,regwrite,regWrite1,regWrite1_o);
	register1bit regwr2(clk,reset,regwrite,regWrite2,regWrite2_o);

endmodule

module ctrlCkt_32bit(input [6:0] opcode, input[2:0] funct3, output reg regWrite, output reg [1:0] aluSrcB, output reg [1:0] aluOp, output reg branch, output reg memRead, output reg[1:0] memToReg, output reg IF_ID_flush);
	
	always@(opcode or funct3) begin
		case(opcode)
			7'b0010011:  
			begin
			if(funct3 == 3'b000)  //addi
			begin 
				//PCSrc       = 2'b00;
				regWrite 	= 1'b1;
				aluSrcB 	= 2'b10;
				aluOp 		= 2'b10;
				//regDst 		= 1'b0;
				IF_ID_flush 	= 1'b0;
				//ID_EX_flush	1'b0;
				branch      = 1'b0;
				memRead 	= 1'b0;
				//memWrite 	= 1'b0;
				memToReg 	= 2'b01;
			end
			if(funct3 == 3'b001)  //slli
			begin
				//PCSrc       = 2'b00;
				regWrite 	= 1'b1;
				aluSrcB 	= 2'b01;
				aluOp 		= 2'b00;
				//regDst 		= 1'b0;
				IF_ID_flush 	= 1'b0;
				//ID_EX_flush	1'b0;
				branch      = 1'b0;
				memRead 	= 1'b0;
				//memWrite 	= 1'b0;
				memToReg 	= 2'b01;
			end
			end
			7'b0110011:   //sltu
			begin
				//PCSrc       = 2'b00;
				regWrite 	= 1'b1;
				aluSrcB 	= 2'b00;
				aluOp 		= 2'b01;
				//regDst 		= 1'b0;
				branch      = 1'b0;
				IF_ID_flush 	= 1'b0;
				//ID_EX_flush	1'b0;
				memRead 	= 1'b0;
				//memWrite 	= 1'b0;
				memToReg 	= 2'b01;
			end
			
			7'b0000011:  //lh
			begin
				//PCSrc       = 2'b00;
				regWrite 	= 1'b1;
				aluSrcB 	= 2'b10;
				aluOp 		= 2'b10;
				//regDst 		= 1'b0;
				branch      = 1'b0;
				IF_ID_flush 	= 1'b0;
				//ID_EX_flush	1'b0;
				memRead 	= 1'b1;
				//memWrite 	= 1'b0;
				memToReg 	= 2'b00;
			end
			7'b0110111:  //lui
			begin
				//PCSrc       = 2'b00;
				regWrite 	= 1'b1;
				//aluSrcB 	= 2'b10;
				//aluOp 	= 2'b00;
				//regDst 		= 1'b0;
				branch      = 1'b0;
				memRead 	= 1'b0;
				IF_ID_flush 	= 1'b0;
				//ID_EX_flush	1'b0;
				//memWrite 	= 1'b0;
				memToReg 	= 2'b10;
			end
			7'b1100011 : //bltu
			begin
				//PCSrc       = 2'b01;
				regWrite 	= 1'b0;
				aluSrcB 	= 2'b00;
				aluOp 		= 2'b01;
				//regDst 	= 1'b0;
				branch      	= 1'b1;
				IF_ID_flush 	= 1'b1;
				//ID_EX_flush	1'b1;
				memRead 	= 1'b0;
				//memWrite 	= 1'b0;
				//memToReg 	= 2'b0;
			end
			default: begin
				regWrite = 1'b0;
				memRead = 1'b0;
				branch = 1'b0;
				IF_ID_flush = 1'b0;
			end
				
		endcase
	end	
	
endmodule


module ctrlCkt_16bit(input [1:0] opcode, output reg regWrite, output reg aluSrcA, output reg aluSrcB, output reg [1:0] aluOp, output reg regDst, output reg jump, output reg memWrite, output reg memToReg, output reg IF_ID_flush);
	
	always@(opcode) begin
		case(opcode)
			2'b10:  //mv
			begin 
				//PCSrc       = 2'b00;
				regWrite 	= 1'b1;
				//aluSrcA   = 1'b0;
				//aluSrcB 	= 1'b0;
				//aluOp 	= 2'b00;
				regDst 		= 1'b0;
				IF_ID_flush 	= 1'b0;
				jump        = 1'b0;
				//memRead 	= 1'b0;
				memWrite 	= 1'b0;
				memToReg 	= 1'b0;
			end
			2'b00 :  //sw
			begin
				//PCSrc       = 2'b00;
				regWrite 	= 1'b0;
				aluSrcA     = 1'b0;
				aluSrcB 	= 1'b0;
				aluOp 		= 2'b10;
				//regDst 	= 1'b1;
				jump        = 1'b0;
				IF_ID_flush 	= 1'b0;
				//memRead 	= 1'b0;
				memWrite 	= 1'b1;
				//memToReg 	= 1'b0;
			end
			2'b01:   //jalr
			begin
				//PCSrc       = 2'b10;
				regWrite 	= 1'b1;
				aluSrcA     = 1'b1;
				aluSrcB 	= 1'b1;
				aluOp 		= 2'b10;
				regDst 		= 1'b1;
				jump        = 1'b1;
				IF_ID_flush 	= 1'b1;
				//memRead 	= 1'b0;
				memWrite 	= 1'b0;
				memToReg 	= 1'b1;
			end
			default: begin
				regWrite = 1'b0;
				memWrite = 1'b0;
				jump = 1'b0;
				IF_ID_flush = 1'b0;
			end
		endcase
	end
endmodule

module ForwardingUnit(input EX_MEM_regWrite_1, input EX_MEM_regWrite_2, input MEM_WB_regWrite_1, input MEM_WB_regWrite_2, 
	input WB_ID_regWrite_1, input WB_ID_regWrite_2, input [4:0] EX_MEM_rd_1, input [4:0] EX_MEM_rd_2, input [4:0] MEM_WB_rd_1, input [4:0] MEM_WB_rd_2,	input [4:0] WB_ID_rd_1, input [4:0] WB_ID_rd_2, input [4:0] ID_EX_rs_1, input [4:0] ID_EX_rt_1, input [4:0] ID_EX_rs_2, input [4:0] ID_EX_rt_2, input [1:0] EX_MEM_memToReg, output reg [2:0] forward_A_1, output reg [2:0] forward_B_1,	output reg [2:0] forward_A_2, output reg [2:0] forward_B_2);

	always @(EX_MEM_regWrite_1 or EX_MEM_regWrite_2 or MEM_WB_regWrite_1 or MEM_WB_regWrite_2 or WB_ID_regWrite_1 or WB_ID_regWrite_2 or EX_MEM_rd_1 or EX_MEM_rd_2 
		or MEM_WB_rd_1 or MEM_WB_rd_2 or WB_ID_rd_1 or WB_ID_rd_2 or ID_EX_rs_1 or ID_EX_rt_1 or ID_EX_rs_2 or ID_EX_rt_2) begin

		///////////////////  Forward A 1         ////////////////////////////////
		if((EX_MEM_regWrite_1 == 1'b1) && (EX_MEM_rd_1 == ID_EX_rs_1)) begin	//this takes care of the EX hazard for 32 bit pipeline
			if(EX_MEM_memToReg == 2'b10)
				forward_A_1 = 3'b001;
			else
				forward_A_1 = 3'b010;
		end

		else if((EX_MEM_regWrite_2 == 1'b1) && (EX_MEM_rd_2 == ID_EX_rs_1)) begin	//this takes care of the EX hazard for 16 bit pipeline
			forward_A_1 = 3'b101;
		end

		else if((MEM_WB_regWrite_1 == 1'b1) && (MEM_WB_rd_1 == ID_EX_rs_1)) begin 	//this takes care of the MEM hazard for 32 bit pipeline
			forward_A_1 = 3'b011;
		end	

		else if((MEM_WB_regWrite_2 == 1'b1) && (MEM_WB_rd_2 == ID_EX_rs_1)) begin 	//this takes care of the MEM hazard for 16 bit pipeline
			forward_A_1 = 3'b110;
		end	

		else if ((WB_ID_regWrite_1 == 1'b1) && (WB_ID_rd_1 == ID_EX_rs_1)) begin	//this takes care of the WB hazard for 32 bit pipeline
			forward_A_1 = 3'b100;
		end

		else if ((WB_ID_regWrite_2 == 1'b1) && (WB_ID_rd_2 == ID_EX_rs_1)) begin	//this takes care of the WB hazard for 16 bit pipeline
			forward_A_1 = 3'b111;	
		end

		else begin
			forward_A_1 = 3'b000;
		end



		///////////////////////  Forward B 1       ///////////////////////////


		if((EX_MEM_regWrite_1 == 1'b1) && (EX_MEM_rd_1 == ID_EX_rt_1)) begin	//this takes care of the EX hazard for 32 bit pipeline
			if(EX_MEM_memToReg == 2'b10)
				forward_B_1 = 3'b001;
			else
				forward_B_1 = 3'b010;
		end

		else if((EX_MEM_regWrite_2 == 1'b1) && (EX_MEM_rd_2 == ID_EX_rt_1)) begin	//this takes care of the EX hazard for 16 bit pipeline
			forward_B_1 = 3'b101;
		end

		else if((MEM_WB_regWrite_1 == 1'b1) && (MEM_WB_rd_1 == ID_EX_rt_1)) begin 	//this takes care of the MEM hazard for 32 bit pipeline
			forward_B_1 = 3'b011;
		end	

		else if((MEM_WB_regWrite_2 == 1'b1) && (MEM_WB_rd_2 == ID_EX_rt_1)) begin 	//this takes care of the MEM hazard for 16 bit pipeline
			forward_B_1 = 3'b110;
		end	

		else if ((WB_ID_regWrite_1 == 1'b1) && (WB_ID_rd_1 == ID_EX_rt_1)) begin	//this takes care of the WB hazard for 32 bit pipeline
			forward_B_1 = 3'b100;
		end

		else if ((WB_ID_regWrite_2 == 1'b1) && (WB_ID_rd_2 == ID_EX_rt_1)) begin	//this takes care of the WB hazard for 16 bit pipeline
			forward_B_1 = 3'b111;	
		end

		else begin
			forward_B_1 = 3'b000;
		end


		//////////////////////// Forward A 2       ///////////////////////////////

		if((EX_MEM_regWrite_1 == 1'b1) && (EX_MEM_rd_1 == ID_EX_rs_2)) begin	//this takes care of the EX hazard for 32 bit pipeline
			if(EX_MEM_memToReg == 2'b10)
				forward_A_2 = 3'b001;
			else
				forward_A_2 = 3'b010;
		end

		else if((EX_MEM_regWrite_2 == 1'b1) && (EX_MEM_rd_2 == ID_EX_rs_2)) begin	//this takes care of the EX hazard for 16 bit pipeline
			forward_A_2 = 3'b101;
		end

		else if((MEM_WB_regWrite_1 == 1'b1) && (MEM_WB_rd_1 == ID_EX_rs_2)) begin 	//this takes care of the MEM hazard for 32 bit pipeline
			forward_A_2 = 3'b011;
		end	

		else if((MEM_WB_regWrite_2 == 1'b1) && (MEM_WB_rd_2 == ID_EX_rs_2)) begin 	//this takes care of the MEM hazard for 16 bit pipeline
			forward_A_2 = 3'b110;
		end	

		else if ((WB_ID_regWrite_1 == 1'b1) && (WB_ID_rd_1 == ID_EX_rs_2)) begin	//this takes care of the WB hazard for 32 bit pipeline
			forward_A_2 = 3'b100;
		end

		else if ((WB_ID_regWrite_2 == 1'b1) && (WB_ID_rd_2 == ID_EX_rs_2)) begin	//this takes care of the WB hazard for 16 bit pipeline
			forward_A_2 = 3'b111;	
		end

		else begin
			forward_A_2 = 3'b000;
		end

		////////////////////////  Forward B 2   ////////////////////////////////////


		if((EX_MEM_regWrite_1 == 1'b1) && (EX_MEM_rd_1 == ID_EX_rt_2)) begin	//this takes care of the EX hazard for 32 bit pipeline
			if(EX_MEM_memToReg == 2'b10)
				forward_B_2 = 3'b001;
			else
				forward_B_2 = 3'b010;
		end

		else if((EX_MEM_regWrite_2 == 1'b1) && (EX_MEM_rd_2 == ID_EX_rt_2)) begin	//this takes care of the EX hazard for 16 bit pipeline
			forward_B_2 = 3'b101;
		end

		else if((MEM_WB_regWrite_1 == 1'b1) && (MEM_WB_rd_1 == ID_EX_rt_2)) begin 	//this takes care of the MEM hazard for 32 bit pipeline
			forward_B_2 = 3'b011;
		end	

		else if((MEM_WB_regWrite_2 == 1'b1) && (MEM_WB_rd_2 == ID_EX_rt_2)) begin 	//this takes care of the MEM hazard for 16 bit pipeline
			forward_B_2 = 3'b110;
		end	

		else if ((WB_ID_regWrite_1 == 1'b1) && (WB_ID_rd_1 == ID_EX_rt_2)) begin	//this takes care of the WB hazard for 32 bit pipeline
			forward_B_2 = 3'b100;
		end

		else if ((WB_ID_regWrite_2 == 1'b1) && (WB_ID_rd_2 == ID_EX_rt_2)) begin	//this takes care of the WB hazard for 16 bit pipeline
			forward_B_2 = 3'b111;	
		end

		else begin
			forward_B_2 = 3'b000;
		end
	end	

endmodule

module HazardDetectionUnit(input ID_EX_MemRead, input [4:0] ID_EX_rd_1, input [4:0] IF_ID_rs_1, input [4:0] IF_ID_rt_1,	input [4:0] IF_ID_rs_2, input [4:0] IF_ID_rt_2, output reg PC_Write, output reg IF_ID_Write, output reg hazardControl);
	
	always @(ID_EX_MemRead or ID_EX_rd_1 or IF_ID_rs_1 or IF_ID_rt_1 or IF_ID_rs_2 or IF_ID_rt_2) begin
	
		if(((ID_EX_MemRead == 1'b1) && ((ID_EX_rd_1 == IF_ID_rs_1) || (ID_EX_rd_1 == IF_ID_rt_1))) || ((ID_EX_MemRead == 1'b1) && ((ID_EX_rd_1 == IF_ID_rs_2) || (ID_EX_rd_1 == IF_ID_rt_2))) )begin
			PC_Write = 1'b0;
			IF_ID_Write = 1'b0;
			hazardControl = 1'b1;

		end

		else begin
			PC_Write = 1'b1;
			IF_ID_Write = 1'b1;
			hazardControl = 1'b0;
		end
	end

endmodule

module mux8to1(input [31:0] outR0, input [31:0] outR1, input [31:0] outR2, input [31:0] outR3,
	input [31:0] outR4, input [31:0] outR5, input [31:0] outR6, input [31:0] outR7,
	input [2:0] Sel, output reg [31:0] outBus);

	always@(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,Sel)
		case(Sel)
			3'd0:outBus=outR0;
			3'd1:outBus=outR1;
			3'd2:outBus=outR2;
			3'd3:outBus=outR3;
			3'd4:outBus=outR4;
			3'd5:outBus=outR5;
			3'd6:outBus=outR6;
			3'd7:outBus=outR7;
		endcase
endmodule

module mux4to1(input [31:0] outR0, input [31:0] outR1, input [31:0] outR2, input [31:0] outR3,
	input [1:0] Sel, output reg [31:0] outBus);

	always@(outR0,outR1,outR2,outR3,Sel)
		case(Sel)
			2'd0:outBus=outR0;
			2'd1:outBus=outR1;
			2'd2:outBus=outR2;
			2'd3:outBus=outR3;
		endcase
endmodule

module mux2to1(input [31:0] outR0, input [31:0] outR1, input Sel, output reg [31:0] outBus);

	always@(outR0,outR1,Sel)
		case(Sel)
			1'd0:outBus=outR0;
			1'd1:outBus=outR1;
		endcase
endmodule

module mux2to1_1_bit(input outR0, input outR1, input Sel, output reg outBus);

	always@(outR0,outR1,Sel)
		case(Sel)
			1'd0:outBus=outR0;
			1'd1:outBus=outR1;
		endcase
endmodule

module mux2to1_5_bit(input [4:0] outR0, input [4:0] outR1, input Sel, output reg [4:0] outBus); //Not used anywhere

	always@(outR0,outR1,Sel)
		case(Sel)
			1'd0:outBus=outR0;
			1'd1:outBus=outR1;
		endcase
endmodule

module BranchHazard(input [4:0] IF_ID_rs, input [4:0] IF_ID_rt, input [4:0] ID_EX_rd1, input regwrite1, input [4:0] ID_EX_rd2, input regwrite2,input branchdetect, input EX_MEM_memread, input [4:0] EX_MEM_rd , output reg PCWrite, output reg IF_ID_write, output reg hazardControl);
	always@(IF_ID_rs,IF_ID_rt,ID_EX_rd1,ID_EX_rd2,branchdetect,EX_MEM_memread,EX_MEM_rd)
		begin
			if((((regwrite1==1'b1) && (IF_ID_rs == ID_EX_rd1) && (branchdetect == 1'b1)) || ((regwrite1==1'b1) && (IF_ID_rt == ID_EX_rd1)&& (branchdetect == 1'b1))) || (((regwrite2==1'b1) && (IF_ID_rs == ID_EX_rd2)&& (branchdetect == 1'b1)) || ((regwrite2==1'b1) && (IF_ID_rt == ID_EX_rd2)&& (branchdetect == 1'b1))))
				begin
					PCWrite=1'b0;
					IF_ID_write=1'b0;
					hazardControl=1'b1;

				end
			else if(EX_MEM_memread == 1'b1 && branchdetect == 1'b1 &&((IF_ID_rs== EX_MEM_rd)||(IF_ID_rt==EX_MEM_rd)))
				begin
					PCWrite=1'b0;
					IF_ID_write=1'b0;
					hazardControl=1'b1;
				end
			else begin
				PCWrite=1'b1;
					IF_ID_write=1'b1;
					hazardControl=1'b0;
			end
		end
endmodule

module BranchForward(input EX_MEM_regWrite_1, input EX_MEM_regWrite_2, input MEM_WB_regWrite_1, input MEM_WB_regWrite_2, 
	 input [4:0] EX_MEM_rd_1, input [4:0] EX_MEM_rd_2, input [4:0] MEM_WB_rd_1, input [4:0] MEM_WB_rd_2, input [4:0] IF_ID_rs_1, input [4:0] IF_ID_rt_1, input [1:0] EX_MEM_memToReg, output reg [2:0]forward_A_1, output reg [2:0] forward_B_1);

	always@(EX_MEM_regWrite_1, EX_MEM_regWrite_2, MEM_WB_regWrite_1, MEM_WB_regWrite_2,  EX_MEM_rd_1, EX_MEM_rd_2, MEM_WB_rd_1, MEM_WB_rd_2, IF_ID_rs_1, IF_ID_rt_1, EX_MEM_memToReg)
		begin
			if((EX_MEM_regWrite_1 == 1'b1) && (EX_MEM_rd_1 == IF_ID_rs_1)) begin	//this takes care of the EX hazard for 32 bit pipeline
			if(EX_MEM_memToReg == 2'b10)
				forward_A_1 = 3'b001;
			else
				forward_A_1 = 3'b010;
			end
			else if((EX_MEM_regWrite_2 == 1'b1) && (EX_MEM_rd_2 == IF_ID_rs_1)) begin	//this takes care of the EX hazard for 16 bit pipeline
			forward_A_1 = 3'b101;
			end
			else if((MEM_WB_regWrite_1 == 1'b1) && (MEM_WB_rd_1 == IF_ID_rs_1)) begin 	//this takes care of the MEM hazard for 32 bit pipeline
			forward_A_1 = 3'b011;
		end	

		else if((MEM_WB_regWrite_2 == 1'b1) && (MEM_WB_rd_2 == IF_ID_rs_1)) begin 	//this takes care of the MEM hazard for 16 bit pipeline
			forward_A_1 = 3'b110;
		end	

		else begin
			forward_A_1 = 3'b000;
		end

		if((EX_MEM_regWrite_1 == 1'b1) && (EX_MEM_rd_1 == IF_ID_rt_1)) begin	//this takes care of the EX hazard for 32 bit pipeline
			if(EX_MEM_memToReg == 2'b10)
				forward_B_1 = 3'b001;
			else
				forward_B_1 = 3'b010;
		end

		else if((EX_MEM_regWrite_2 == 1'b1) && (EX_MEM_rd_2 == IF_ID_rt_1)) begin	//this takes care of the EX hazard for 16 bit pipeline
			forward_B_1 = 3'b101;
		end

		else if((MEM_WB_regWrite_1 == 1'b1) && (MEM_WB_rd_1 == IF_ID_rt_1)) begin 	//this takes care of the MEM hazard for 32 bit pipeline
			forward_B_1 = 3'b011;
		end	

		else if((MEM_WB_regWrite_2 == 1'b1) && (MEM_WB_rd_2 == IF_ID_rt_1)) begin 	//this takes care of the MEM hazard for 16 bit pipeline
			forward_B_1 = 3'b110;
		end	

		else begin
			forward_B_1 = 3'b000;
		end
		end
endmodule

module comparator(input [31:0] in1, input [31:0] in2, output reg out);
	always @(in1 or in2) begin
		if($unsigned(in1) < $unsigned(in2)) begin
			out = 1'b1;
		end
		else begin
			out = 1'b0;
		end
	end
endmodule 
module ctrlCkt(input clk, input reset, input phit, input cmiss, input dirty, input write, input p_valid_addr,
			output reg flip , output reg p_stall, output reg p_data_wrt, output reg m_data_wrt, 
			output reg write_back, output reg mru_update, output reg lru_update);    

	reg [3:0] Cstate, Nstate;
	always @(negedge clk or reset)
	begin
	if(reset == 1)
		begin			
			Cstate = 4'd15; 
			flip = 1'b0;
			Nstate = 4'd15;
			p_stall = 1'b0;
			p_data_wrt = 1'b0;
			m_data_wrt = 1'b0;
			write_back = 1'b0;
			mru_update = 1'b0;
			lru_update = 1'b0;
		end
	else
		 begin
		  Cstate=Nstate;
		 end
	end
	
	always @(Cstate or p_valid_addr)
	begin
		case(Cstate)
			// phit and wrt ?
			4'd0 	: case({phit,write})  
						2'b00 :
						begin
							flip = 1'b1;
							Nstate = 4'd1;	// prediction miss and read 
							p_stall = 1'b1;
							p_data_wrt = 1'b0;
							m_data_wrt = 1'b0;
							write_back = 1'b0;
							mru_update = 1'b0;
							lru_update = 1'b0;
						end
						2'b01 :
						begin
							flip = 1'b1;
							Nstate = 4'd2; // prediction miss and write
							p_stall = 1'b0;
							m_data_wrt = 1'b0;
							write_back = 1'b0;
							mru_update = 1'b0;
							lru_update = 1'b0;
						end
						2'b10 :
						begin
							flip = 1'b0;
							Nstate = 4'd15;	// prediction hit and read
							p_stall = 1'b0;
							p_data_wrt = 1'b0;
							m_data_wrt = 1'b0;
							write_back = 1'b0;
							mru_update = 1'b0; //
							lru_update = 1'b0;
						end
						2'b11 :		// prediction hit and write
						begin
							flip = 1'b0;
							Nstate = 4'd14;
							p_stall = 1'b1;
							p_data_wrt = 1'b1;
							m_data_wrt = 1'b0;
							write_back = 1'b0;
							mru_update = 1'b0;  //
							lru_update = 1'b0;
						end
					endcase
			// cmiss and dirty (read)?
			4'd1	: 
			begin
			flip = 1'b1;
			casex({cmiss,dirty})
				2'b0x :
						begin
						Nstate = 4'd15;  // cache hit 
						p_stall = 1'b0;
						p_data_wrt = 1'b0;
						m_data_wrt = 1'b0;
						write_back = 1'b0;
						mru_update = 1'b1;
						lru_update = 1'b1;
						end
				2'b10 :			// cache miss and clean
						begin
						Nstate = 4'd12; 
						p_stall = 1'b1;
						p_data_wrt = 1'b0;
						m_data_wrt = 1'b1;
						write_back = 1'b0;
						mru_update = 1'b1;
						lru_update = 1'b1;
						end
				2'b11 : 		// cache miss and dirty 
						begin
						Nstate = 4'd13; 
						p_stall = 1'b1;
						p_data_wrt = 1'b0;
						m_data_wrt = 1'b0;
						write_back = 1'b1;
						mru_update = 1'b1;
						lru_update = 1'b1;
						end
					endcase
			end
					
			//  cmiss and dirty (write) ?		
			4'd2	: 
			begin
			flip =1'b1;
			casex({cmiss,dirty})
					2'b0x :
						begin
						Nstate = 4'd14; // cache hit
						p_stall = 1'b1;
						p_data_wrt = 1'b1;
						m_data_wrt = 1'b0;
						write_back = 1'b0;
						mru_update = 1'b1;
						lru_update = 1'b1;
						end
					2'b10 :			// cache miss and clean
						begin
						Nstate = 4'd11; 
						p_stall = 1'b1;
						p_data_wrt = 1'b0;
						m_data_wrt = 1'b1;
						write_back = 1'b0;
						mru_update = 1'b1;
						lru_update = 1'b1;
						end
					2'b11 : 		// cache miss and dirty 
						begin
						Nstate = 4'd10;
						p_stall = 1'b1;
						p_data_wrt = 1'b0;
						m_data_wrt = 1'b0;
						write_back = 1'b1;
						mru_update = 1'b1;
						lru_update = 1'b1;
						end
					endcase
			end
			
			// write back and replace write and done
			4'd10	:
			begin
				flip = 1'b0;
				Nstate = 4'd11;
				p_stall = 1'b1;
				p_data_wrt = 1'b0;
				m_data_wrt = 1'b1;
				write_back = 1'b0;
				mru_update = 1'b0;
				lru_update = 1'b0;
			end
			// replace and write and done
			4'd11	: 
			begin
				flip = 1'b0;
				Nstate = 4'd14;
				p_stall = 1'b1;
				p_data_wrt = 1'b1;
				m_data_wrt = 1'b0;
				write_back = 1'b0;
				mru_update = 1'b0;
				lru_update = 1'b0;
			end
			// replace and done
			4'd12	: 
			begin
				flip = 1'b0;
				Nstate = 4'd15;
				p_stall = 1'b0;
				p_data_wrt = 1'b0;
				m_data_wrt = 1'b0;
				write_back = 1'b0;
				mru_update = 1'b0;
				lru_update = 1'b0;
			end
			// write back and replace and read 
			4'd13	: 
			begin
				flip = 1'b0;
				Nstate = 4'd12;
				p_stall = 1'b1;
				p_data_wrt = 1'b0;
				m_data_wrt = 1'b1;
				write_back = 1'b0;
				mru_update = 1'b0;
				lru_update = 1'b0;
			end			
			// write and done
			4'd14	: 
			begin
				flip = 1'b0;
				Nstate = 4'd15;
				p_stall = 1'b0;
				p_data_wrt = 1'b0;
				p_data_wrt = 1'b0;
				m_data_wrt = 1'b0;
				write_back = 1'b0;
				mru_update = 1'b0;
				lru_update = 1'b0;
			end
			// done or read 
			4'd15	: 
			begin
				flip = 1'b0;
				if(p_valid_addr==1'b1)
					Nstate = 4'd0;
				else Nstate = 4'd15;
				p_stall = 1'b0;
				p_data_wrt = 1'b0;
				m_data_wrt = 1'b0;
				write_back = 1'b0;
				mru_update = 1'b0;
				lru_update = 1'b0;
			end
	endcase
	end
endmodule

//d FF init
module D_FFx(input clk, input reset, input regWrite, input d, output reg q);
    always @(negedge clk)
    begin
        if(reset==1) q=0;
        else if(regWrite==1) q=d;
    end
endmodule

module D_FF_Validx (input clk, input reset, input regWrite, input d, output reg q);
    always @(negedge clk)
    begin
        if(reset==1) q=1;
        else if(regWrite==1) q=1;
    end
endmodule

//components
module comparatorx(input enable,input [25:0] tag1, input [25:0] tag2, output reg same);
    always @ (tag1 or tag2)
	begin
		if(enable==1'b1)
			begin
			if(tag1==tag2)
				same=1'b1;
			else
				same=1'b0;
			end 
		else 
			same=1'b0;
	end
endmodule

module encoderx(input [3:0] in1, output reg [1:0] op);
    always@(in1)
    begin
        case(in1)
            4'b0000:op=2'b00;
            4'b0001:op=2'b00;
            4'b0010:op=2'b01;
            4'b0100:op=2'b10;
            4'b1000:op=2'b11;
        endcase
    end
endmodule

module decoder2to4x(input [1:0] sel, output reg [3:0] decOut);
    always @ (sel)
    begin
        case (sel)
            2'b00: decOut = 4'b0001;
            2'b01: decOut = 4'b0010;
            2'b10: decOut = 4'b0100;
            2'b11: decOut = 4'b1000;
        endcase
    end
endmodule

module decoder4to16x( input [3:0] sel, output reg [15:0] decOut);
    always @ (sel)
    begin
        case(sel)
            4'b0000: decOut=16'b0000000000000001;
            4'b0001: decOut=16'b0000000000000010;
            4'b0010: decOut=16'b0000000000000100;
            4'b0011: decOut=16'b0000000000001000;
            4'b0100: decOut=16'b0000000000010000;
            4'b0101: decOut=16'b0000000000100000;
            4'b0110: decOut=16'b0000000001000000;
            4'b0111: decOut=16'b0000000010000000;
            4'b1000: decOut=16'b0000000100000000;
            4'b1001: decOut=16'b0000001000000000;
            4'b1010: decOut=16'b0000010000000000;
            4'b1011: decOut=16'b0000100000000000;
            4'b1100: decOut=16'b0001000000000000;
            4'b1101: decOut=16'b0010000000000000;
            4'b1110: decOut=16'b0100000000000000;
            4'b1111: decOut=16'b1000000000000000;
        endcase
    end
endmodule

/*
	MUX init
*/
module mux4to1_64bitsx(input [63:0] data0, input [63:0] data1, input [63:0] data2, input [63:0] data3, input [1:0] sel, output reg [63:0] m_out_block);
	always @ (sel or data0 or data1 or data2 or data3)
	begin
		case(sel)
			2'b00: m_out_block=data0;
			2'b01: m_out_block=data1;
			2'b10: m_out_block=data2;
			2'b11: m_out_block=data3;
		endcase
	end
endmodule

module mux2to1_2bitsx(input [1:0] input0, input [1:0] input1, 
    input sel, output reg [1:0] muxOut);
    always @ (sel or input0 or input1)
    begin
        case (sel)
            1'b0: muxOut = input0;
            1'b1: muxOut = input1;
        endcase
    end
endmodule

module mux4to1_16bitsx(input [15:0] in0, input [15:0] in1, input [15:0] in2, input [15:0] in3,
    input [1:0] sel, output reg [15:0] muxOut);

    always@(sel or in0 or in1 or in2 or in3)
    begin
        case(sel)
            2'b00: muxOut = in0;
            2'b01: muxOut = in1;
            2'b10: muxOut = in2;
            2'b11: muxOut = in3;
        endcase
    end 
                       
endmodule

module mux16to1_1bitx(input input0, input input1, input input2, input input3, input input4, 
    input input5, input input6, input input7, input input8, input input9, input input10, 
    input input11,input input12, input input13, input input14, input input15,
    input [3:0] sel, output reg muxOut);

    always@(sel or input0 or input1 or input2 or input3 or input4 or input5 or input6 or input7 or input8 or input9 or input10 or input11 or input12 or input13 or input14 or input15)
    begin
        case(sel)
            4'b0000: muxOut = input0;
            4'b0001: muxOut = input1;
            4'b0010: muxOut = input2;
            4'b0011: muxOut = input3;
            4'b0100: muxOut = input4;
            4'b0101: muxOut = input5;
            4'b0110: muxOut = input6;
            4'b0111: muxOut = input7;
            4'b1000: muxOut = input8;
            4'b1001: muxOut = input9;
            4'b1010: muxOut = input10;
            4'b1011: muxOut = input11;
            4'b1100: muxOut = input12;
            4'b1101: muxOut = input13;
            4'b1110: muxOut = input14;
            4'b1111: muxOut = input15;
        endcase
    end
    
endmodule

module mux16to1_2bits(input [1:0] input0, input [1:0] input1, input [1:0] input2, input [1:0] input3, input [1:0] input4, 
  input [1:0] input5, input [1:0] input6, input [1:0] input7, input [1:0] input8, input [1:0] input9, input [1:0] input10, 
  input [1:0] input11,input [1:0] input12, input [1:0] input13, input [1:0] input14, input [1:0] input15,
  input [3:0] sel, output reg [1:0] muxOut);
    
    always@(sel or input0 or input1 or input2 or input3 or input4 or input5 or input6 or input7 or input8 or input9 or input10 or 
            input11 or input12 or input13 or input14 or input15)
    begin
        case(sel)
            4'b0000: muxOut = input0;
            4'b0001: muxOut = input1;
            4'b0010: muxOut = input2;
            4'b0011: muxOut = input3;
            4'b0100: muxOut = input4;
            4'b0101: muxOut = input5;
            4'b0110: muxOut = input6;
            4'b0111: muxOut = input7;
            4'b1000: muxOut = input8;
            4'b1001: muxOut = input9;
            4'b1010: muxOut = input10;
            4'b1011: muxOut = input11;
            4'b1100: muxOut = input12;
            4'b1101: muxOut = input13;
            4'b1110: muxOut = input14;
            4'b1111: muxOut = input15;
        endcase
    end
    
endmodule

module mux16to1_16bitsx(input [15:0] input0, input [15:0] input1, input [15:0] input2, input [15:0] input3, input [15:0] input4, 
  input [15:0] input5, input [15:0] input6, input [15:0] input7, input [15:0] input8, input [15:0] input9, input [15:0] input10, 
  input [15:0] input11, input [15:0] input12, input [15:0] input13, input [15:0] input14, input [15:0] input15,
  input [3:0] sel, output reg [15:0] muxOut);
  
    always@(sel or input0 or input1 or input2 or input3 or input4 or input5 or input6 or input7 or input8 or input9 or input10 or 
            input11 or input12 or input13 or input14 or input15)
    begin
        case(sel)
            4'b0000: muxOut = input0;
            4'b0001: muxOut = input1;
            4'b0010: muxOut = input2;
            4'b0011: muxOut = input3;
            4'b0100: muxOut = input4;
            4'b0101: muxOut = input5;
            4'b0110: muxOut = input6;
            4'b0111: muxOut = input7;
            4'b1000: muxOut = input8;
            4'b1001: muxOut = input9;
            4'b1010: muxOut = input10;
            4'b1011: muxOut = input11;
            4'b1100: muxOut = input12;
            4'b1101: muxOut = input13;
            4'b1110: muxOut = input14;
            4'b1111: muxOut = input15;
        endcase
    end

endmodule

module mux16to1_26bitsx(input [25:0] input0, input [25:0] input1, input [25:0] input2, input [25:0] input3, input [25:0] input4, 
  input [25:0] input5, input [25:0] input6, input [25:0] input7,input [25:0] input8, input [25:0] input9, input [25:0] input10, 
  input [25:0] input11,input [25:0] input12, input [25:0] input13, input [25:0] input14, input [25:0] input15,
  input [3:0] sel, output reg [25:0] muxOut);

    always@(sel or input0 or input1 or input2 or input3 or input4 or input5 or input6 or input7 or input8 or input9 or input10 or 
            input11 or input12 or input13 or input14 or input15)
    begin
        case(sel)
            4'b0000: muxOut = input0;
            4'b0001: muxOut = input1;
            4'b0010: muxOut = input2;
            4'b0011: muxOut = input3;
            4'b0100: muxOut = input4;
            4'b0101: muxOut = input5;
            4'b0110: muxOut = input6;
            4'b0111: muxOut = input7;
            4'b1000: muxOut = input8;
            4'b1001: muxOut = input9;
            4'b1010: muxOut = input10;
            4'b1011: muxOut = input11;
            4'b1100: muxOut = input12;
            4'b1101: muxOut = input13;
            4'b1110: muxOut = input14;
            4'b1111: muxOut = input15;
        endcase
    end

endmodule

module mux16to1_64bitsx(input [63:0] input0, input [63:0] input1, input [63:0] input2, input [63:0] input3, input [63:0] input4, 
  input [63:0] input5, input [63:0] input6, input [63:0] input7,input [63:0] input8, input [63:0] input9, input [63:0] input10, 
  input [63:0] input11,input [63:0] input12, input [63:0] input13, input [63:0] input14, input [63:0] input15,
  input [3:0] sel, output reg [63:0] muxOut);

    always@(sel or input0 or input1 or input2 or input3 or input4 or input5 or input6 or input7 or input8 or input9 or input10 or 
            input11 or input12 or input13 or input14 or input15)
    begin
        case(sel)
            4'b0000: muxOut = input0;
            4'b0001: muxOut = input1;
            4'b0010: muxOut = input2;
            4'b0011: muxOut = input3;
            4'b0100: muxOut = input4;
            4'b0101: muxOut = input5;
            4'b0110: muxOut = input6;
            4'b0111: muxOut = input7;
            4'b1000: muxOut = input8;
            4'b1001: muxOut = input9;
            4'b1010: muxOut = input10;
            4'b1011: muxOut = input11;
            4'b1100: muxOut = input12;
            4'b1101: muxOut = input13;
            4'b1110: muxOut = input14;
            4'b1111: muxOut = input15;
        endcase
    end

endmodule

/*
	tag Reg
*/
module tagRegisterx(input clk, input reset, input regWrite, input [25:0] inputTag, output [25:0] ouputTag);

    D_FFx d0 (clk, reset, regWrite, inputTag[0], ouputTag[0]);
    D_FFx d1 (clk, reset, regWrite, inputTag[1], ouputTag[1]);
    D_FFx d2 (clk, reset, regWrite, inputTag[2], ouputTag[2]);
    D_FFx d3 (clk, reset, regWrite, inputTag[3], ouputTag[3]);
    D_FFx d4 (clk, reset, regWrite, inputTag[4], ouputTag[4]);
    D_FFx d5 (clk, reset, regWrite, inputTag[5], ouputTag[5]);
    D_FFx d6 (clk, reset, regWrite, inputTag[6], ouputTag[6]);
    D_FFx d7 (clk, reset, regWrite, inputTag[7], ouputTag[7]);
    D_FFx d8 (clk, reset, regWrite, inputTag[8], ouputTag[8]);
    D_FFx d9 (clk, reset, regWrite, inputTag[9], ouputTag[9]);
    D_FFx d10 (clk, reset, regWrite, inputTag[10], ouputTag[10]);
    D_FFx d11 (clk, reset, regWrite, inputTag[11], ouputTag[11]);
    D_FFx d12 (clk, reset, regWrite, inputTag[12], ouputTag[12]);
    D_FFx d13 (clk, reset, regWrite, inputTag[13], ouputTag[13]);
    D_FFx d14 (clk, reset, regWrite, inputTag[14], ouputTag[14]);
    D_FFx d15 (clk, reset, regWrite, inputTag[15], ouputTag[15]);
    D_FFx d16 (clk, reset, regWrite, inputTag[16], ouputTag[16]);
    D_FFx d17 (clk, reset, regWrite, inputTag[17], ouputTag[17]);
    D_FFx d18 (clk, reset, regWrite, inputTag[18], ouputTag[18]);
    D_FFx d19 (clk, reset, regWrite, inputTag[19], ouputTag[19]);
    D_FFx d20 (clk, reset, regWrite, inputTag[20], ouputTag[20]);
    D_FFx d21 (clk, reset, regWrite, inputTag[21], ouputTag[21]);
    D_FFx d22 (clk, reset, regWrite, inputTag[22], ouputTag[22]);
    D_FFx d23 (clk, reset, regWrite, inputTag[23], ouputTag[23]);
    D_FFx d24 (clk, reset, regWrite, inputTag[24], ouputTag[24]);
    D_FFx d25 (clk, reset, regWrite, inputTag[25], ouputTag[25]);

endmodule

module tagArrayx(input clk, input reset, input write, input [3:0] lineIndex,  input [25:0] inputTag, output [25:0] outputTag);
    
    wire [15:0] lineIndexWire;
    wire[25:0] tag0, tag1, tag2, tag3, tag4, tag5, tag6, tag7, tag8, tag9, tag10, tag11, tag12, tag13, tag14, tag15;
    decoder4to16x decoder(lineIndex, lineIndexWire);
    tagRegisterx tr0 (clk, reset, lineIndexWire[0]&write, inputTag, tag0);
    tagRegisterx tr1 (clk, reset, lineIndexWire[1]&write, inputTag, tag1);
    tagRegisterx tr2 (clk, reset, lineIndexWire[2]&write, inputTag, tag2);
    tagRegisterx tr3 (clk, reset, lineIndexWire[3]&write, inputTag, tag3);
    tagRegisterx tr4 (clk, reset, lineIndexWire[4]&write, inputTag, tag4);
    tagRegisterx tr5 (clk, reset, lineIndexWire[5]&write, inputTag, tag5);
    tagRegisterx tr6 (clk, reset, lineIndexWire[6]&write, inputTag, tag6);
    tagRegisterx tr7 (clk, reset, lineIndexWire[7]&write, inputTag, tag7);
    tagRegisterx tr8 (clk, reset, lineIndexWire[8]&write, inputTag, tag8);
    tagRegisterx tr9 (clk, reset, lineIndexWire[9]&write, inputTag, tag9);
    tagRegisterx tr10 (clk, reset, lineIndexWire[10]&write, inputTag, tag10);
    tagRegisterx tr11 (clk, reset, lineIndexWire[11]&write, inputTag, tag11);
    tagRegisterx tr12 (clk, reset, lineIndexWire[12]&write, inputTag, tag12);
    tagRegisterx tr13 (clk, reset, lineIndexWire[13]&write, inputTag, tag13);
    tagRegisterx tr14 (clk, reset, lineIndexWire[14]&write, inputTag, tag14);
    tagRegisterx tr15 (clk, reset, lineIndexWire[15]&write, inputTag, tag15);
    mux16to1_26bitsx mux(tag0, tag1, tag2, tag3, tag4, tag5, tag6, tag7, tag8, tag9, tag10, tag11, tag12, tag13, tag14, tag15, lineIndex, outputTag);

endmodule

/*
	valid array
*/
module validArrayx(input clk, input reset, input write, input [3:0] lineIndex, input inputValid, output outputValid);

    wire [15:0] validBit;
    wire [15:0] lineIndexWire;
    decoder4to16x decoder(lineIndex, lineIndexWire);
    D_FF_Validx v0 (clk, reset, lineIndexWire[0] & write, inputValid, validBit[0]);
    D_FF_Validx v1 (clk, reset, lineIndexWire[1] & write, inputValid, validBit[1]);
    D_FF_Validx v2 (clk, reset, lineIndexWire[2] & write, inputValid, validBit[2]);
    D_FF_Validx v3 (clk, reset, lineIndexWire[3] & write, inputValid, validBit[3]);
    D_FF_Validx v4 (clk, reset, lineIndexWire[4] & write, inputValid, validBit[4]);
    D_FF_Validx v5 (clk, reset, lineIndexWire[5] & write, inputValid, validBit[5]);
    D_FF_Validx v6 (clk, reset, lineIndexWire[6] & write, inputValid, validBit[6]);
    D_FF_Validx v7 (clk, reset, lineIndexWire[7] & write, inputValid, validBit[7]);
    D_FF_Validx v8 (clk, reset, lineIndexWire[8] & write, inputValid, validBit[8]);
    D_FF_Validx v9 (clk, reset, lineIndexWire[9] & write, inputValid, validBit[9]);
    D_FF_Validx v10 (clk, reset, lineIndexWire[10] & write, inputValid, validBit[10]);
    D_FF_Validx v11 (clk, reset, lineIndexWire[11] & write, inputValid, validBit[11]);
    D_FF_Validx v12 (clk, reset, lineIndexWire[12] & write, inputValid, validBit[12]);
    D_FF_Validx v13 (clk, reset, lineIndexWire[13] & write, inputValid, validBit[13]);
    D_FF_Validx v14 (clk, reset, lineIndexWire[14] & write, inputValid, validBit[14]);
    D_FF_Validx v15 (clk, reset, lineIndexWire[15] & write, inputValid, validBit[15]);
    mux16to1_1bitx mux(validBit[0],validBit[1],validBit[2],validBit[3],validBit[4],validBit[5],validBit[6],
    	validBit[7],validBit[8],validBit[9],validBit[10],validBit[11],validBit[12],validBit[13],validBit[14],validBit[15],lineIndex,outputValid);

endmodule

module dataRegx(input clk, input reset, input write, input [15:0] inputDataReg, output [15:0] outputData);

    D_FFx dr0 (clk, reset, write, inputDataReg[0], outputData[0]);
    D_FFx dr1 (clk, reset, write, inputDataReg[1], outputData[1]);
    D_FFx dr2 (clk, reset, write, inputDataReg[2], outputData[2]);
    D_FFx dr3 (clk, reset, write, inputDataReg[3], outputData[3]);
    D_FFx dr4 (clk, reset, write, inputDataReg[4], outputData[4]);
    D_FFx dr5 (clk, reset, write, inputDataReg[5], outputData[5]);
    D_FFx dr6 (clk, reset, write, inputDataReg[6], outputData[6]);
    D_FFx dr7 (clk, reset, write, inputDataReg[7], outputData[7]);
    D_FFx dr8 (clk, reset, write, inputDataReg[8], outputData[8]);
    D_FFx dr9 (clk, reset, write, inputDataReg[9], outputData[9]);
    D_FFx dr10 (clk, reset, write, inputDataReg[10], outputData[10]);
    D_FFx dr11 (clk, reset, write, inputDataReg[11], outputData[11]);
    D_FFx dr12 (clk, reset, write, inputDataReg[12], outputData[12]);
    D_FFx dr13 (clk, reset, write, inputDataReg[13], outputData[13]);
    D_FFx dr14 (clk, reset, write, inputDataReg[14], outputData[14]);
    D_FFx dr15 (clk, reset, write, inputDataReg[15], outputData[15]);

endmodule

module dataBlockx(input clk, input reset, input p_data_wrt, input m_data_wrt, input [1:0] offset, input [31:0] p_in_data, input [63:0] inputBlock, output [63:0] outputBlock);
    
    reg[15:0] data0,data1,data2,data3;
    wire[15:0] dataOut0,dataOut1,dataOut2,dataOut3;
    reg [3:0] offsetWire;
    always @ (negedge clk)
    begin
    	if(m_data_wrt == 1)
    	begin
    		offsetWire=4'b1111;
    		data0 = inputBlock[15:0];
    		data1 = inputBlock[31:16];
    		data2 = inputBlock[47:32];
    		data3 = inputBlock[63:48];
    	end
    	else if (p_data_wrt == 1)
    		if(offset == 2'b00)
    		begin
    			offsetWire=4'b0011;
    			data0 = p_in_data[15:0];
    			data1 = p_in_data[31:16];
    		end
    		else if (offset == 2'b10)
    		begin
    			offsetWire=4'b1100;
    			data2 = p_in_data[15:0];
    			data3 = p_in_data[31:16];
    		end
			else
				offsetWire=4'b0000;
	end

    dataRegx dr0(clk,reset,offsetWire[0],data0,dataOut0);
    dataRegx dr1(clk,reset,offsetWire[1],data1,dataOut1);
    dataRegx dr2(clk,reset,offsetWire[2],data2,dataOut2);
    dataRegx dr3(clk,reset,offsetWire[3],data3,dataOut3);   
	assign outputBlock = {dataOut3, dataOut2, dataOut1, dataOut0};

endmodule

module dataBlockArrayx(input clk, input reset, input p_data_wrt, input m_data_wrt, input [1:0] offset, input [3:0] lineIndex, input [31:0] p_in_data, input [63:0] inputBlock, output [63:0] outputData);
    
    wire [15:0] lineIndexWire;
    wire[63:0] data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15; 
    decoder4to16x dectag(lineIndex, lineIndexWire);    
    dataBlockx db0 (clk, reset, lineIndexWire[0]&p_data_wrt, lineIndexWire[0]&m_data_wrt, offset, p_in_data, inputBlock, data0);
    dataBlockx db1 (clk, reset, lineIndexWire[1]&p_data_wrt, lineIndexWire[1]&m_data_wrt, offset, p_in_data, inputBlock, data1);
    dataBlockx db2 (clk, reset, lineIndexWire[2]&p_data_wrt, lineIndexWire[2]&m_data_wrt, offset, p_in_data, inputBlock, data2);
    dataBlockx db3 (clk, reset, lineIndexWire[3]&p_data_wrt, lineIndexWire[3]&m_data_wrt, offset, p_in_data, inputBlock, data3);
    dataBlockx db4 (clk, reset, lineIndexWire[4]&p_data_wrt, lineIndexWire[4]&m_data_wrt, offset, p_in_data, inputBlock, data4);
    dataBlockx db5 (clk, reset, lineIndexWire[5]&p_data_wrt, lineIndexWire[5]&m_data_wrt, offset, p_in_data, inputBlock, data5);
    dataBlockx db6 (clk, reset, lineIndexWire[6]&p_data_wrt, lineIndexWire[6]&m_data_wrt, offset, p_in_data, inputBlock, data6);
    dataBlockx db7 (clk, reset, lineIndexWire[7]&p_data_wrt, lineIndexWire[7]&m_data_wrt, offset, p_in_data, inputBlock, data7);
    dataBlockx db8 (clk, reset, lineIndexWire[8]&p_data_wrt, lineIndexWire[8]&m_data_wrt, offset, p_in_data, inputBlock, data8);
    dataBlockx db9 (clk, reset, lineIndexWire[9]&p_data_wrt, lineIndexWire[9]&m_data_wrt, offset, p_in_data, inputBlock, data9);
    dataBlockx db10 (clk, reset, lineIndexWire[10]&p_data_wrt, lineIndexWire[10]&m_data_wrt, offset, p_in_data, inputBlock, data10);
    dataBlockx db11 (clk, reset, lineIndexWire[11]&p_data_wrt, lineIndexWire[11]&m_data_wrt, offset, p_in_data, inputBlock, data11);
    dataBlockx db12 (clk, reset, lineIndexWire[12]&p_data_wrt, lineIndexWire[12]&m_data_wrt, offset, p_in_data, inputBlock, data12);
    dataBlockx db13 (clk, reset, lineIndexWire[13]&p_data_wrt, lineIndexWire[13]&m_data_wrt, offset, p_in_data, inputBlock, data13);
    dataBlockx db14 (clk, reset, lineIndexWire[14]&p_data_wrt, lineIndexWire[14]&m_data_wrt, offset, p_in_data, inputBlock, data14);
    dataBlockx db15 (clk, reset, lineIndexWire[15]&p_data_wrt, lineIndexWire[15]&m_data_wrt, offset, p_in_data, inputBlock, data15);
    mux16to1_64bitsx mux (data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, lineIndex, outputData);

endmodule

module MRUx(input clk, input reset, input flip, input write, input [3:0] wayIn, output reg [3:0] wayOut);
	 
   always @(negedge clk)
		if(reset==1)
		begin 
        wayOut=4'd0001;
		end
		else if(flip==1)
		begin
			wayOut={~wayOut[3],~wayOut[2],~wayOut[1],~wayOut[0]};
		end
		else if(write==1'b1)
        begin
            wayOut=wayIn;
        end
endmodule


module lruRegx(input clk, input reset, input regWrite, input [1:0] inputCount, output [1:0] outputCount);

    D_FFx d0 (clk, reset, regWrite, inputCount[0], outputCount[0]);
    D_FFx d1 (clk, reset, regWrite, inputCount[1], outputCount[1]);

endmodule

module lru_updateRegx(input clk,input reset,input [1:0] inputReg0,input [1:0] inputReg1,input [1:0] inputReg2,input [1:0] inputReg3,input update,
input [1:0] match_way_index, output reg [1:0] outputReg0,output reg [1:0] outputReg1,output reg [1:0] outputReg2,output reg [1:0] outputReg3);
    always @ (reset or update or match_way_index)
        begin
				if(reset == 1'b1)
					begin
						outputReg0 = 2'b00;
						outputReg1 = 2'b00;
						outputReg2 = 2'b00;
						outputReg3 = 2'b00;
					end
            else if(update==1)
                begin
						if(inputReg0 != 2'b00)	outputReg0 = inputReg0 - 1;
						if(inputReg1 != 2'b00)	outputReg1 = inputReg1 - 1;
						if(inputReg2 != 2'b00)	outputReg2 = inputReg2 - 1;
						if(inputReg3 != 2'b00)	outputReg3 = inputReg3 - 1;

						case(match_way_index)
							2'b00 : outputReg0 = 2'b11;
							2'b01 : outputReg1 = 2'b11;
							2'b10 : outputReg2 = 2'b11;
							2'b11 : outputReg3 = 2'b11;
						endcase 
                end
        end
endmodule

module getLruWayx(input [1:0] way0,input [1:0] way1,input [1:0] way2,input [1:0] way3, output reg [1:0] lru_way_index);
    
    always @ (way0 or way1 or way2 or way3)
    begin
        if(way0==2'b00)
            lru_way_index = 2'b00;
        else if(way1==2'b00)
            lru_way_index = 2'b01;
        else if(way2==2'b00)
            lru_way_index = 2'b10;
        else
            lru_way_index = 2'b11;
    end

endmodule

module lru_counterx(input clk,input reset,input update,input [1:0] match_way_index,output [1:0] lru_way_index);

    wire [1:0] reg0, reg1, reg2, reg3;
    wire [1:0] newReg0, newReg1, newReg2, newReg3;

    lru_updateRegx u(clk,reset, reg0, reg1, reg2, reg3, update, match_way_index, newReg0, newReg1, newReg2, newReg3);

    lruRegx lr0 (clk, reset, update , newReg0,reg0);
    lruRegx lr1 (clk, reset, update , newReg1,reg1);
    lruRegx lr2 (clk, reset, update , newReg2,reg2);
    lruRegx lr3 (clk, reset, update , newReg3,reg3);

    getLruWayx glw(newReg0, newReg1, newReg2, newReg3, lru_way_index);

endmodule

module LruArrayx(input clk,input reset, input [3:0] lineIndex, input [1:0] lruIn,input write, output [1:0] lruOut);

	// index1 means lru_way_indx1;
	wire [15:0] lineIndexWire; 
	wire [1:0] LruWriteindex;
	wire [1:0] index_lru_out;
	wire [1:0] index0 , index1, index2, index3, index4 , index5, index6, index7, index8 , index9, index10, index11, index12 , index13, index14, index15 ;
	encoderx encoder0(lineIndex,LruWriteindex); // encoding wayIndex
	decoder4to16x decoder0(lineIndex,lineIndexWire); //demuxing lineIndex
	lru_counterx counter0 (clk, reset, (write)&lineIndexWire[0], lruIn, index0);
    lru_counterx counter1 (clk, reset, (write)&lineIndexWire[1], lruIn, index1);
    lru_counterx counter2 (clk, reset, (write)&lineIndexWire[2], lruIn, index2);
    lru_counterx counter3 (clk, reset, (write)&lineIndexWire[3], lruIn, index3);
    lru_counterx counter4 (clk, reset, (write)&lineIndexWire[4], lruIn, index4);
    lru_counterx counter5 (clk, reset, (write)&lineIndexWire[5], lruIn, index5);
    lru_counterx counter6 (clk, reset, (write)&lineIndexWire[6], lruIn, index6);
    lru_counterx counter7 (clk, reset, (write)&lineIndexWire[7], lruIn, index7);
    lru_counterx counter8 (clk, reset, (write)&lineIndexWire[8], lruIn, index8);
    lru_counterx counter9 (clk, reset, (write)&lineIndexWire[9], lruIn, index9);
    lru_counterx counter10 (clk, reset, (write)&lineIndexWire[10], lruIn, index10);
    lru_counterx counter11 (clk, reset, (write)&lineIndexWire[11], lruIn, index11);
    lru_counterx counter12 (clk, reset, (write)&lineIndexWire[12], lruIn, index12);
    lru_counterx counter13 (clk, reset, (write)&lineIndexWire[13], lruIn, index13);
    lru_counterx counter14 (clk, reset, (write)&lineIndexWire[14], lruIn, index14);
    lru_counterx counter15 (clk, reset, (write)&lineIndexWire[14], lruIn, index15);
	 //index_lru_out means final lru value for the given line index
	 mux16to1_2bits mux0(index0 , index1, index2, index3, index4 , index5, index6, index7, 
	index8 , index9, index10, index11, index12 , index13, index14, index15,lineIndex,lruOut);
endmodule

module mux4to2_64bitsx(input [63:0] data0,input [63:0] data1,input [63:0] data2,input [63:0] data3,input [1:0] mru_way , output reg [63:0] data64);

	always @(data0 or data1 or data2 or data3 or mru_way)
	begin
		case(mru_way)
			2'b00 : data64 = data0;
			2'b01 : data64 = data1;
			2'b10 : data64 = data2;
			2'b11 : data64 = data3;
		endcase
	end
	
endmodule

module data_p_outputx(input [63:0] data0, input [63:0] data1, input [63:0] data2, input [63:0] data3, input [1:0] offset, input [1:0] mru_way, output reg [15:0] p_out_data);
wire [63:0] data64;
mux4to2_64bitsx mux(data0, data1, data2, data3, mru_way , data64);
always @ (offset or mru_way or data0 or data1 or data2 or data3 or data64)
	begin
		case(offset)
			2'b00 : p_out_data=data64[15:0]; 
			2'b01: p_out_data=data64[31:16];
			2'b10: p_out_data=data64[47:32];
			2'b11: p_out_data=data64[63:48];
		endcase		
	end
endmodule

module cache(input clk, input reset, input write, input [31:0] p_in_addr,input p_valid_addr, 
		input [31:0] p_in_data,	output p_stall, output [15:0] p_out_data, 
		input [63:0] m_in_block, output [31:0] m_out_addr, output wb, output [63:0] m_out_block);
    
    
    
    wire [3:0] vb;
    wire  [3:0] we;
    wire [1:0] mru_in;
	 wire [3:0] mru_out;
	 wire [25:0] tag;
	 wire [1:0] offset;
    wire [3:0] lineIndex;
	 wire [63:0] data0, data1, data2, data3;
	 wire [25:0] tag0, tag1, tag2, tag3;
	 wire mru_update;
	 wire [3:0] same;
	 wire lru_update;
	 wire [1:0] lru_out;
	 wire [1:0] mru_out2;
	 wire phit;
	 wire cmiss;
	 wire dirty;
	 wire [1:0] match_way_index;
	 
    decoder2to4x d2(mru_in,we);
	
	 encoderx e1(same,match_way_index);
	 
    assign offset       =   p_in_addr[1:0];
    assign tag          =   p_in_addr[31:6];
    assign lineIndex    =   p_in_addr[5:2] ;
	
    dataBlockArrayx dataWay0 (clk, reset, we[0]&p_data_wrt, we[0]&m_data_wrt, offset, lineIndex, p_in_data, m_in_block, data0);
    dataBlockArrayx dataWay1 (clk, reset, we[1]&p_data_wrt, we[1]&m_data_wrt, offset, lineIndex, p_in_data, m_in_block, data1);
    dataBlockArrayx dataWay2 (clk, reset, we[2]&p_data_wrt, we[2]&m_data_wrt, offset, lineIndex, p_in_data, m_in_block, data2);
    dataBlockArrayx dataWay3 (clk, reset, we[3]&p_data_wrt, we[3]&m_data_wrt, offset, lineIndex, p_in_data, m_in_block, data3);
	
    tagArrayx tagWay0 (clk, reset, we[0]&m_data_wrt , lineIndex,  tag, tag0);
    tagArrayx tagWay1 (clk, reset, we[1]&m_data_wrt , lineIndex,  tag, tag1);
    tagArrayx tagWay2 (clk, reset, we[2]&m_data_wrt , lineIndex,  tag, tag2);
    tagArrayx tagWay3 (clk, reset, we[3]&m_data_wrt , lineIndex,  tag, tag3);
	
	assign m_out_addr={tag,lineIndex,2'b00};

    validArrayx validWay0 (clk, reset | we[0]&m_data_wrt, we[0]|wb, lineIndex, we[0]&p_data_wrt, vb[0]);
    validArrayx validWay1 (clk, reset | we[1]&m_data_wrt, we[1]|wb, lineIndex, we[1]&p_data_wrt, vb[1]);
    validArrayx validWay2 (clk, reset | we[2]&m_data_wrt, we[2]|wb, lineIndex, we[2]&p_data_wrt, vb[2]);
    validArrayx validWay3 (clk, reset | we[3]&m_data_wrt, we[3]|wb, lineIndex, we[3]&p_data_wrt, vb[3]);
    
	 
    mux2to1_2bitsx mux1(lru_out,match_way_index,phit, mru_in);
    MRUx mru(clk, reset, flip, mru_update, we ,mru_out);

	wire [1:0] lru_in;
	assign lru_in = mru_in ;
	LruArrayx lru(clk, reset, lineIndex, lru_in, lru_update, lru_out);
	 
   comparatorx c0(mru_out[0], tag,tag0,same[0]);
	comparatorx c1(mru_out[1], tag,tag1,same[1]);
	comparatorx c2(mru_out[2], tag,tag2,same[2]);
	comparatorx c3(mru_out[3], tag,tag3,same[3]);
	 
	assign chit = (same[0]&mru_out[0])|(same[1]&mru_out[1])|(same[2]&mru_out[2])|(same[3]&mru_out[3])&(mru_out[3]&mru_out[2]&mru_out[0]  |mru_out[0]&mru_out[1]&mru_out[2] | mru_out[1]&mru_out[2]&mru_out[3]);
	assign dirty = vb[0] | vb[1] | vb[2] |  vb[3] ;
	assign cmiss = ~chit;
	assign phit = (same[0]&mru_out[0])|(same[1]&mru_out[1])|(same[2]&mru_out[2])|(same[3]&mru_out[3]);
	
	mux4to1_64bitsx dod(data0, data1, data2, data3, mru_out2, m_out_block);
	encoderx dec1(mru_out,mru_out2);
	data_p_outputx dpod(data0, data1, data2, data3, offset, mru_out2 , p_out_data);
	
	ctrlCkt control( clk, reset, phit, cmiss , dirty, write, p_valid_addr, flip , p_stall, p_data_wrt, m_data_wrt, write_back, mru_update, lru_update );
	assign wb=write_back;
endmodule


module Cache_testBench;
	reg clk;
	reg reset;
	reg write;
	reg [31:0] p_in_addr;
	reg p_valid_addr;
	reg [31:0] p_in_data;
	reg [63:0] m_in_block;
	
	wire p_stall;
	wire [15:0] p_out_data;
	wire [31:0] m_out_addr;
	wire wb;
	wire [63:0] m_out_block;
	cache c1(clk, reset, write, p_in_addr,p_valid_addr, 
		p_in_data, p_stall, p_out_data, 
		m_in_block, m_out_addr, wb, m_out_block);
    
	always
	#5 clk=~clk;

	initial
	begin
		reset = 1;
		clk=0;
		reset=1;	
		write=1'b0;			
		p_in_addr=32'd0;	
		p_in_data=32'd0;
		p_valid_addr=1'b0;			
		m_in_block=64'd0;
		
		#20 reset=0;
		
		write=1'b1;			
		p_in_addr=32'd0;	
		p_in_data=32'd15;		
		p_valid_addr=1'b1;			
		
		
		
		# 30 reset = 0;
		
		write=1'b0;			
		p_in_addr=32'd0;			
		p_valid_addr=1'b1;			
			
		#200 $finish;
	end
endmodule
/*
module test_decoder;
	reg [63:0] data0;
	reg [63:0] data1;
	reg [63:0] data2;
	reg [63:0] data3;
	reg [1:0] offset;
	reg [1:0] mru_out2;
	wire [15:0] p_out_data;
	
	
	data_p_outputx dpod(data0, data1, data2, data3, offset, mru_out2 , p_out_data);
	initial
	begin
	data0 = 64'd1;
	data1 = 64'd2;
	data2 = 64'd3;
	data3 = 64'd4;
	offset = 2'b00;
	mru_out2 = 2'b00;
	
	end
		
endmodule
*/
module topModule(input clk, input reset, input [63:0] min, output wb, output [31:0] memadd,output [63:0] memoutb, output [31:0] A, output [31:0] B);

	wire [31:0] Pcp4,jumpc,pcj,branchc,ins1o,ins2o,pcifo,pcb,pcout,wrdata1,wrdata2,rso1,rso2,rto1,rto2,Pcexo;

	wire [63:0] IR;

	wire[4:0] rd1,rd2, ID_EX_rd_1,ID_EX_rd_2;

	wire jumpsel,branchsel,Pcwrite1,Pcwrite2,p1regWrite1,regWrite_1,regWrite_2, ID_EX_MemRead, hazardControl1,hazardControl2, if_id_write1, if_id_write2;
	wire [4:0] rt2ex,rs2ex;
	wire [1:0] memtoregp1,alusrb1,aluop1,aluop2,EXMemtoReg1;

	wire p1branch,p1memread,p1if_flush,EXMemwrite2;

	wire p1regWrite2,alusrb2,alusrca2,regdest,jump,p1memwrite,memtoreg2p1,p1if_flush2;
	wire  p1regWrite1_o, p1regWrite2_o, p1memread_o, p1if_flush_o, p1memwrite_o, p1if_flush2_o;
	wire EX_MEM_regWrite_1, EX_MEM_regWrite_2, MEM_WB_regWrite_2;

	wire [4:0] EX_MEM_rd_1, EX_MEM_rd_2, MEM_WB_rd_1, MEM_WB_rd_2;

	wire [2:0] branch_forward_A_1, branch_forward_B_1;
	wire [31:0] RegRsout1, RegRtout1;
	wire comparatorOut;
	wire id_ex_write,IF_ID_flush_1,IF_ID_flush_2, ID_EX_regWrite1,ID_EX_regWrite2,ID_EX_Memwrite,IDmemToReg2,storew;

	wire [31:0] pcido,IDregrs1,IDregrs2,IDregrt1,IDregrt2,Memout;

	wire [4:0] IDrs1,IDrs2,IDrt1,IDrt2,IDrd2;

	wire [19:0] IDimm;
	wire [1:0] IDaluSrcb1,IDmemToReg1,IDaluop2,IDaluop1,alusrcb1;

	wire cout;
	wire [31:0] jumpval, branchadd;
	wire [2:0] exforward_A_1,exforward_B_1,exforward_A_2,exforward_B_2;
    wire [31:0] afterForwarding_A_1, afterForwarding_B_1, afterForwarding_A_2, afterForwarding_B_2; 
    wire [31:0] Zextout,Sext;
    wire [31:0] alu1in2;
    wire [31:0] alu1out,alu2out;
    wire ex_mem_write,wb_id_write;

	wire [31:0] EXaluout1,EXaluout2;

	wire [4:0] EX_MEM_rd2;
	wire [31:0] Regout1,Regout2;
	wire mem_wb_write,IDregDst, IDbranch, IDjump;
	wire [31:0] WBwritedata1,WBwritedata2,EXluiout,EXregrs2;
	 wire WBregWrite1,WBregWrite2,IDaluSrcb2,IDaluSrca2;
	 wire [4:0] WBrd1,WBrd2,EX_MEM_rd1;
	 wire EX_MEM_memread,p1branch_o,jump_o,IFreset;


	
	mux2to1 m1(Pcp4,jumpc,jumpsel,pcj);

	mux2to1 m2(pcj,branchc,branchsel,pcb);

	register32bit_PC PC(clk,reset,Pcwrite1 & Pcwrite2,pcb,pcout);

	pc_adder add(pcout,32'd4,Pcp4);

	IM iM(clk,reset,pcout[4:0],IR);

	IF_ID if_id(clk,reset,if_id_write1&if_id_write2,p1if_flush2|(p1if_flush&if_id_write2),Pcp4,IR [31:0],IR [63:32],ins2o,ins1o,pcifo);

	signExt11to32 s2(ins2o[12:2],jumpval);
	assign jumpc = pcifo + jumpval;

	rs2extend r1(ins2o[6:2],ins2o[1:0],rt2ex);

	rs2extend r2(ins2o[11:7],ins2o[1:0],rs2ex);

	registerFile rf(clk,reset,regWrite_1,regWrite_2, ins1o[19:15], ins1o[24:20], rd1,rs2ex,rt2ex,rd2,wrdata1,wrdata2,rso1,rto1,rso2,rto2);

	

	ctrlCkt_32bit c1(ins1o[6:0],ins1o[14:12],p1regWrite1,alusrcb1,aluop1,p1branch,p1memread,memtoregp1,p1if_flush);

	ctrlCkt_16bit c2(ins2o[1:0],p1regWrite2,alusrca2,alusrb2,aluop2,regdest,jump,p1memwrite,memtoreg2p1,p1if_flush2);

	HazardDetectionUnit h1(ID_EX_MemRead, ID_EX_rd_1,ins1o[19:15], ins1o[24:20], rs2ex, rt2ex, Pcwrite1, if_id_write1, hazardControl1);

	BranchHazard b1(ins1o[19:15],ins1o[24:20],ID_EX_rd_1,ID_EX_regWrite1,IDrd2,ID_EX_regWrite2,ins1o[6],EX_MEM_memread,EX_MEM_rd_1,Pcwrite2,if_id_write2,hazardControl2);

	assign jumpsel = jump ;
	
	signExt12to32 s3({ins1o[31],ins1o[7],ins1o[30:25],ins1o[11:8]},branchadd);
	assign branchc = branchadd ;
	

	mux2to1_1_bit m3(p1regWrite1, 1'b0, hazardControl1 | hazardControl2 , p1regWrite1_o);

	mux2to1_1_bit m4(p1regWrite2, 1'b0, hazardControl1 | hazardControl2 , p1regWrite2_o);

	mux2to1_1_bit m5(p1branch, 1'b0, hazardControl1 | hazardControl2 , p1branch_o);

	mux2to1_1_bit m6(p1memread, 1'b0, hazardControl1 | hazardControl2 , p1memread_o);

	mux2to1_1_bit m7(p1if_flush, 1'b0, hazardControl1 | hazardControl2 , p1if_flush_o);

	/*mux2to1_1_bit m8(alusrca2, 1'b0, hazardControl1 | hazardControl2 , alusrca2_o);

	mux2to1_1_bit m9(alusrb2, 1'b0, hazardControl1 | hazardControl2 , alusrb2_o);

	mux2to1_1_bit m10(regdest, 1'b0, hazardControl1 | hazardControl2 , regdest_o);
*/
	mux2to1_1_bit m11(jump, 1'b0, hazardControl1 | hazardControl2 , jump_o);

	mux2to1_1_bit m12(p1if_flush2, 1'b0, hazardControl1 | hazardControl2 , p1if_flush2_o);

	mux2to1_1_bit m13(p1memwrite, 1'b0, hazardControl1 | hazardControl2 , p1memwrite_o);

	//mux2to1_1_bit m14(p1regWrite1, 1'b0, hazardControl1 | hazardControl2 , p1regWrite1_o);

	//mux2to1_2_bit(input [1:0] outR0, input [1:0] outR1, input Sel, output reg [1:0] outBus);

	

	BranchForward branchForwarding( EX_MEM_regWrite_1, EX_MEM_regWrite_2, regWrite_1,regWrite_2, 
	EX_MEM_rd_1, EX_MEM_rd_2, rd1, rd2, ins1o[19:15], ins1o[24:20],EXMemtoReg1,branch_forward_A_1, branch_forward_B_1);

	

	mux8to1 m15(rso1, EXluiout, EXaluout1, wrdata1, 32'd0, EXregrs2, wrdata2, 32'd0, branch_forward_A_1, RegRsout1);

	mux8to1 m16(rto1, EXluiout, EXaluout1, wrdata1, 32'd0, EXregrs2, wrdata2, 32'd0, branch_forward_B_1, RegRtout1);

	

	comparator Comparator(RegRsout1, RegRtout1, comparatorOut);

	assign branchsel = p1branch & comparatorOut ;



	////////////////////////////////////////////// EX Stage ///////////////////////////////////

	


	ID_EX id_ex(clk, reset,  id_ex_write, pcifo, rso1,rso2,rto1,rto2, ins1o[19:15],rs2ex,ins1o[24:20],rt2ex,ins1o[11:7],rs2ex,ins1o[31:12],p1regWrite1_o,p1regWrite2_o,alusrcb1,alusrca2, alusrcb2, aluop1, aluop2, regdest, p1branch_o, jump_o, p1memread_o,  p1memwrite_o,  memtoregp1,memtoreg2p1,p1if_flush,p1if_flush2,ins2o[12],comparatorOut,cout,storew , IF_ID_flush_1, IF_ID_flush_2, pcido, IDregrs1,IDregrs2,IDregrt1,IDregrt2, IDrs1,IDrs2,IDrt1,IDrt2,ID_EX_rd_1,IDrd2, IDimm,ID_EX_regWrite1,ID_EX_regWrite2, IDaluSrcb1,  IDaluSrcb2, IDaluSrca2, IDaluop1, IDaluop2, IDregDst, IDbranch, IDjump,  ID_EX_MemRead,ID_EX_Memwrite,IDmemToReg1, IDmemToReg2);
	dataw s(reset,IF_ID_flush_2,IFreset);
	

	
	


	

	


	ForwardingUnit fd( EX_MEM_regWrite_1, EX_MEM_regWrite_2,  regWrite_1,  regWrite_2, WBregWrite1, WBregWrite2,  EX_MEM_rd_1,   EX_MEM_rd_2,   rd1,  rd2,	 WBrd1,  WBrd2,  IDrs1,  IDrt1,  IDrs2,  IDrt2,  EXMemtoReg1, exforward_A_1, exforward_B_1,	 exforward_A_2,  exforward_B_2);


	mux2to1_5_bit m23(IDrd2,5'b11111,IDregDst,ID_EX_rd_2);

	mux8to1 m17(IDregrs1,EXluiout ,EXaluout1 ,wrdata1,WBwritedata1,EXregrs2,wrdata2,WBwritedata2,exforward_A_1, afterForwarding_A_1);

	mux8to1 m18(IDregrt1 ,EXluiout ,EXaluout1,wrdata1,WBwritedata1,EXregrs2,wrdata2,WBwritedata2,exforward_B_1, afterForwarding_B_1);

	mux8to1 m19(IDregrs2,EXluiout ,EXaluout1 ,wrdata1 ,WBwritedata1,EXregrs2,wrdata2,WBwritedata2, exforward_A_2, afterForwarding_A_2);

	mux8to1 m20(IDregrt2,EXluiout ,EXaluout1 ,wrdata1 ,WBwritedata1,EXregrs2,wrdata2,WBwritedata2, exforward_B_2, afterForwarding_B_2);

	
	zeroExt5to32 z1(IDimm[12:8],Zextout);
	signExt12to32 s1(IDimm[19:8],Sext);
	
	mux4to1 m21(afterForwarding_B_1,Zextout,Sext,32'd0,IDaluSrcb1,alu1in2);
	//mux2to1 m22(afterForwarding_A_2,pcido,IDaluSrca2,alu2in1);
	//signExt11to32 s2()
	//mux2to1 m23()
	
	ALU alu1(afterForwarding_A_1,alu1in2,IDaluop1,alu1out);
	ALU alu2(afterForwarding_A_2,{25'b0,IDrt2[3],storew,IDrs1[4:3],IDrt2[4],2'b0},IDaluop2,alu2out);

	////////////////////////////////////////////////////////////////

	


	EX_MEM ex_mem( clk, reset,ex_mem_write, alu1out,  ID_EX_MemRead,  alu2out, {IDimm,12'd0},afterForwarding_B_2, ID_EX_rd_1,ID_EX_rd_2, IDmemToReg1, ID_EX_regWrite1, ID_EX_Memwrite,  IDmemToReg2, ID_EX_regWrite2,pcido,EXaluout1,  EXaluout2,  EX_MEM_memread, EXluiout, EXregrs2, EX_MEM_rd_1, EX_MEM_rd_2,  EXMemtoReg1, EX_MEM_regWrite_1, EXMemwrite2, EXMemtoReg2, EX_MEM_regWrite_2,Pcexo);
	wire P_out;
	wire [15:0] memre1;
	wire [31:0] address;
	//DM dm(EX_MEM_memread,Memout,P_out);
	mux2to1 m34(EXaluout2,EXaluout1,EX_MEM_memread,address);
	cache ch(clk,reset,EXMemwrite2,address,EXMemwrite2 | EX_MEM_memread,EXregrs2,P_out,memre1,min,memadd,wb,memoutb);
	stall st(P_out,EXMemwrite2 | EX_MEM_memread,id_ex_write,ex_mem_write,mem_wb_write,wb_id_write);
	

	mux4to1 m25(Memout,EXaluout1,EXluiout,32'd0,EXMemtoReg1,Regout1);

	mux2to1 m24(EXregrs2,Pcexo,EXMemtoReg2,Regout2);



	////////////////////////////////////////
	

	//wire [31:0] WBRegout1,WBRegout2;
	
	MEM_WB mem_wb( clk, reset, mem_wb_write, Regout1, Regout2, EX_MEM_rd_1,  EX_MEM_rd_2,EX_MEM_regWrite_1,EX_MEM_regWrite_2, wrdata1,  wrdata2, rd1,  rd2,  regWrite_1,  regWrite_2);

	/////////////////////////////////////

	

	WB_ID wb_id( clk,  reset,  wb_id_write,wrdata1, wrdata2,  rd1,  rd2,  regWrite_1,  regWrite_2,  WBwritedata1,  WBwritedata2,  WBrd1,  WBrd2, WBregWrite1,  WBregWrite2);

	outputset o1(wrdata1,regWrite_1,A);
	//assign B = wrdata2;
	outputset o2(wrdata2,regWrite_2,B);
	

endmodule
module D_ff_IM(input clk, input reset, input d, output reg q);
	always@(reset or posedge clk)
	if(reset)
		q=d;
endmodule

module register_IM(input clk, input reset, input [31:0] d_in, output [31:0] q_out);
	D_ff_IM dIM0 (clk, reset, d_in[0], q_out[0]);
	D_ff_IM dIM1 (clk, reset, d_in[1], q_out[1]);
	D_ff_IM dIM2 (clk, reset, d_in[2], q_out[2]);
	D_ff_IM dIM3 (clk, reset, d_in[3], q_out[3]);
	D_ff_IM dIM4 (clk, reset, d_in[4], q_out[4]);
	D_ff_IM dIM5 (clk, reset, d_in[5], q_out[5]);
	D_ff_IM dIM6 (clk, reset, d_in[6], q_out[6]);
	D_ff_IM dIM7 (clk, reset, d_in[7], q_out[7]);
	D_ff_IM dIM8 (clk, reset, d_in[8], q_out[8]);
	D_ff_IM dIM9 (clk, reset, d_in[9], q_out[9]);
	D_ff_IM dIM10 (clk, reset, d_in[10], q_out[10]);
	D_ff_IM dIM11 (clk, reset, d_in[11], q_out[11]);
	D_ff_IM dIM12 (clk, reset, d_in[12], q_out[12]);
	D_ff_IM dIM13 (clk, reset, d_in[13], q_out[13]);
	D_ff_IM dIM14 (clk, reset, d_in[14], q_out[14]);
	D_ff_IM dIM15 (clk, reset, d_in[15], q_out[15]);
	
	D_ff_IM dIM16 (clk, reset, d_in[16], q_out[16]);
	D_ff_IM dIM17 (clk, reset, d_in[17], q_out[17]);
	D_ff_IM dIM18 (clk, reset, d_in[18], q_out[18]);
	D_ff_IM dIM19 (clk, reset, d_in[19], q_out[19]);
	D_ff_IM dIM20 (clk, reset, d_in[20], q_out[20]);
	D_ff_IM dIM21 (clk, reset, d_in[21], q_out[21]);
	D_ff_IM dIM22 (clk, reset, d_in[22], q_out[22]);
	D_ff_IM dIM23(clk, reset, d_in[23], q_out[23]);
	D_ff_IM dIM24 (clk, reset, d_in[24], q_out[24]);
	D_ff_IM dIM25 (clk, reset, d_in[25], q_out[25]);
	D_ff_IM dIM26 (clk, reset, d_in[26], q_out[26]);
	D_ff_IM dIM27 (clk, reset, d_in[27], q_out[27]);
	D_ff_IM dIM28 (clk, reset, d_in[28], q_out[28]);
	D_ff_IM dIM29 (clk, reset, d_in[29], q_out[29]);
	D_ff_IM dIM30 (clk, reset, d_in[30], q_out[30]);
	D_ff_IM dIM31 (clk, reset, d_in[31], q_out[31]);
endmodule

module mux32to1_IM(input [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,
	outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,
	input [4:0] Sel, output reg [63:0] outBus );
	
	always@(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,
		outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,
		Sel)
		case (Sel)
			5'd0: outBus = {outR1,outR0};
			5'd1: outBus = {outR2,outR1};
			5'd2: outBus = {outR3,outR2};
			5'd3: outBus = {outR4,outR3};
			5'd4: outBus = {outR5,outR4};
			5'd5: outBus = {outR6,outR5};
			5'd6: outBus = {outR7,outR6};
			5'd7: outBus = {outR8,outR7};
			5'd8: outBus = {outR9,outR8};
			5'd9: outBus = {outR10,outR9};
			5'd10: outBus = {outR11,outR10};
			5'd11: outBus = {outR12,outR11};
			5'd12: outBus = {outR13,outR12};
			5'd13: outBus = {outR14,outR13};
			5'd14: outBus = {outR15,outR14};
			5'd15: outBus = {outR16,outR15};
			5'd16: outBus = {outR17,outR16};
			5'd17: outBus = {outR18,outR17};
			5'd18: outBus = {outR19,outR18};
			5'd19: outBus = {outR20,outR19};
			5'd20: outBus = {outR21,outR20};
			5'd21: outBus = {outR22,outR21};
			5'd22: outBus = {outR23,outR22};
			5'd23: outBus = {outR24,outR23};
			5'd24: outBus = {outR25,outR24};
			5'd25: outBus = {outR26,outR25};
			5'd26: outBus = {outR27,outR26};
			5'd27: outBus = {outR28,outR27};
			5'd28: outBus = {outR29,outR28};
			5'd29: outBus = {outR30,outR29};
			5'd30: outBus = {outR31,outR30};
			5'd31: outBus = {32'b0,outR31};
		endcase
endmodule

module IM(input clk, input reset, input [4:0] pc_5bits, output [63:0] IR);
	wire [31:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,
					Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15,
					Qout16, Qout17, Qout18, Qout19, Qout20, Qout21, Qout22, Qout23,
					Qout24, Qout25, Qout26, Qout27, Qout28, Qout29, Qout30, Qout31;
	register_IM rIM0 (clk, reset, 32'h00320213, Qout0); 
	register_IM rIM1 (clk, reset, 32'h00000000, Qout1); 
	register_IM rIM2 (clk, reset, 32'h00000000, Qout2);
	register_IM rIM3 (clk, reset, 32'h00000000, Qout3); 
	register_IM rIM4 (clk, reset, 32'h00000000, Qout4);
	register_IM rIM5 (clk, reset, 32'h00000000, Qout5); 
	register_IM rIM6 (clk, reset, 32'h00000000, Qout6); 
	register_IM rIM7 (clk, reset, 32'h00000000, Qout7); 
	register_IM rIM8 (clk, reset, 32'h00000000, Qout8);
	register_IM rIM9 (clk, reset, 32'h00000000, Qout9);  
	register_IM rIM10 (clk, reset, 32'h00000000, Qout10); 	
	register_IM rIM11 (clk, reset, 32'h00000000, Qout11); 
	register_IM rIM12 (clk, reset, 32'h00000000, Qout12); 
	register_IM rIM13 (clk, reset, 32'h00000000, Qout13); 
	register_IM rIM14 (clk, reset, 32'h00000000, Qout14); 	
	register_IM rIM15 (clk, reset, 32'h0000, Qout15);
	register_IM rIM16 (clk, reset, 32'h00000000, Qout16);
	register_IM rIM17 (clk, reset, 32'h0000, Qout17);
	register_IM rIM18 (clk, reset, 32'h0000, Qout18);
	register_IM rIM19 (clk, reset, 32'h0000, Qout19);
	register_IM rIM20 (clk, reset, 32'h00000000, Qout20);
	register_IM rIM21 (clk, reset, 32'h0000, Qout21);
	register_IM rIM22 (clk, reset, 32'h0000, Qout22);
	register_IM rIM23 (clk, reset, 32'h0000, Qout23);
	register_IM rIM24 (clk, reset, 32'h0000, Qout24);
	register_IM rIM25 (clk, reset, 32'h0000, Qout25); 		
	register_IM rIM26 (clk, reset, 32'h0000, Qout26); 	
	register_IM rIM27 (clk, reset, 32'h0000, Qout27); 	
	register_IM rIM28 (clk, reset, 32'h0000, Qout28); 
	register_IM rIM29 (clk, reset, 32'h0000, Qout29); 
	register_IM rIM30 (clk, reset, 32'h0000, Qout30); 	
	register_IM rIM31 (clk, reset, 32'h0000, Qout31); 		
	mux32to1_IM mIM (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,
		Qout16,Qout17,Qout18,Qout19,Qout20,Qout21,Qout22,Qout23,Qout24,Qout25,Qout26,Qout27,Qout28,Qout29,Qout30,Qout31,
		pc_5bits[4:0],IR);
endmodule

module DM(input EX_MEM_memread,output reg [31:0] Memout, output reg p);
	always@(EX_MEM_memread)
		begin
			if(EX_MEM_memread == 1'b1)
				begin
				Memout=32'd17;
				p=1'b1;
				end
			else
			begin
				Memout=32'd0;
				p=1'b1;
				end
		end
endmodule

module stall(input P,write, output reg id_ex_write,ex_mem_write,mem_wb_write,wb_id_write);
	always@( negedge P)
		begin
			//if(P == 1'b1)
			//begin
			id_ex_write=1'b1;
			ex_mem_write=1'b1;
			mem_wb_write=1'b1;
			wb_id_write=1'b1;
			end
		always@(posedge write)	
			begin
			id_ex_write=1'b0;
			ex_mem_write=1'b0;
			mem_wb_write=1'b0;
			wb_id_write=1'b0;
			end
		//end
	//always@(posedge wr)
		//begin
		
			
			
			
		//end
		
endmodule

module outputset(input [31:0] data,input f, output reg [31:0] data_out);
	always@(data or f)
	 begin
	 if(f==1'b1)
		data_out=data;
	else
		data_out=32'd0;
	end
endmodule

module dataw(input r,d,output reg f);
	always@(r or d)
	begin
	if(r==1'b1)
		f = 1'b1;
	else if(d==1'b1)
		f=1'b1;
	else
		f=1'b0;
	end
endmodule
//Instruction Memory Design Ends

module testbench;
	reg clk;
	reg reset;
	reg [63:0] min;
	wire [31:0] Result1,Result2,memadd;
	wire wb;
	wire [63:0] memoutb;
	topModule tr(clk,reset,min,wb,memadd,memoutb,Result1,Result2);

	always
	#5 clk=~clk;
	
	initial
	begin
		clk=0; reset=1;
		min = 63'd 23;
		#5  reset=0;	
		#125 $finish;
	end
endmodule
