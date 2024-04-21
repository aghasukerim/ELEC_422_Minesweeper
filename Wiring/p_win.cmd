|
| top_module.cmd
|
| define vectors for easier display
| vector out_state_main out_state_main\[3:0\]
vector in_data in_data0 in_data1 in_data2 in_data3 in_data4
vector p_in_data p_in_data0 p_in_data1 p_in_data2 p_in_data3 p_in_data4
vector in_mult in_mult0 in_mult1 in_mult2
vector p_in_mult p_in_mult0 p_in_mult1 p_in_mult2
vector in_incr in_incr0 in_incr1 in_incr2
vector p_in_incr p_in_incr0 p_in_incr1 p_in_incr2
vector in_n_mines in_n_mines0 in_n_mines1 in_n_mines2
vector p_in_n_mines p_in_n_mines0 p_in_n_mines1 p_in_n_mines2
| vector out_temp_data_in out_temp_data_in\[4:0\]
vector out_n_nearby out_n_nearby0 out_n_nearby1
vector p_out_n_nearby p_out_n_nearby0 p_out_n_nearby1
| vector out_temp_index out_temp_index\[4:0\]
| vector out_temp_mine_cnt out_temp_mine_cnt\[2:0\]
| vector out_mines out_mines\[24:0\]
vector out_global_score out_global_score0 out_global_score1 out_global_score2 out_global_score3 out_global_score4 out_global_score5 out_global_score6 out_global_score7
vector p_out_global_score p_out_global_score0 p_out_global_score1 p_out_global_score2 p_out_global_score3 p_out_global_score4 p_out_global_score5 p_out_global_score6 p_out_global_score7
| vector out_temp_decoded out_temp_decoded\[24:0\]
vector out_temp_cleared out_temp_cleared0 out_temp_cleared1 out_temp_cleared2 out_temp_cleared3 out_temp_cleared4 out_temp_cleared5 out_temp_cleared6 out_temp_cleared7 out_temp_cleared8 out_temp_cleared9 out_temp_cleared10 out_temp_cleared11 out_temp_cleared12 out_temp_cleared13 out_temp_cleared14 out_temp_cleared15 out_temp_cleared16 out_temp_cleared17 out_temp_cleared18 out_temp_cleared19 out_temp_cleared20 out_temp_cleared21 out_temp_cleared22 out_temp_cleared23 out_temp_cleared24
vector cleared_map cleared_map0 cleared_map1 cleared_map2 cleared_map3 cleared_map4 cleared_map5 cleared_map6 cleared_map7 cleared_map8 cleared_map9 cleared_map10 cleared_map11 cleared_map12 cleared_map13 cleared_map14 cleared_map15 cleared_map16 cleared_map17 cleared_map18 cleared_map19 cleared_map20 cleared_map21 cleared_map22 cleared_map23 cleared_map24
| 
logfile top_module.log
ana in_restart in_place in_data_in
ana p_in_restart p_in_place p_in_data_in
ana in_data in_mult in_incr in_n_mines
ana p_in_data p_in_mult p_in_incr p_in_n_mines
ana out_state_main
ana out_start out_place_done out_load out_decode
ana out_mines out_temp_data_in 
ana out_alu out_alu_done out_gameover out_win
ana p_out_gameover p_out_win
ana out_global_score out_n_nearby out_temp_decoded out_temp_cleared
ana p_out_global_score p_out_n_nearby cleared_map
ana out_display out_display_done
ana out_temp_index out_temp_mine_cnt

| Initialization
V   in_restart  0 1 1 0 
V	in_place	0 0 0 1
V	in_data_in	0 0 0 0
V	in_data		0d0 0d0 0d0 0d0
V	in_mult		0d0 0d7 0d7 0d7
V	in_incr		0d0 0d6 0d6 0d6
V	in_n_mines	0d0 0d3 0d3 0d3
V   p_in_restart    0 1 1 0 
V	p_in_place	    0 0 0 1
V	p_in_data_in	0 0 0 0
V	p_in_data		0d0 0d0 0d0 0d0
V	p_in_mult		0d0 0d7 0d7 0d7
V	p_in_incr		0d0 0d6 0d6 0d6
V	p_in_n_mines	0d0 0d3 0d3 0d3
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R

| Clear cell 0

V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3
V   p_in_restart    0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	    1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3   
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 1

V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 
V   p_in_restart    0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	    1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 0d1 
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3   
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 2

V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart    0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	    1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 3

V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart    0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	    1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 4

V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart    0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	    1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 5

V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart    0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	    1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5 0d5
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 7

V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart    0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	    1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 8
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart    0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	    1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 9
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9 0d9
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 10
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10 0d10
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 11
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11 0d11
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 12
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 13
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13 0d13
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 14
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14 0d14
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 15
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15 0d15
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 16
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16 0d16
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 18
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18 0d18
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1 
R
| Clear cell 19
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart 0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19 0d19
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 20
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20 0d20
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 21
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 0d21 
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
| Clear cell 22
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22 0d22
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1 
R
| Clear cell 24
V   in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	in_data		0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24
V	in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  
V   p_in_restart  0 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_place	1 0 0 0 0 0 0 0 0 0 0 0 0 
V	p_in_data_in	0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data		0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24 0d24
V	p_in_mult		0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 
V	p_in_incr		0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 
V	p_in_n_mines	0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3  

| Two phase clock with non-overlap period - same as Questa testbench
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
