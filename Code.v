`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:35 11/11/2016 
// Design Name: 
// Module Name:    Code 
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
module Code(
    input input_clock,
	 output reg output_clock = 0,
	 output reg output_clock2 = 0,
	 output reg output_clock3 = 0
    );
	 reg [24:0] count = 0;
	 reg [24:0] count2 = 0;
	 reg [24:0] count3 = 0;
	 always@(posedge input_clock)
	 begin
		if(count > 8333333)
		begin
			output_clock <= ~output_clock;
			count<=0;
		end
		else
		begin
			count <= count + 1;
		end
		if(count2 > 16666666)
		begin
			output_clock2 <= ~output_clock2;
			count2<=0;
		end
		else
		begin
			count2 <= count2 + 1;
		end
		if(count3 > 33333332)
		begin
			output_clock3 <= ~output_clock3;
			count3<=0;
		end
		else
		begin
			count3 <= count3 + 1;
		end
	end
endmodule
