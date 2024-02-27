//-----------------------------------------------------
// Design Name : dp
// File Name   : dp.v
// Function    : Data path for ALU 
//-----------------------------------------------------
//
//
module dp (clka, clkb, restart, start, place_done, mines, load, data, temp_data_in, decode, decode_done, alu, alu_done, gameover, temp_decoded, temp_cleared);
//-----------Input Ports---------------
input clka, clkb, restart, start, load, decode, alu;
input [3:0] data;
//-----------Output Ports---------------
output place_done, mines, decode_done, alu_done, gameover;
output [3:0] temp_data_in;
output [8:0] temp_decoded;
output [8:0] temp_cleared;
//------------Internal Variables--------
reg     place_done;
reg     [8:0] mines; // mine positions
reg     [3:0] temp_data_in; // encoded user input
reg     decode_done;
reg     [8:0] temp_decoded; // decoded user input
reg     [8:0] temp_cleared; // cleared cells
reg     gameover; // did we explose a mine?
reg     alu_done;

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
   end else if (start) begin
        // TODO: call the RNG placement for mines
        mines = 9'b001010001;
   end else if (load) begin
        temp_data_in = data;
   end else if (decode) begin 
        // TODO: create a real decoder
        temp_decoded = 9'b000000100; 
   end else if (alu) begin
        // compute the cleared cells
        temp_cleared = temp_cleared | temp_decoded;
        // perform bitwise-and to see if a mine exploded
        gameover = (mines & temp_decoded == 0); // weird here: it should be mines & temp_decoded != 0 but it's complemented
   end
end

always @ (negedge clkb)
begin
if (restart == 1'b1) begin
        place_done = 0;
        decode_done = 0;
        alu_done = 0;
   end else if (start) begin 
        place_done = 1;
        decode_done = 0;
        alu_done = 0;
   end else if (load) begin
        place_done = 0;
        decode_done = 0;
        alu_done = 0;
   end else if (decode) begin 
        place_done = 0;
        decode_done = 1;
        alu_done = 0;
   end else if (alu) begin
        place_done = 0;
        alu_done = 1;
        decode_done = 0;
   end
end

endmodule //End Of Module dp  datapath