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
input [4:0] data;
//-----------Output Ports---------------
output place_done, mines, decode_done, alu_done, gameover;
output [4:0] temp_data_in;
output [24:0] temp_decoded;
output [24:0] temp_cleared;
//------------Internal Variables--------
reg     place_done;
reg     [24:0] mines; // mine positions
reg     [4:0] temp_data_in; // encoded user input
reg     decode_done;
reg     [24:0] temp_decoded; // decoded user input
reg     [24:0] temp_cleared; // cleared cells
reg     gameover; // did we explode a mine?
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
        mines = 24'b001010001000000000000000;
   end else if (load) begin
        temp_data_in = data;
   end else if (decode) begin 
        if (temp_data_in < 25) begin                   // if input data is valid
               temp_decoded = 1'b1 << temp_data_in;    // set bit at index of input data
          else begin
               temp_decoded = 25'b0                    // error; default case
          end
        end
   end else if (alu) begin
        // compute the cleared cells
        temp_cleared = temp_cleared | temp_decoded;
        // perform 'bitwise-and' to see if a mine exploded (maybe use &&?)
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