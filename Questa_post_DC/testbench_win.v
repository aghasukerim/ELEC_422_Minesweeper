//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for win scenario on top module.
////-----------------------------------------------------
//
//`timescale 1ns/10ps
module top_module_win_tb();

// Inputs to top_module
reg  in_clka, in_clkb, in_restart, in_place, in_data_in;
reg  [4:0] in_data;
reg  [2:0] in_mult;
reg  [2:0]  in_incr; 
reg  [2:0]  in_n_mines;
// Outputs from top_module
wire [3:0] out_state_main;
wire out_start, out_place_done, out_load, out_decode;
wire [24:0] out_mines;
wire [4:0] out_temp_data_in;
wire out_alu, out_alu_done, out_gameover, out_win;
wire [7:0] out_global_score;
wire [1:0] out_n_nearby;
wire [24:0] out_temp_decoded;
wire [24:0] out_temp_cleared;
wire out_display, out_display_done;
wire [4:0] out_temp_index;
wire [2:0] out_temp_mine_cnt;

integer i;


//create a top FSM system instance.
top_module top (.in_clka (in_clka),
           .in_clkb (in_clkb),
           .in_restart (in_restart),
           .in_place (in_place),
           .in_data_in (in_data_in),
           .in_data (in_data),
           .in_mult (in_mult),
           .in_incr (in_incr),
           .in_n_mines (in_n_mines), 
	       .out_state_main (out_state_main),
	       .out_start (out_start),
	       .out_place_done (out_place_done),
	       .out_mines (out_mines),
	       .out_temp_data_in (out_temp_data_in),
	       .out_load (out_load),
	       .out_decode (out_decode),
	       .out_alu (out_alu),
	       .out_alu_done (out_alu_done),
	       .out_gameover (out_gameover),
		   .out_win (out_win),
		   .out_global_score (out_global_score),
		   .out_n_nearby (out_n_nearby),
	       .out_temp_decoded (out_temp_decoded),
	       .out_temp_cleared (out_temp_cleared),
	       .out_display (out_display),
	       .out_display_done (out_display_done),
	       .out_temp_index (out_temp_index),
	       .out_temp_mine_cnt (out_temp_mine_cnt)
          );

initial
begin

// Cycle 1
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 2
// Restart
in_restart = 1;
in_place = 0;
in_data_in = 0;
in_data = 0;
in_mult = 7;
in_incr = 6;
in_n_mines = 3;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 3
// Load the mines
in_restart = 0;
in_place = 1; 
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 4
// initialize the `mines` bitvector
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10


// Cycle 5
// generate a random value for the mines
// first mine
in_place = 0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 6
// generate a random value for the mines
// second mine
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 7
// generate a random value for the mines
// third mine
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// for loop to clear the mines
for (i = 0; i < 25; i = i + 1) begin
    if (i != 6 & i != 17 & i != 23) begin
        // Cycle 8
        //  Load user input
        in_data_in = 1;
        in_data = i;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
        
        // Cycle 9
        // go to load state
        in_data_in = 0;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
        
        // Cycle 10
        // go to decode state
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
        
        // Cycle 11
        // Perform the decoding
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
        
        // Cycle 12
        // Go to ALU
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
        
        // Cycle 13 
        // Perform the bitwise ops
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
        
        // Cycle 14
        // Go to display state
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
        
        
        // Cycle 15
        // Display the board
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
        
        // Cycle 16
        // Go back to the loop
        // Wait for user input
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 1; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 0; #10;
        in_clka = 0; in_clkb = 1; #10;
    end
end



$dumpfile ("top_module_win_tb.vcd"); 
$dumpvars; 

    
$stop;
end 
endmodule