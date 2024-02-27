//-----------------------------------------------------
// Design Name : RNG
// File Name   : rng.v
//
// Function    : Pseudo-Random Number Generator to compute placement of mines
//-----------------------------------------------------
module top_module (in_clka, in_start, in_mult, in_increment, in_modulus, out_mines);
//-------------Input Ports-----------------------------
input   in_clka, in_start;
 input    in_mult;
 input    in_increment;
 input    in_modulus;
 //in_param: [b2,b1,b0]
 //in_mult <-- multiplier ('a')
 //in_increment <-- increment ('c')
 //in_modulus <-- modulus ('m')
 //For the equation: X[n+1] = (a*X[n] + c) mod m
//-------------Output Ports----------------------------
 output  [24:0] out_mines;
//-------------Input ports Data Type-------------------
wire    in_clka, in_start, in_mult, in_increment, in_modulus;
//-------------Output Ports Data Type------------------
reg [24:0] mines;
//----------Code starts Here------------------------
 always @ (negedge clka)
 begin
  if (start == 1'b1) begin
   out_mines = 25'b0;
   for (i=0; i< 25; i = i + 1) begin
    out_mines[i+1] = (((in_mult * out_mines[i]) + in_increment) % in_modulus);
   end 

  end
 end 
