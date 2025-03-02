`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:48 11/19/2022 
// Design Name: 
// Module Name:    counter 
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

module counter(
	input clk,
	input rst,
	input ms, 
	output [31:0] nrms 
	);
  
  reg [31:0] ms_reg, ms_next;
  
  assign nrms = ms_reg;

  always @ (posedge clk) begin
    if (rst == 1) begin
        ms_reg <= 0;
    end
    else begin
      ms_reg <= ms_next;
    end
  end
  
  always @ (*) begin
    ms_next = ms_reg;
    if (ms == 1) begin
        ms_next = ms_reg + 1;
    end
   end
	
	endmodule