`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/20 19:51:30
// Design Name: 
// Module Name: FunctionGenerator_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FunctionGenerator_tb();
reg clka;
reg [31 : 0] ROM;
wire [11 : 0] addra;
wire [7 : 0] douta;
blk_mem_gen_sin FG_sin (
  .clka(clka),    // input wire clka
  .addra(addra),  // input wire [11 : 0] addra
  .douta(douta)  // output wire [9 : 0] douta
);
initial
   begin
        clka = 0;
        ROM = 0;
   end
   
always #5 clka =~ clka;
always@(posedge clka)  #5 ROM = ROM+28'h2ffffff;
assign addra =  ROM[31:20];



    
endmodule







