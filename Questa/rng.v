//-----------------------------------------------------
// Design Name : RNG
// File Name   : rng.v
//
// Function    : Pseudo-Random Number Generator to compute placement of mines
//-----------------------------------------------------
module rng (in_clka, in_start, in_mult, in_increment, in_mines_num, out_mines);
//-------------Input Ports-----------------------------
input   in_clka, in_start;
 input   [4:0] in_mult;
 input   [4:0] in_increment;
 input   [4:0] in_mines_num;
 //in_param: [b2,b1,b0]
 //in_mult <-- multiplier ('a')
 //in_increment <-- increment ('c')
 //in_modulus <-- modulus ('m')
 //For the equation: X[n+1] = (a*X[n] + c) mod m
//-------------Output Ports----------------------------
 output  [24:0] out_mines;
//-------------Input ports Data Type-------------------
wire    in_clka, in_start;
integer in_mult, in_increment, in_modulus, in_mines_num;
//-------------Output Ports Data Type------------------
 reg [24:0] out_mines;
//----------Code starts Here------------------------
 //--------Internal Variables-----------------------
 /*
 Holds randomly generated integer (representing index of out_mines)
 */
 integer random_index;
 //Randomly generated integer of a given iteration of the "for" loop below
 integer temp_index;
 //-------------------------------------------------
 always @ (negedge clka) begin
  if (start == 1'b1) begin
   out_mines = 25'b0;
   random_index = 0;
   for (int i = 0; i < in_mines_num; i = i + 1) begin
    if (i == 0) begin
     temp_index = (((in_mult) + in_increment) % 25); //Ensures temp_index is an integer between 0 and 24
     out_mines[temp_index] = 1'b1; // Places a mine at the cell (of the 5x5 grid array) represented by (temp_index)th index of out_mines
     random_index = temp_index;
    end else begin
     temp_index = (((in_mult * random_index) + in_increment) % 25);
     out_mines[temp_index] = 1'b1;
     random_index = temp_index;
    end
   end
  end
 end
   
endmodule
