`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:00 10/05/2016 
// Design Name: 
// Module Name:    Inverse_matrixrix 
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
module Inverse_matrixrix(a,matrix,matrix[0][0], matrix[0][1], matrix[0][2],	matrix[0][3], matrix[1][0], matrix[1][1], matrix[1][2], matrix[1][3], matrix[1][4], matrix[2][0], matrix[2][1], matrix[2][2], matrix[2][3], matrix[2][4], matrix[3][0], matrix[3][1], matrix[3][2], matrix[3][3], matrix[3][4], matrix[4][0], matrix[4][1], matrix[4][2], matrix[4][3], matrix[4][4] );

input[7:0] a[0:4][0:4];//8 bit input

reg clk,i;

output reg[7:0] matrix[0:4][0:9];

initial
	begin
			matrix[0][0] = a[0][0];
			matrix[0][1] = a[0][1];
			matrix[0][2] = a[0][2];
			matrix[0][3] = a[0][3];
			matrix[0][4] = a[0][4];
			matrix[1][0] = a[1][0];
			matrix[1][1] = a[1][1];
			matrix[1][2] = a[1][2];
			matrix[1][3] = a[1][3];
			matrix[1][4] = a[1][4];
			matrix[2][0] = a[2][0];
			matrix[2][1] = a[2][1];
			matrix[2][2] = a[2][2];
			matrix[2][3] = a[2][3];
			matrix[2][4] = a[2][4];
			matrix[3][0] = a[3][0];
			matrix[3][1] = a[3][1];
			matrix[3][2] = a[3][2];
			matrix[3][3] = a[3][3];
			matrix[3][4] = a[3][4];
			matrix[4][0] = a[4][0];
			matrix[4][1] = a[4][1];
			matrix[4][2] = a[4][2];
			matrix[4][3] = a[4][3];
			matrix[4][4] = a[4][4];
			
			matrix[0][5] = 1;
			matrix[0][6] = 0;
			matrix[0][7] = 0;
			matrix[0][8] = 0;
			matrix[0][9] = 0;
			matrix[1][5] = 0;
			matrix[1][6] = 1;
			matrix[1][7] = 0;
			matrix[1][8] = 0;
			matrix[1][9] = 0;
			matrix[2][5] = 0;
			matrix[2][6] = 0;
			matrix[2][7] = 1;
			matrix[2][8] = 0;
			matrix[2][9] = 0;
			matrix[3][5] = 0;
			matrix[3][6] = 0;
			matrix[3][7] = 1;
			matrix[3][8] = 0;
			matrix[3][9] = 0;
			matrix[4][5] = 0;
			matrix[4][6] = 0;
			matrix[4][7] = 0;
			matrix[4][8] = 0;
			matrix[4][9] = 1;		
			clk = 0;
			i=0;
			#100;
			i=1;
			#100;
			i=2;
			#100;
			i=3;
			#100;
			i=4;
			#100;
			i=5;
			#100;
			i=6;
			#100;
			i=7;
			#100;
			i=8;
			#100;
			i=9;
			#100;
	end
			always #100 clk = ~clk;
			always@(posedge clk)
			begin
			if(matrix[i][i]==0)
				begin
				matrix[i][0]=(i==0)?(matrix[1][i]+matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==1)?(matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==2)?(matrix[3][i]+matrix[4][i]):(matrix[4][i])));
				matrix[i][1]=(i==0)?(matrix[1][i]+matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==1)?(matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==2)?(matrix[3][i]+matrix[4][i]):(matrix[4][i])));
				matrix[i][2]=(i==0)?(matrix[1][i]+matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==1)?(matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==2)?(matrix[3][i]+matrix[4][i]):(matrix[4][i])));
				matrix[i][3]=(i==0)?(matrix[1][i]+matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==1)?(matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==2)?(matrix[3][i]+matrix[4][i]):(matrix[4][i])));
				matrix[i][4]=(i==0)?(matrix[1][i]+matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==1)?(matrix[2][i]+matrix[3][i]+matrix[4][i]):((i==2)?(matrix[3][i]+matrix[4][i]):(matrix[4][i])));
				end
			matrix[0][0]=(i==0)?(matrix[0][0]):((i==1)?(matrix[0][0]*matrix[1][1]-matrix[0][1]*matrix[1][0]):((i==2)?(matrix[0][0]*matrix[2][2]-matrix[0][2]*matrix[2][0]):((i==3)?(matrix[0][0]*matrix[3][3]-matrix[0][3]*matrix[3][0]):(matrix[0][0]*matrix[4][4]-matrix[0][4]*matrix[4][0]))));			
			matrix[0][1]=(i==0)?(matrix[0][1]):((i==1)?(matrix[0][1]*matrix[1][1]-matrix[0][1]*matrix[1][1]):((i==2)?(matrix[0][1]*matrix[2][2]-matrix[0][2]*matrix[2][1]):((i==3)?(matrix[0][1]*matrix[3][3]-matrix[0][3]*matrix[3][1]):(matrix[0][1]*matrix[4][4]-matrix[0][4]*matrix[4][1]))));			
			matrix[0][2]=(i==0)?(matrix[0][2]):((i==1)?(matrix[0][2]*matrix[1][1]-matrix[0][1]*matrix[1][2]):((i==2)?(matrix[0][2]*matrix[2][2]-matrix[0][2]*matrix[2][2]):((i==3)?(matrix[0][2]*matrix[3][3]-matrix[0][3]*matrix[3][2]):(matrix[0][2]*matrix[4][4]-matrix[0][4]*matrix[4][2]))));			
			matrix[0][3]=(i==0)?(matrix[0][3]):((i==1)?(matrix[0][3]*matrix[1][1]-matrix[0][1]*matrix[1][3]):((i==2)?(matrix[0][3]*matrix[2][2]-matrix[0][2]*matrix[2][3]):((i==3)?(matrix[0][3]*matrix[3][3]-matrix[0][3]*matrix[3][3]):(matrix[0][3]*matrix[4][4]-matrix[0][4]*matrix[4][3]))));			
			matrix[0][4]=(i==0)?(matrix[0][4]):((i==1)?(matrix[0][4]*matrix[1][1]-matrix[0][1]*matrix[1][4]):((i==2)?(matrix[0][4]*matrix[2][2]-matrix[0][2]*matrix[2][4]):((i==3)?(matrix[0][4]*matrix[3][3]-matrix[0][3]*matrix[3][4]):(matrix[0][4]*matrix[4][4]-matrix[0][4]*matrix[4][4]))));			
			matrix[0][5]=(i==0)?(matrix[0][5]):((i==1)?(matrix[0][5]*matrix[1][1]-matrix[0][1]*matrix[1][5]):((i==2)?(matrix[0][5]*matrix[2][2]-matrix[0][2]*matrix[2][5]):((i==3)?(matrix[0][5]*matrix[3][3]-matrix[0][3]*matrix[3][5]):(matrix[0][5]*matrix[4][4]-matrix[0][4]*matrix[4][5]))));			
			matrix[0][6]=(i==0)?(matrix[0][6]):((i==1)?(matrix[0][6]*matrix[1][1]-matrix[0][1]*matrix[1][6]):((i==2)?(matrix[0][6]*matrix[2][2]-matrix[0][2]*matrix[2][6]):((i==3)?(matrix[0][6]*matrix[3][3]-matrix[0][3]*matrix[3][6]):(matrix[0][6]*matrix[4][4]-matrix[0][4]*matrix[4][6]))));			
			matrix[0][7]=(i==0)?(matrix[0][7]):((i==1)?(matrix[0][7]*matrix[1][1]-matrix[0][1]*matrix[1][7]):((i==2)?(matrix[0][7]*matrix[2][2]-matrix[0][2]*matrix[2][7]):((i==3)?(matrix[0][7]*matrix[3][3]-matrix[0][3]*matrix[3][7]):(matrix[0][7]*matrix[4][4]-matrix[0][4]*matrix[4][7]))));			
			matrix[0][8]=(i==0)?(matrix[0][8]):((i==1)?(matrix[0][8]*matrix[1][1]-matrix[0][1]*matrix[1][8]):((i==2)?(matrix[0][8]*matrix[2][2]-matrix[0][2]*matrix[2][8]):((i==3)?(matrix[0][8]*matrix[3][3]-matrix[0][3]*matrix[3][8]):(matrix[0][8]*matrix[4][4]-matrix[0][4]*matrix[4][8]))));			
			matrix[0][9]=(i==0)?(matrix[0][9]):((i==1)?(matrix[0][9]*matrix[1][1]-matrix[0][1]*matrix[1][9]):((i==2)?(matrix[0][9]*matrix[2][2]-matrix[0][2]*matrix[2][9]):((i==3)?(matrix[0][9]*matrix[3][3]-matrix[0][3]*matrix[3][9]):(matrix[0][9]*matrix[4][4]-matrix[0][4]*matrix[4][9]))));
			matrix[1][0]=(i==1)?(matrix[1][0]):((i==0)?(matrix[1][0]*matrix[0][0]-matrix[1][0]*matrix[0][0]):((i==2)?(matrix[1][0]*matrix[2][2]-matrix[1][2]*matrix[2][0]):((i==3)?(matrix[1][0]*matrix[3][3]-matrix[1][3]*matrix[3][0]):(matrix[1][0]*matrix[4][4]-matrix[1][4]*matrix[4][0]))));			
			matrix[1][1]=(i==1)?(matrix[1][1]):((i==0)?(matrix[1][1]*matrix[0][0]-matrix[1][0]*matrix[0][1]):((i==2)?(matrix[1][1]*matrix[2][2]-matrix[0][2]*matrix[2][1]):((i==3)?(matrix[1][1]*matrix[3][3]-matrix[1][3]*matrix[3][1]):(matrix[1][1]*matrix[4][4]-matrix[1][4]*matrix[4][1]))));			
			matrix[1][2]=(i==1)?(matrix[1][2]):((i==0)?(matrix[1][2]*matrix[0][0]-matrix[1][0]*matrix[0][2]):((i==2)?(matrix[1][2]*matrix[2][2]-matrix[0][2]*matrix[2][2]):((i==3)?(matrix[1][2]*matrix[3][3]-matrix[1][3]*matrix[3][2]):(matrix[1][2]*matrix[4][4]-matrix[1][4]*matrix[4][2]))));			
			matrix[1][3]=(i==1)?(matrix[1][3]):((i==0)?(matrix[1][3]*matrix[0][0]-matrix[1][0]*matrix[0][3]):((i==2)?(matrix[1][3]*matrix[2][2]-matrix[0][2]*matrix[2][3]):((i==3)?(matrix[1][3]*matrix[3][3]-matrix[1][3]*matrix[3][3]):(matrix[1][3]*matrix[4][4]-matrix[1][4]*matrix[4][3]))));			
			matrix[1][4]=(i==1)?(matrix[1][4]):((i==0)?(matrix[1][4]*matrix[0][0]-matrix[1][0]*matrix[0][4]):((i==2)?(matrix[1][4]*matrix[2][2]-matrix[0][2]*matrix[2][4]):((i==3)?(matrix[1][4]*matrix[3][3]-matrix[1][3]*matrix[3][4]):(matrix[1][4]*matrix[4][4]-matrix[1][4]*matrix[4][4]))));			
			matrix[1][5]=(i==1)?(matrix[1][5]):((i==0)?(matrix[1][5]*matrix[0][0]-matrix[1][0]*matrix[0][5]):((i==2)?(matrix[1][5]*matrix[2][2]-matrix[0][2]*matrix[2][5]):((i==3)?(matrix[1][5]*matrix[3][3]-matrix[1][3]*matrix[3][5]):(matrix[1][5]*matrix[4][4]-matrix[1][4]*matrix[4][5]))));			
			matrix[1][6]=(i==1)?(matrix[1][6]):((i==0)?(matrix[1][6]*matrix[0][0]-matrix[1][0]*matrix[0][6]):((i==2)?(matrix[1][6]*matrix[2][2]-matrix[0][2]*matrix[2][6]):((i==3)?(matrix[1][6]*matrix[3][3]-matrix[1][3]*matrix[3][6]):(matrix[1][6]*matrix[4][4]-matrix[1][4]*matrix[4][6]))));			
			matrix[1][7]=(i==1)?(matrix[1][7]):((i==0)?(matrix[1][7]*matrix[0][0]-matrix[1][0]*matrix[0][7]):((i==2)?(matrix[1][7]*matrix[2][2]-matrix[0][2]*matrix[2][7]):((i==3)?(matrix[1][7]*matrix[3][3]-matrix[1][3]*matrix[3][7]):(matrix[1][7]*matrix[4][4]-matrix[1][4]*matrix[4][7]))));			
			matrix[1][8]=(i==1)?(matrix[1][8]):((i==0)?(matrix[1][8]*matrix[0][0]-matrix[1][0]*matrix[0][8]):((i==2)?(matrix[1][8]*matrix[2][2]-matrix[0][2]*matrix[2][8]):((i==3)?(matrix[1][8]*matrix[3][3]-matrix[1][3]*matrix[3][8]):(matrix[1][8]*matrix[4][4]-matrix[1][4]*matrix[4][8]))));			
			matrix[1][9]=(i==1)?(matrix[1][9]):((i==0)?(matrix[1][9]*matrix[0][0]-matrix[1][0]*matrix[0][9]):((i==2)?(matrix[1][9]*matrix[2][2]-matrix[0][2]*matrix[2][9]):((i==3)?(matrix[1][9]*matrix[3][3]-matrix[1][3]*matrix[3][9]):(matrix[1][9]*matrix[4][4]-matrix[1][4]*matrix[4][9]))));			
			matrix[2][0]=(i==2)?(matrix[2][0]):((i==0)?(matrix[2][0]*matrix[0][0]-matrix[2][0]*matrix[0][0]):((i==1)?(matrix[2][0]*matrix[1][1]-matrix[2][1]*matrix[1][0]):((i==3)?(matrix[2][0]*matrix[3][3]-matrix[2][3]*matrix[3][0]):(matrix[2][0]*matrix[4][4]-matrix[2][4]*matrix[4][0]))));			
			matrix[2][1]=(i==2)?(matrix[2][1]):((i==0)?(matrix[2][1]*matrix[0][0]-matrix[2][0]*matrix[0][1]):((i==1)?(matrix[2][1]*matrix[1][1]-matrix[2][1]*matrix[1][1]):((i==3)?(matrix[2][1]*matrix[3][3]-matrix[2][3]*matrix[3][1]):(matrix[2][1]*matrix[4][4]-matrix[2][4]*matrix[4][1]))));			
			matrix[2][2]=(i==2)?(matrix[2][2]):((i==0)?(matrix[2][2]*matrix[0][0]-matrix[2][0]*matrix[0][2]):((i==1)?(matrix[2][2]*matrix[1][1]-matrix[2][1]*matrix[1][2]):((i==3)?(matrix[2][2]*matrix[3][3]-matrix[2][3]*matrix[3][2]):(matrix[2][2]*matrix[4][4]-matrix[2][4]*matrix[4][2]))));			
			matrix[2][3]=(i==2)?(matrix[2][3]):((i==0)?(matrix[2][3]*matrix[0][0]-matrix[2][0]*matrix[0][3]):((i==1)?(matrix[2][3]*matrix[1][1]-matrix[2][1]*matrix[1][3]):((i==3)?(matrix[2][3]*matrix[3][3]-matrix[2][3]*matrix[3][3]):(matrix[2][3]*matrix[4][4]-matrix[2][4]*matrix[4][3]))));			
			matrix[2][4]=(i==2)?(matrix[2][4]):((i==0)?(matrix[2][4]*matrix[0][0]-matrix[2][0]*matrix[0][4]):((i==1)?(matrix[2][4]*matrix[1][1]-matrix[2][1]*matrix[1][4]):((i==3)?(matrix[2][4]*matrix[3][3]-matrix[2][3]*matrix[3][4]):(matrix[2][4]*matrix[4][4]-matrix[2][4]*matrix[4][4]))));			
			matrix[2][5]=(i==2)?(matrix[2][5]):((i==0)?(matrix[2][5]*matrix[0][0]-matrix[2][0]*matrix[0][5]):((i==1)?(matrix[2][5]*matrix[1][1]-matrix[2][1]*matrix[1][5]):((i==3)?(matrix[2][5]*matrix[3][3]-matrix[2][3]*matrix[3][5]):(matrix[2][5]*matrix[4][4]-matrix[2][4]*matrix[4][5]))));			
			matrix[2][6]=(i==2)?(matrix[2][6]):((i==0)?(matrix[2][6]*matrix[0][0]-matrix[2][0]*matrix[0][6]):((i==1)?(matrix[2][6]*matrix[1][1]-matrix[2][1]*matrix[1][6]):((i==3)?(matrix[2][6]*matrix[3][3]-matrix[2][3]*matrix[3][6]):(matrix[2][6]*matrix[4][4]-matrix[2][4]*matrix[4][6]))));			
			matrix[2][7]=(i==2)?(matrix[2][7]):((i==0)?(matrix[2][7]*matrix[0][0]-matrix[2][0]*matrix[0][7]):((i==1)?(matrix[2][7]*matrix[1][1]-matrix[2][1]*matrix[1][7]):((i==3)?(matrix[2][7]*matrix[3][3]-matrix[2][3]*matrix[3][7]):(matrix[2][7]*matrix[4][4]-matrix[2][4]*matrix[4][7]))));			
			matrix[2][8]=(i==2)?(matrix[2][8]):((i==0)?(matrix[2][8]*matrix[0][0]-matrix[2][0]*matrix[0][8]):((i==1)?(matrix[2][8]*matrix[1][1]-matrix[2][1]*matrix[1][8]):((i==3)?(matrix[2][8]*matrix[3][3]-matrix[2][3]*matrix[3][8]):(matrix[2][8]*matrix[4][4]-matrix[2][4]*matrix[4][8]))));			
			matrix[2][9]=(i==2)?(matrix[2][9]):((i==0)?(matrix[2][9]*matrix[0][0]-matrix[2][0]*matrix[0][9]):((i==1)?(matrix[2][9]*matrix[1][1]-matrix[2][1]*matrix[1][9]):((i==3)?(matrix[2][9]*matrix[3][3]-matrix[2][3]*matrix[3][9]):(matrix[2][9]*matrix[4][4]-matrix[2][4]*matrix[4][9]))));			
			matrix[3][0]=(i==3)?(matrix[3][0]):((i==0)?(matrix[3][0]*matrix[0][0]-matrix[3][0]*matrix[0][0]):((i==1)?(matrix[3][0]*matrix[1][1]-matrix[3][1]*matrix[1][0]):((i==2)?(matrix[3][0]*matrix[2][2]-matrix[3][2]*matrix[2][0]):(matrix[3][0]*matrix[4][4]-matrix[3][4]*matrix[4][0]))));			
			matrix[3][1]=(i==3)?(matrix[3][1]):((i==0)?(matrix[3][1]*matrix[0][0]-matrix[3][0]*matrix[0][1]):((i==1)?(matrix[3][1]*matrix[1][1]-matrix[3][1]*matrix[1][1]):((i==2)?(matrix[3][1]*matrix[2][2]-matrix[3][2]*matrix[2][1]):(matrix[3][1]*matrix[4][4]-matrix[3][4]*matrix[4][1]))));			
			matrix[3][2]=(i==3)?(matrix[3][2]):((i==0)?(matrix[3][2]*matrix[0][0]-matrix[3][0]*matrix[0][2]):((i==1)?(matrix[3][2]*matrix[1][1]-matrix[3][1]*matrix[1][2]):((i==2)?(matrix[3][2]*matrix[2][2]-matrix[3][2]*matrix[2][2]):(matrix[3][2]*matrix[4][4]-matrix[3][4]*matrix[4][2]))));			
			matrix[3][3]=(i==3)?(matrix[3][3]):((i==0)?(matrix[3][3]*matrix[0][0]-matrix[3][0]*matrix[0][3]):((i==1)?(matrix[3][3]*matrix[1][1]-matrix[3][1]*matrix[1][3]):((i==2)?(matrix[3][3]*matrix[2][2]-matrix[3][2]*matrix[2][3]):(matrix[3][3]*matrix[4][4]-matrix[3][4]*matrix[4][3]))));			
			matrix[3][4]=(i==3)?(matrix[3][4]):((i==0)?(matrix[3][4]*matrix[0][0]-matrix[3][0]*matrix[0][4]):((i==1)?(matrix[3][4]*matrix[1][1]-matrix[3][1]*matrix[1][4]):((i==2)?(matrix[3][4]*matrix[2][2]-matrix[3][2]*matrix[2][4]):(matrix[3][4]*matrix[4][4]-matrix[3][4]*matrix[4][4]))));			
			matrix[3][5]=(i==3)?(matrix[3][5]):((i==0)?(matrix[3][5]*matrix[0][0]-matrix[3][0]*matrix[0][5]):((i==1)?(matrix[3][5]*matrix[1][1]-matrix[3][1]*matrix[1][5]):((i==2)?(matrix[3][5]*matrix[2][2]-matrix[3][2]*matrix[2][5]):(matrix[3][5]*matrix[4][4]-matrix[3][4]*matrix[4][5]))));			
			matrix[3][6]=(i==3)?(matrix[3][6]):((i==0)?(matrix[3][6]*matrix[0][0]-matrix[3][0]*matrix[0][6]):((i==1)?(matrix[3][6]*matrix[1][1]-matrix[3][1]*matrix[1][6]):((i==2)?(matrix[3][6]*matrix[2][2]-matrix[3][2]*matrix[2][6]):(matrix[3][6]*matrix[4][4]-matrix[3][4]*matrix[4][6]))));			
			matrix[3][7]=(i==3)?(matrix[3][7]):((i==0)?(matrix[3][7]*matrix[0][0]-matrix[3][0]*matrix[0][7]):((i==1)?(matrix[3][7]*matrix[1][1]-matrix[3][1]*matrix[1][7]):((i==2)?(matrix[3][7]*matrix[2][2]-matrix[3][2]*matrix[2][7]):(matrix[3][7]*matrix[4][4]-matrix[3][4]*matrix[4][7]))));			
			matrix[3][8]=(i==3)?(matrix[3][8]):((i==0)?(matrix[3][8]*matrix[0][0]-matrix[3][0]*matrix[0][8]):((i==1)?(matrix[3][8]*matrix[1][1]-matrix[3][1]*matrix[1][8]):((i==2)?(matrix[3][8]*matrix[2][2]-matrix[3][2]*matrix[2][8]):(matrix[3][8]*matrix[4][4]-matrix[3][4]*matrix[4][8]))));			
			matrix[3][9]=(i==3)?(matrix[3][9]):((i==0)?(matrix[3][9]*matrix[0][0]-matrix[3][0]*matrix[0][9]):((i==1)?(matrix[3][9]*matrix[1][1]-matrix[3][1]*matrix[1][9]):((i==2)?(matrix[3][9]*matrix[2][2]-matrix[3][2]*matrix[2][9]):(matrix[3][9]*matrix[4][4]-matrix[3][4]*matrix[4][9]))));			
			matrix[4][0]=(i==4)?(matrix[4][0]):((i==0)?(matrix[4][0]*matrix[0][0]-matrix[4][0]*matrix[0][0]):((i==1)?(matrix[4][0]*matrix[1][1]-matrix[4][1]*matrix[1][0]):((i==2)?(matrix[4][0]*matrix[2][2]-matrix[4][2]*matrix[2][0]):(matrix[4][0]*matrix[3][3]-matrix[4][4]*matrix[3][0]))));			
			matrix[4][1]=(i==4)?(matrix[4][1]):((i==0)?(matrix[4][1]*matrix[0][0]-matrix[4][0]*matrix[0][1]):((i==1)?(matrix[4][1]*matrix[1][1]-matrix[4][1]*matrix[1][1]):((i==2)?(matrix[4][1]*matrix[2][2]-matrix[4][2]*matrix[2][1]):(matrix[4][1]*matrix[3][3]-matrix[4][4]*matrix[3][1]))));			
			matrix[4][2]=(i==4)?(matrix[4][2]):((i==0)?(matrix[4][2]*matrix[0][0]-matrix[4][0]*matrix[0][2]):((i==1)?(matrix[4][2]*matrix[1][1]-matrix[4][1]*matrix[1][2]):((i==2)?(matrix[4][2]*matrix[2][2]-matrix[4][2]*matrix[2][2]):(matrix[4][2]*matrix[3][3]-matrix[4][4]*matrix[3][2]))));			
			matrix[4][3]=(i==4)?(matrix[4][3]):((i==0)?(matrix[4][3]*matrix[0][0]-matrix[4][0]*matrix[0][3]):((i==1)?(matrix[4][3]*matrix[1][1]-matrix[4][1]*matrix[1][3]):((i==2)?(matrix[4][3]*matrix[2][2]-matrix[4][2]*matrix[2][3]):(matrix[4][3]*matrix[3][3]-matrix[4][4]*matrix[3][3]))));			
			matrix[4][4]=(i==4)?(matrix[4][4]):((i==0)?(matrix[4][4]*matrix[0][0]-matrix[4][0]*matrix[0][4]):((i==1)?(matrix[4][4]*matrix[1][1]-matrix[4][1]*matrix[1][4]):((i==2)?(matrix[4][4]*matrix[2][2]-matrix[4][2]*matrix[2][4]):(matrix[4][4]*matrix[3][3]-matrix[4][4]*matrix[3][4]))));			
			matrix[4][5]=(i==4)?(matrix[4][5]):((i==0)?(matrix[4][5]*matrix[0][0]-matrix[4][0]*matrix[0][5]):((i==1)?(matrix[4][5]*matrix[1][1]-matrix[4][1]*matrix[1][5]):((i==2)?(matrix[4][5]*matrix[2][2]-matrix[4][2]*matrix[2][5]):(matrix[4][5]*matrix[3][3]-matrix[4][4]*matrix[3][5]))));			
			matrix[4][6]=(i==4)?(matrix[4][6]):((i==0)?(matrix[4][6]*matrix[0][0]-matrix[4][0]*matrix[0][6]):((i==1)?(matrix[4][6]*matrix[1][1]-matrix[4][1]*matrix[1][6]):((i==2)?(matrix[4][6]*matrix[2][2]-matrix[4][2]*matrix[2][6]):(matrix[4][6]*matrix[3][3]-matrix[4][4]*matrix[3][6]))));			
			matrix[4][7]=(i==4)?(matrix[4][7]):((i==0)?(matrix[4][7]*matrix[0][0]-matrix[4][0]*matrix[0][7]):((i==1)?(matrix[4][7]*matrix[1][1]-matrix[4][1]*matrix[1][7]):((i==2)?(matrix[4][7]*matrix[2][2]-matrix[4][2]*matrix[2][7]):(matrix[4][7]*matrix[3][3]-matrix[4][4]*matrix[3][7]))));			
			matrix[4][8]=(i==4)?(matrix[4][8]):((i==0)?(matrix[4][8]*matrix[0][0]-matrix[4][0]*matrix[0][8]):((i==1)?(matrix[4][8]*matrix[1][1]-matrix[4][1]*matrix[1][8]):((i==2)?(matrix[4][8]*matrix[2][2]-matrix[4][2]*matrix[2][8]):(matrix[4][8]*matrix[3][3]-matrix[4][4]*matrix[3][8]))));			
			matrix[4][9]=(i==4)?(matrix[4][9]):((i==0)?(matrix[4][9]*matrix[0][0]-matrix[4][0]*matrix[0][9]):((i==1)?(matrix[4][9]*matrix[1][1]-matrix[4][1]*matrix[1][9]):((i==2)?(matrix[4][9]*matrix[2][2]-matrix[4][2]*matrix[2][9]):(matrix[4][9]*matrix[3][3]-matrix[4][4]*matrix[3][9]))));				
			end
endmodule
