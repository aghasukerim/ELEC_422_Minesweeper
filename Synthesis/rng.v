//-----------------------------------------------------
// Design Name : RNG
// File Name   : rng.v
// Function    : Pseudo-Random Number starterator to compute placement of mines
//-----------------------------------------------------
module rng (clka, clkb, restart, start, mult, incr, n_mines, place_done, mines, temp_index, temp_mine_cnt);
//-------------Input Ports-----------------------------
  input   clka, clkb, restart, start;
  input  [2:0] mult;
  input  [2:0] incr;
  input  [2:0] n_mines;
 //in_param: [b2,b1,b0]
 //in_mult <-- multiplier ('a')
 //in_incr <-- increment ('c')
 //in_modulus <-- modulus ('m')
 //For the equation: X[n+1] = (a*X[n] + c) mod m
//-------------Output Ports----------------------------
  output  place_done;
  output [24:0] mines;
  output [4:0] temp_index;
  output [2:0] temp_mine_cnt;
//-------------Input ports Data Type-------------------
  wire   clka, start;
  wire [2:0] mult;
  wire [2:0] incr;
  wire [2:0] n_mines;
//-------------Output Ports Data Type------------------
  reg [24:0] mines;
  reg place_done;
//----------Code starts Here------------------------
 //--------Internal Variables-----------------------
  reg [4:0]  temp_index;
  reg [2:0]  temp_mine_cnt; // Tracks the number of mines that have been placed.
  reg temp_gen;

 //------------Initializations-------------
 //----------------------------------------
 always @ (negedge clka)
begin
if (restart == 1'b1) begin
        mines = 0;
        temp_index = 0;
        temp_mine_cnt = 0;
   end else if (start) begin
           mines = 0;
           temp_index = 0;
           temp_mine_cnt = 0;
   end else if (start | temp_gen) begin
           temp_index = (((mult * temp_index) + incr) % 25);
           mines[temp_index] = 1'b1;
           temp_mine_cnt = temp_mine_cnt + 1;
   end
end

always @ (negedge clkb)
begin
if (restart == 1'b1) begin
        place_done = 1'b0;
        temp_gen = 1'b0;
    end else if (start) begin
        temp_gen = 1'b1;
    end else if (temp_gen & (temp_mine_cnt == n_mines)) begin
        place_done = 1'b1;
        temp_gen = 1'b0;
    end else begin
        place_done = 1'b0;
    end
end

endmodule
