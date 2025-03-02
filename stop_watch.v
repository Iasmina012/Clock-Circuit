`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:53 11/19/2022 
// Design Name: 
// Module Name:    stop_watch 
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

`timescale 1ns/1ps

module stop_watch(
	input clk,
	input rst,
	output [31:0] nrms
	);
	
	wire ms;
	
	clock_1sec clsec(
	.clk(clk),
	.rst(rst),
	.ms(ms)
	);

	counter cntsec (
	.clk(clk),
	.rst(rst),
	.ms(ms),
	.nrms(nrms)
	);
	
	endmodule