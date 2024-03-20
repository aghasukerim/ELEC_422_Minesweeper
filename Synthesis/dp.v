//-----------------------------------------------------
// Design Name : dp
// File Name   : dp.v
// Function    : Data path for ALU 
//-----------------------------------------------------
//
//
module dp (clka, clkb, restart, start, mines, load, data, temp_data_in, decode, alu, alu_done, gameover,
 win, global_score, n_nearby, temp_decoded, temp_cleared, display, display_done);
//-----------Input Ports---------------
input clka, clkb, restart, start, load, decode, alu, display;
input [4:0] data;
input [24:0] mines;
//-----------Output Ports---------------
output alu_done, display_done, gameover, win;
output [4:0] temp_data_in;
output [24:0] temp_decoded;
output [24:0] temp_cleared;
output [31:0] global_score;
output [1:0] n_nearby;
//------------Internal Variables--------
//reg     place_done;
//reg     [24:0] mines; // mine positions
reg     [4:0] temp_data_in; // encoded user input
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
        //mines = 0;
        temp_data_in = 0;
        temp_decoded = 0;
        temp_cleared = 0;
        gameover = 0;
        win = 0;
        global_score = 0;
        n_nearby = 0;
   end else if (load) begin
        temp_data_in = data;
        temp_decoded = 0;
        temp_cleared = 0;
        gameover = 0;
        win = 0;
        global_score = 0;
        n_nearby = 0;        
   end else if (decode) begin 
        if (temp_data_in < 25) begin                   // if input data is valid
               temp_decoded = 1'b1 << temp_data_in;    // set bit at index of input data
        end else begin
               temp_decoded = 25'b0;                    // error, default case
          end
   end else if (alu) begin
     n_nearby = 0;                           // reset nearby counter each new data input
     casez (temp_decoded)                    // separate by columns to ensure correct positions are checked
       25'b0???00???00???00???00???0: begin  // check positions of column 2,3,4 (count from 1)
            if (mines[temp_data_in - 6] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in - 5] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in - 4] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in - 1] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 1] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 4] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 5] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 6] == 1)
                 n_nearby = n_nearby + 1;
       end
       25'b0000?0000?0000?0000?0000?: begin  // check positions of column 1
            if (mines[temp_data_in - 5] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in - 4] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 1] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 5] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 6] == 1)
                 n_nearby = n_nearby + 1;
       end
       25'b?0000?0000?0000?0000?0000: begin  // check positions of column 5
            if (mines[temp_data_in - 6] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in - 5] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in - 1] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 4] == 1)
                 n_nearby = n_nearby + 1;
            if (mines[temp_data_in + 5] == 1)
                 n_nearby = n_nearby + 1;
       end
     endcase
        // compute the cleared cells
        temp_cleared = temp_cleared | temp_decoded;
        // perform 'bitwise-and' to see if a mine exploded (maybe use &&?)
        gameover = ((mines & temp_decoded) != 0);
        if (gameover)
            n_nearby = 0;
        win = (mines == ~temp_cleared); //check that all non-mine positions have been cleared
        if (win) begin
             global_score = global_score + 1;
             gameover = 1; // if you win, also gameover
             n_nearby = 0;
        end
   end else if (display) begin
        // display
   end
end

always @ (negedge clkb)
begin
if (restart == 1'b1) begin
        alu_done = 0;
        display_done = 0;
   end else if (start) begin 
        alu_done = 0;
        display_done = 0;
   end else if (load) begin
        alu_done = 0;
        display_done = 0;
   end else if (decode) begin 
        alu_done = 0;
        display_done = 0;
   end else if (alu) begin
        alu_done = 1;
        display_done = 0;
   end else if (display) begin
        alu_done = 0;
        display_done = 1;
   end
end

endmodule //End Of Module dp  datapath
