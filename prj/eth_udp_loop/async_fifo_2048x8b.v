`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:54 01/21/2024 
// Design Name: 
// Module Name:    async_fifo_2048x8b 
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
module async_fifo_2048x8b(
  input rst,         
  input wr_clk,
  input rd_clk,
  input [7 : 0] din,
  input wr_en,
  input rd_en,
  output [7 : 0] dout,
  output full,
  output empty,
  output [10 : 0] rd_data_count
  );

fifo your_instance_name (
  .rst(rst), // input rst
  .wr_clk(wr_clk), // input wr_clk
  .rd_clk(rd_clk), // input rd_clk
  .din(din), // input [7 : 0] din
  .wr_en(wr_en), // input wr_en
  .rd_en(rd_en), // input rd_en
  .dout(dout), // output [7 : 0] dout
  .full(full), // output full
  .empty(empty), // output empty
  .rd_data_count(rd_data_count) // output [10 : 0] rd_data_count
);
endmodule
