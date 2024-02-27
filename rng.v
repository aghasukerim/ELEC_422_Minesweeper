//-----------------------------------------------------
// Design Name : RNG
// File Name   : rng.v
//
// Function    : Pseudo-Random Number Generator to compute placement of mines
//-----------------------------------------------------
module top_module (in_clka, in_start, out_mines);
//-------------Input Ports-----------------------------
input   in_clka, in_start;
//-------------Output Ports----------------------------
 output  [24:0] out_mines;
//-------------Input ports Data Type-------------------
wire    in_clka, in_start;
//-------------Output Ports Data Type------------------
reg [24:0] mines;
//----------Code starts Here------------------------
 always @ (negedge clka)
 begin
  if (start == 1'b1) begin
