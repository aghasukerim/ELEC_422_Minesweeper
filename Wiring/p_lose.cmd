|
| top_module.cmd
|
| define vectors for easier display
vector out_state_main out_state_main\[3:0\]
vector in_data in_data0 in_data1 in_data2 in_data3 in_data4
vector p_in_data p_in_data0 p_in_data1 p_in_data2 p_in_data3 p_in_data4
vector in_mult in_mult0 in_mult1 in_mult2
vector p_in_mult p_in_mult0 p_in_mult1 p_in_mult2
vector in_incr in_incr0 in_incr1 in_incr2
vector p_in_incr p_in_incr0 p_in_incr1 p_in_incr2
vector in_n_mines in_n_mines0 in_n_mines1 in_n_mines2
vector p_in_n_mines p_in_n_mines0 p_in_n_mines1 p_in_n_mines2
vector out_temp_data_in out_temp_data_in\[4:0\]
vector out_n_nearby out_n_nearby0 out_n_nearby1
vector p_out_n_nearby p_out_n_nearby0 p_out_n_nearby1
vector out_temp_index out_temp_index\[4:0\]
vector out_temp_mine_cnt out_temp_mine_cnt\[2:0\]
vector out_mines out_mines\[24:0\]
vector out_global_score out_global_score0 out_global_score1 out_global_score2 out_global_score3 out_global_score4 out_global_score5 out_global_score6 out_global_score7
vector p_out_global_score p_out_global_score0 p_out_global_score1 p_out_global_score2 p_out_global_score3 p_out_global_score4 p_out_global_score5 p_out_global_score6 p_out_global_score7
vector out_temp_decoded out_temp_decoded\[24:0\]
vector out_temp_cleared out_temp_cleared0 out_temp_cleared1 out_temp_cleared2 out_temp_cleared3 out_temp_cleared4 out_temp_cleared5 out_temp_cleared6 out_temp_cleared7 out_temp_cleared8 out_temp_cleared9 out_temp_cleared10 out_temp_cleared11 out_temp_cleared12 out_temp_cleared13 out_temp_cleared14 out_temp_cleared15 out_temp_cleared16 out_temp_cleared17 out_temp_cleared18 out_temp_cleared19 out_temp_cleared20 out_temp_cleared21 out_temp_cleared22 out_temp_cleared23 out_temp_cleared24
vector p_out_temp_cleared p_out_temp_cleared0 p_out_temp_cleared1 p_out_temp_cleared2 p_out_temp_cleared3 p_out_temp_cleared4 p_out_temp_cleared5 p_out_temp_cleared6 p_out_temp_cleared7 p_out_temp_cleared8 p_out_temp_cleared9 p_out_temp_cleared10 p_out_temp_cleared11 p_out_temp_cleared12 p_out_temp_cleared13 p_out_temp_cleared14 p_out_temp_cleared15 p_out_temp_cleared16 p_out_temp_cleared17 p_out_temp_cleared18 p_out_temp_cleared19 p_out_temp_cleared20 p_out_temp_cleared21 p_out_temp_cleared22 p_out_temp_cleared23 p_out_temp_cleared24
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

|	cycle        	1 2 x 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6
V   in_restart    	0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V   p_in_restart    0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V	in_place	    0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0
V	p_in_place	    0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0
V	in_data_in	    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
V	p_in_data_in	0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0

V	in_data		    0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12
V	p_in_data		0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d0 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d17 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12 0d12
V	in_mult		    0d0 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7
V	p_in_mult		0d0 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7 0d7
V	in_incr		    0d0 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6
V	p_in_incr		0d0 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6 0d6
V	in_n_mines	    0d0 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2
V	p_in_n_mines	0d0 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d3 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2 0d2

| Two phase clock with non-overlap period - same as Questa testbench
clock in_clka   0 1 0 0
clock p_in_clka 0 1 0 0
clock in_clkb   0 0 0 1
clock p_in_clkb 0 0 0 1
R
