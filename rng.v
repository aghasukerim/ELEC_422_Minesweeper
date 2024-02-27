//-----------------------------------------------------
// Design Name : top_module
// File Name   : top_module.v
//
// Function    : top file call main_FSM controller.
//-----------------------------------------------------
module top_module (in_clka, in_clkb, in_restart, out_state_main, in_place, in_data_in, in_data,
 out_start, out_place_done, out_mines, out_load, out_temp_data_in, out_decode, out_decode_done,
 out_alu, out_alu_done, out_gameover, out_win, out_global_score, out_temp_decoded, out_temp_cleared);
//-------------Input Ports-----------------------------
input   in_clka, in_clkb, in_restart, in_place, in_data_in;
input   [4:0] in_data;
//-------------Output Ports----------------------------
output  [2:0] out_state_main; 
output  out_start, out_place_done, out_mines, out_load, out_temp_data_in, out_decode, out_decode_done;
output  out_alu, out_alu_done, out_gameover, out_win;
output [31:0] out_global_score;
output [24:0] out_temp_decoded;
output [24:0] out_temp_cleared;
//-------------Input ports Data Type-------------------
wire    in_clka, in_clkb, in_restart;
wire    in_place, in_data_in;
wire    [4:0] in_data;
//-------------Output Ports Data Type------------------
wire    [3:0] out_state_main;
wire    out_start;
wire    out_place_done;
wire    [24:0] out_mines;
wire    [3:0] out_temp_data_in;
wire    out_decode;
wire    out_decode_done;
wire    out_alu;
wire    out_alu_done;
wire    out_game_over;
wire    out_win;
wire    [31:0] out_global_score;
wire    [24:0] out_temp_decoded;
wire    [24:0] out_temp_cleared;

//----------Code starts Here------------------------
