`timescale 1ns / 10ps
//-----------------------------------------------------
// Design Name : minesweeper_FSM
// File Name   : minesweeper_FSM.v
// Function    : 2 Phase Clock minesweeper_FSM
//-----------------------------------------------------
module main_FSM (clka, clkb, restart, state, place, start, place_done, data_in, data, load, decode, alu, alu_done, gameover, display, display_done);
//-------------Input Ports-----------------------------
input   clka, clkb, restart, place, place_done, data_in, alu_done, gameover, display_done;
input [4:0] data;
//-------------Output Ports----------------------------
output  state, start, load, decode, alu, display;
//-------------Input ports Data Type-------------------
wire    clka, clkb, restart, place, place_done, data_in, alu_done, gameover, display_done;
//-------------Output Ports Data Type------------------
reg     start; // data path can place the mines on the board
reg     load; // data path can load the user input
reg     decode; // data path can decode the user input
reg     alu; // data path can compute in the alu
reg     display; // data path can display the updated board
//------Internal Constants--------------------------
parameter   SIZE = 4;
parameter   IDLE  = 0, RNG_PLACE_MINES = 1, RNG_WAIT = 2, LOAD = 3, DECODE = 4,
            ALU = 5, ALU_WAIT = 6, DISPLAY = 7, DISPLAY_WAIT = 8, GAMEOVER = 9;
//-------------Internal Variables---------------------------
reg   [SIZE-1:0]          state;    	// Initial FSM state reg and then after
					// processing new output FSM state reg
wire  [SIZE-1:0]          temp_state; 	// Internal wire for output of function
					// for setting next statef
reg   [SIZE-1:0]          next_state; 	// Temporary reg to hold next state to
					// update state on output
//----------Code startes Here------------------------
assign temp_state = fsm_function(state, data_in, place, place_done, alu_done, gameover, display_done);
//----------Function for Combinational Logic to read inputs -----------
function [SIZE-1:0] fsm_function;
  input  [SIZE-1:0] state;
  input  data_in;
  input  place;   
  input  place_done;
  input  alu_done;
  input  gameover;
  input  display_done;

case(state)
   IDLE: 
    begin
        if (place) begin
            fsm_function = RNG_PLACE_MINES;
        end else begin
            fsm_function =  IDLE;
        end
    end
    RNG_PLACE_MINES:
    begin
        fsm_function = RNG_WAIT;
    end
    RNG_WAIT:
    begin
        if (place_done & data_in) begin 
            fsm_function = LOAD;
        end else begin
            fsm_function = RNG_WAIT;
        end
    end 
    LOAD:
    begin
        fsm_function = DECODE;
    end
    DECODE:
    begin
        fsm_function = ALU;
    end
    ALU:
    begin
        fsm_function = ALU_WAIT;
    end    
    ALU_WAIT:
    begin
        if (alu_done & gameover) begin
            fsm_function = GAMEOVER;
        end else if (alu_done & !gameover) begin
            fsm_function = DISPLAY;
        end else begin
            fsm_function = ALU_WAIT;
        end
    end
    GAMEOVER:
    begin
        fsm_function = IDLE;
    end    
    DISPLAY:
    begin
        fsm_function = DISPLAY_WAIT;
    end    
    DISPLAY_WAIT:
    begin
        if (display_done & data_in) begin
            fsm_function = LOAD;
        end else begin 
            fsm_function = DISPLAY_WAIT;
        end
    end    
   default: fsm_function = IDLE;
  endcase
endfunction
//----------Seq Logic-----------------------------
always @ (negedge clka)
begin : FSM_SEQ
  if (restart == 1'b1) begin
    next_state <= IDLE;
  end else begin
    next_state <= temp_state;
  end
end
//----------Output Logic--------------
always @ (negedge clkb)
begin : OUTPUT_LOGIC
  case(next_state)
  IDLE: begin
            state <= next_state;
            start <= 0;
            load <= 0;
            decode <= 0;
            alu <= 0;
            display <= 0;
        end
  RNG_PLACE_MINES: begin
            state <= next_state;
            start <= 1;
            load <= 0;
            decode <= 0;
            alu <= 0;
            display <= 0;
  end
  RNG_WAIT: begin
            state <= next_state;
            start <= 0;
            load <= 0;
            decode <= 0;
            alu <= 0;
            display <= 0;
  end
  LOAD: begin
            state <= next_state;
            load <= 1;
            decode <= 0;
            display <= 0;
  end
  DECODE: begin
            state <= next_state;
            load <= 0;
            decode <= 1;
            alu <= 0;
            display <= 0;
  end
  ALU: begin
            state <= next_state;
            load <= 0;
            decode <= 0;
            alu <= 1;
            display <= 0;
  end  
  ALU_WAIT: begin
            state <= next_state;
            load <= 0;
            decode <= 0;
            alu <= 0;
            display <= 0;
  end
  GAMEOVER: begin
            state <= next_state;
            load <= 0;
            decode <= 0;
            alu <= 0;
            display <= 0;
  end  
  DISPLAY: begin
            state <= next_state;
            load <= 0;
            decode <= 0;
            alu <= 0;
            display <= 1;
  end  
  DISPLAY_WAIT: begin
            state <= next_state;
            load <= 0;
            decode <= 0;
            alu <= 0;
            display <= 0;
  end  
  default: begin
            state <= next_state;
            start <= 0;
            load <= 0;
            alu <= 0;
         end
  endcase
end // End Of Block OUTPUT_LOGIC

endmodule // End of Module minesweeper_FSM