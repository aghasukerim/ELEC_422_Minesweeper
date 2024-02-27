//-----------------------------------------------------
// Design Name : top_module
// File Name   : top_module.v
//
// Function    : top file call main_FSM controller.
//-----------------------------------------------------
module top_module (in_clka, in_clkb, in_restart, out_state_main, in_place, in_data_in, in_data,
 out_start, out_place_done, out_mines, out_load, out_temp_data_in, out_decode, out_decode_done,
 out_alu, out_alu_done, out_gameover, out_win, out_global_score, out_n_nearby, out_temp_decoded, out_temp_cleared);
 
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
output [1:0] out_n_nearby;
//-------------Input ports Data Type-------------------
wire    in_clka, in_clkb, in_restart;
wire    in_place, in_data_in;
wire    [4:0] in_data;
//-------------Output Ports Data Type------------------
wire    [3:0] out_state_main;
wire    out_start;
wire    out_place_done;
wire    [24:0] out_mines;
wire    [4:0] out_temp_data_in;
wire    out_decode;
wire    out_decode_done;
wire    out_alu;
wire    out_alu_done;
wire    out_gameover;
wire    out_win;
wire    [31:0] out_global_score;
wire    [24:0] out_temp_decoded;
wire    [24:0] out_temp_cleared;
wire    [1:0] out_n_nearby;

//----------Code starts Here------------------------

main_FSM main (.clka (in_clka),
           .clkb (in_clkb),
           .restart (in_restart),
           .state (out_state_main),
           .start (out_start),
           .place (in_place),
           .place_done (out_place_done),
           .data_in (in_data_in),
           .data (in_data),
           .load (out_load),
           .decode (out_decode),
           .decode_done (out_decode_done),
           .alu (out_alu),
           .alu_done (out_alu_done),
           .gameover (out_gameover)
          );

dp dp_ALU  (.clka (in_clka),
            .clkb (in_clkb),
           .restart (in_restart),
           .start (out_start),
           .place_done (out_place_done),
           .mines (out_mines),
           .load (out_load),
           .data (in_data),
           .temp_data_in (out_temp_data_in),
           .decode (out_decode),
           .decode_done (out_decode_done),
           .alu (out_alu),
           .alu_done (out_alu_done),
           .gameover (out_gameover),
           .win (out_win),
           .global_score (out_global_score),
           .n_nearby (out_n_nearby),
           .temp_decoded (out_temp_decoded),
           .temp_cleared (out_temp_cleared)
          );

endmodule // End of Module top_module