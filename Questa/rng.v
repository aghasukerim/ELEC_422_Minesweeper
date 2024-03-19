//-----------------------------------------------------
// Design Name : RNG
// File Name   : rng.v
// Function    : Pseudo-Random Number Generator to compute placement of mines
//-----------------------------------------------------
module rng (in_clka, in_start, in_mult, in_increment, in_mines_num, in_place, in_place_done, data_in, rng_done , out_mines);
//-------------Input Ports-----------------------------
  input   in_clka, in_start, in_place, in_place_done, data_in;
 //input  in_mult, in_increment, in_mines_num;
  input  [4:0] in_mult;
  input  [4:0] in_increment;
  input  [4:0] in_mines_num;
 //in_param: [b2,b1,b0]
 //in_mult <-- multiplier ('a')
 //in_increment <-- increment ('c')
 //in_modulus <-- modulus ('m')
 //For the equation: X[n+1] = (a*X[n] + c) mod m
//-------------Output Ports----------------------------
 output [2:0]
  output  [24:0] out_mines;
//-------------Input ports Data Type-------------------
  wire   in_clka, in_start in_place, in_place_done, data_in;
  //integer in_mult, in_increment, in_mines_num;
  reg [2:0] in_mult;
  reg [4:0] in_increment;
  reg [4:0] in_modulus;
  reg [4:0] in_mines_num
//-------------Output Ports Data Type------------------
  reg [24:0] out_mines;
//----------Code starts Here------------------------
 //--------Internal Variables-----------------------
 /*
 Holds randomly generated integer (representing index of out_mines)
 */
  //integer random_index;
 //Randomly generated integer of a given iteration of the "for" loop below
   reg [24:0] temp_index;
 //-------------------------------------------------

 //------------Initializations-------------
 random
 //----------------------------------------
 always @ (negedge clka) begin
  if (start == 1'b1) begin
   out_mines = 25'b0;
   temp_index = (((in_mult & random_index) | in_increment) % 25);
   out_mines[temp_index] = 1'b1;
   random_index = temp_index; // Holds value of temp_index to be used in next iteration
  end
 end
   
endmodule
