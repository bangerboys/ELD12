`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:40 11/11/2016 
// Design Name: 
// Module Name:    Part3 
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
module Part3(
    input input_clock,
    output reg [7:0] out,
	 output reg [3:0] anode
    );
	 wire clock;
	 reg [3:0] cnt = 4'b0000;
	 Part1 p1(input_clock,clock);
	
	always@(posedge clock)
	begin
		out <= 8'b11111111;
		anode <= 4'b0111;
		cnt <= cnt + 1;
		case(cnt)
			4'b0000: out[0] <= 0;
			4'b0001: out[5] <= 0;
			4'b0010: out[4] <= 0;
			4'b0011: out[3] <= 0;
			4'b0100: out[2] <= 0;
			4'b0101: begin
						cnt <= 0;
						out[1] <= 0;
						end
		endcase
	end
endmodule
