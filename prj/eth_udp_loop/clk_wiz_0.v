`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:16 01/21/2024 
// Design Name: 
// Module Name:    clk_wiz_0 
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
module clk_wiz_0(
    output clk_out1 ,
    input reset     ,
    output locked     ,
    input clk_in1 

    );



  pll instance_name
   (// Clock in ports
    .CLK_IN1(clk_in1),      // IN
    // Clock out ports
    .CLK_OUT1(clk_out1),     // OUT
    // Status and control signals
    .RESET(reset),// IN
    .LOCKED(locked));      // OUT

endmodule
