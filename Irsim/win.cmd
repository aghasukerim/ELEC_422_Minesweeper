|
| top_module.cmd
|
| define vectors for easier display
vector out_state_main out_state_main\[3:0\]
vector in_data in_data\[4:0\]
vector in_mult in_mult\[2:0\]
vector in_incr in_incr\[2:0\]
vector in_n_mines in_n_mines\[2:0\]
vector out_temp_data_in out_temp_data_in\[4:0\]
vector out_n_nearby out_n_nearby\[1\] out_n_nearby\[0\]
vector out_temp_index out_temp_index\[4:0\]
vector out_temp_mine_cnt out_temp_mine_cnt\[2:0\]
vector out_mines out_mines\[24:0\]
vector out_global_score out_global_score\[7:0\]
vector out_temp_decoded out_temp_decoded\[24:0\]
vector out_temp_cleared out_temp_cleared\[24:0\]
| 
logfile top_module.log
ana in_restart in_place in_data_in
ana in_data in_mult in_incr in_n_mines
ana out_state_main
ana out_start out_place_done out_load out_decode
ana out_mines out_temp_data_in 
ana out_alu out_alu_done out_gameover out_win
ana out_global_score out_n_nearby out_temp_decoded out_temp_cleared
ana out_display out_display_done
ana out_temp_index out_temp_mine_cnt

|	cycle        	1 2 x 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 
V   in_restart    	0 1 1 0 0	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 
V	in_data		0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d24 0d24 0d24 0d24 0d24 0d24
V	in_mult		0d0 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7
V	in_incr		0d0 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d0 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 

| Two phase clock with non-overlap period - same as Questa testbench
clock in_clka 0 1 0 0
clock in_clkb 0 0 0 1
R