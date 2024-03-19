//-----------------------------------------------------
// Design Name : dp
// File Name   : dp.v
// Function    : Data path for ALU 
//-----------------------------------------------------
//
//
module dp (clka, clkb, restart, start, place_done, mines, load, data, temp_data_in, decode, decode_done, alu, alu_done, gameover,
 win, global_score, n_nearby, temp_decoded, temp_cleared, display, display_done);
//-----------Input Ports---------------
input clka, clkb, restart, start, load, decode, alu, display;
input [4:0] data;
//-----------Output Ports---------------
output place_done, decode_done, alu_done, display_done, gameover, win;
output [24:0] mines;
output [4:0] temp_data_in;
output [24:0] temp_decoded;
output [24:0] temp_cleared;
output [31:0] global_score;
output [1:0] n_nearby;
//------------Internal Variables--------
reg     place_done;
reg     [24:0] mines; // mine positions
reg     [4:0] temp_data_in; // encoded user input
reg     decode_done;
reg     [24:0] temp_decoded; // decoded user input
reg     [24:0] temp_cleared; // cleared cells
reg     [31:0] global_score; //track number of total wins
reg     [1:0] n_nearby; //calculate # of mines directly next to chosen position
reg     gameover; // did we explode a mine?
reg     win; // calculate if user has won
reg     alu_done; // all compuatations are done
reg     display_done; // display is done

//-------------Code Starts Here---------
// Qualify the control signal by clka and clkb for the data and do registers
always @ (negedge clka)
begin
if (restart == 1'b1) begin
        mines = 0;
        temp_data_in = 0;
        temp_decoded = 0;
        temp_cleared = 0;
        gameover = 0;
        win = 0;
        global_score = 0;
        n_nearby = 0;

   end else if (start) begin
        // TODO: call the RNG placement for mines
        mines = 25'b0000000000000000000000001;
   end else if (load) begin
        temp_data_in = data;
   end else if (decode) begin 
        if (temp_data_in < 25) begin                   // if input data is valid
               temp_decoded = 1'b1 << temp_data_in;    // set bit at index of input data
        end else begin
               temp_decoded = 25'b0;                    // error, default case
          end
   end else if (alu) begin
        // TODO: functionality of n_nearby mines
        casez (x)
          25'b0???00???00???00???00???0: begin // positions of column 2,3,4 (count from 1)
               if (mines[temp_data_in - 1] == 1) begin
                    n_nearby = n_nearby + 1;
               end
          default:
               n_nearby = 0;
          end

        endcase
        // compute the cleared cells
        temp_cleared = temp_cleared | temp_decoded;
        // perform 'bitwise-and' to see if a mine exploded (maybe use &&?)
        gameover = ((mines & temp_decoded) != 0); // weird here: it should be mines & temp_decoded != 0 but it's complemented
        win = (mines == ~temp_cleared); //check that all non-mine positions have been cleared
        if (win) begin
             global_score = global_score + 1;
             gameover = 1; // if you win, also gameover
        end
   end else if (display) begin
        // display
   end
end

always @ (negedge clkb)
begin
if (restart == 1'b1) begin
        place_done = 0;
        decode_done = 0;
        alu_done = 0;
        display_done = 0;
   end else if (start) begin 
        place_done = 1;
        decode_done = 0;
        alu_done = 0;
        display_done = 0;
   end else if (load) begin
        place_done = 0;
        decode_done = 0;
        alu_done = 0;
        display_done = 0;
   end else if (decode) begin 
        place_done = 0;
        decode_done = 1;
        alu_done = 0;
        display_done = 0;
   end else if (alu) begin
        place_done = 0;
        alu_done = 1;
        decode_done = 0;
        display_done = 0;
   end else if (display) begin
        place_done = 0;
        alu_done = 0;
        decode_done = 0;
        display_done = 1;
   end
end

endmodule //End Of Module dp  datapath