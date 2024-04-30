|
| top_module.cmd
|
| define vectors for easier display
| vector out_state_main out_state_main\[3:0\]
vector p_in_data p_in_data\[4:0\]
vector p_in_mult p_in_mult\[2:0\]
vector p_in_incr p_in_incr\[2:0\]
vector p_in_n_mines p_in_n_mines\[2:0\]
| vector out_temp_data_in out_temp_data_in\[4:0\]
vector p_out_n_nearby p_out_n_nearby\[1:0\]
| vector out_temp_index out_temp_index\[4:0\]
| vector out_temp_mine_cnt out_temp_mine_cnt\[2:0\]
| vector out_mines out_mines\[24:0\]
vector p_out_global_score p_out_global_score\[7:0\]
| vector out_temp_decoded out_temp_decoded\[24:0\]
vector p_out_temp_cleared p_out_temp_cleared\[24:0\]
|
stepsize 50 
logfile top_module.log
ana p_in_restart p_in_place p_in_data_in
ana p_in_data p_in_mult p_in_incr p_in_n_mines
| ana out_state_main
| ana out_start out_place_done out_load out_decode
| ana out_mines out_temp_data_in 
| ana out_alu out_alu_done 
ana p_out_gameover p_out_win
| ana out_temp_decoded
ana p_out_global_score p_out_n_nearby p_out_temp_cleared
| ana out_display out_display_done
| ana out_temp_index out_temp_mine_cnt

| Initialization
V   	p_in_restart  	0 1 1 0 
V	p_in_place	0 0 0 1
V	p_in_data_in	0 0 0 0
V	p_in_data		0d0 0d0 0d0  0d0
V	p_in_mult		0d0 0d7 0d7  0d7
V	p_in_incr		0d0 0d6 0d6  0d6
V	p_in_n_mines	0d0 0d3 0d3  0d3
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R

| Clear cell 0

V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 1

V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 2

V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 3

V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 4

V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 5

V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 7

V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 8
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 9
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 10
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
| Clear cell 11
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 12
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 13
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 14
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 15
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 16
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 18
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 19
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 20
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 21
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 22
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1 
R
| Clear cell 24
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  

| Two phase clock with non-overlap period - same as Questa testbench
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R
