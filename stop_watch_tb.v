`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:57 11/19/2022
// Design Name:   stop_watch
// Module Name:   D:/Programs/Xilinx/CISL-1/stop_watch_tb.v
// Project Name:  CISL-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stop_watch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps

module stop_watch_tb(
  );
  
  reg clk;
  reg rst;
  wire[31:0] nrms;
  
  initial begin
    clk = 1'b0;
    forever begin
      #100 clk=~clk;
    end
  end
  
  initial begin
    rst = 1'b1;
    #200 rst=1'b0;
	 end
    
    stop_watch uut(
    .clk(clk),
    .rst(rst),
    .nrms(nrms)
    );
    
  endmodule

