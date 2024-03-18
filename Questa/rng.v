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
 /*always @ (negedge clka)
 begin
  if (start == 1'b1) begin
   out_mines = 25'b0;
   for (i=-1; i< in_mines_num; i = (i + 1)) begin
    if (i == -1) begin
     out_mines[0] = (((in_mult) + in_increment) % in_modulus);
    end else begin
     out_mines[i] = (((in_mult * out_mines[i]) + in_increment) % in_modulus);
    end
    //Rearranges the out_mines to ensure
    for (i=0; i<in_mines_num; i= i + 1) begin
     out_mines[i] = out_mines[i + ({$random} % 25)]
    end
   end 
  end
 end 
 */
 always @ (negedge clka) begin
  if (start == 1'b1) begin
   out_mines = 25'b0;
   random_index = 0;
   for (int i = 0; i < in_mines_num; i = i + 1) begin
    if (i == 0) begin
     temp_index = (((in_mult) + in_increment) % 25);
     out_mines[temp_index] = 1'b1;
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
