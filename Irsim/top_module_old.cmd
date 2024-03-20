|
| top_module.cmd
|
| define vectors for easier display
vector in_a in_a\[3\] in_a\[2\] in_a\[1\] in_a\[0\]
vector in_b in_b\[3\] in_b\[2\] in_b\[1\] in_b\[0\]
vector in_c in_c\[3\] in_c\[2\] in_c\[1\] in_c\[0\]
vector in_d in_d\[3\] in_d\[2\] in_d\[1\] in_d\[0\]
vector out_pattern_a out_pattern_a\[3\] out_pattern_a\[2\] out_pattern_a\[1\] out_pattern_a\[0\]
vector out_pattern_b out_pattern_b\[3\] out_pattern_b\[2\] out_pattern_b\[1\] out_pattern_b\[0\]
vector out_test_c out_test_c\[3\] out_test_c\[2\] out_test_c\[1\] out_test_c\[0\]
vector out_test_d out_test_d\[3\] out_test_d\[2\] out_test_d\[1\] out_test_d\[0\]
vector out_state_main out_state_main\[2\]  out_state_main\[1\] out_state_main\[0\]
| 
logfile top_module.log
ana in_clka in_clkb in_restart
ana in_load_test in_load_pattern in_enter 
ana in_a in_b in_c in_d
ana out_state_main  
ana out_same out_match out_error out_save_temp_pat out_save_temp_test
ana out_save_pattern out_save_test
ana out_pattern_a out_pattern_b out_test_c out_test_d
|	cycle        	1 2 3 4 5 6 7 8 9 0 1 2
V   	in_restart    	0 1 0 0 0 0 0 0 0 0 0 0
V	in_load_test  	0 0 0 0 0 1 0 0 1 0 0 0
V	in_load_pattern 0 0 1 0 0 0 0 0 0 0 0 0
V	in_enter        0 0 0 1 0 0 1 0 0 1 0 0
V	in_a	      	0d0 0d0 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4 0d4
V	in_b	      	0d0 0d0 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8 0d8
V	in_c          	0d0 0d0 0d0 0d0 0d0 0d4 0d4 0d4 0d4 0d4 0d4 0d4
V	in_d	      	0d0 0d0 0d0 0d0 0d0 0d8 0d8 0d8 0d5 0d5 0d5 0d5
| Two phase clock with non-overlap period - same as Questa testbench
clock in_clka 0 1 0 0
clock in_clkb 0 0 0 1
R
