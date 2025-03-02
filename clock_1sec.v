`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:50 11/19/2022 
// Design Name: 
// Module Name:    clock_1sec 
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

module clock_1sec(
	input clk,
	input rst,
	output reg ms
	);
  
  reg [15:0] nrclock_reg, nrclock_next; 
  
  always @ (posedge clk) begin
    if (rst == 1) begin
        nrclock_reg <= 0;
    end
    else begin
      nrclock_reg <= nrclock_next;
     end
  end
  
  always @ (*) begin
    ms = 0;
    nrclock_next = nrclock_reg + 1;
    if (nrclock_reg == 4999) begin
        ms = 1;
        nrclock_next = 0;
    end
   end
	
	endmodule