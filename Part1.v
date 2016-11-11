`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:53 11/11/2016 
// Design Name: 
// Module Name:    Part1 
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
module Part1(
    input input_clock,
    output reg output_clock = 0
    );
	reg [24:0] cnt = 0;
	always@(posedge input_clock)
	begin
		if(cnt > 8333333)
		begin
			cnt <= 0;
			output_clock = ~output_clock;
		end
		else
		begin
			cnt <= cnt + 1;
		end
	end

endmodule
