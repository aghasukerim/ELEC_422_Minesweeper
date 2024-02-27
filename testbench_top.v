//-----------------------------------------------------
//// Design Name : Testbench for top_module
//// File Name   : top_module_tb.v
//// Function    : Testbench for top module and total project.
////-----------------------------------------------------
//
//`timescale 1ns/10ps
module top_module_tb();

// Inputs to top_module
reg  in_clka, in_clkb, in_restart, in_place, in_data_in;
reg [3:0] in_data;
// Outputs from top_module
wire [3:0] out_state_main;
wire out_start, out_place_done, out_load, out_decode, out_decode_done;
wire [8:0] out_mines;
wire [3:0] out_temp_data_in;
wire out_alu, out_alu_done, out_gameover, out_win;
wire [31:0] out_global_score;
wire [8:0] out_temp_decoded;
wire [8:0] out_temp_cleared;


//create a top FSM system instance.
top_module top (.in_clka (in_clka),
           .in_clkb (in_clkb),
           .in_restart (in_restart),
           .in_place (in_place),
           .in_data_in (in_data_in),
           .in_data (in_data),
	       .out_state_main (out_state_main),
	       .out_start (out_start),
	       .out_place_done (out_place_done),
	       .out_mines (out_mines),
	       .out_temp_data_in (out_temp_data_in),
	       .out_load (out_load),
	       .out_decode (out_decode),
	       .out_decode_done (out_decode_done),
	       .out_alu (out_alu),
	       .out_alu_done (out_alu_done),
	       .out_gameover (out_gameover),
		   .out_win (out_win),
		   .out_global_score (out_global_score),
	       .out_temp_decoded (out_temp_decoded),
	       .out_temp_cleared (out_temp_cleared)
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
// Generate a random value for the mines
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 5
// Generation done; Load user input
in_data_in = 1;
in_data = 2;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 6
// go to load state
in_data_in = 0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 7
// go to decode state
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 8
// Perform the decoding
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 9
// Go to ALU
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 10 
// Perform the bitwise ops
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

// Cycle 11
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10

$dumpfile ("top_module_tb.vcd"); 
$dumpvars; 

    
$stop;
end 

endmodule
