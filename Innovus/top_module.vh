/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Apr 14 16:43:15 2024
/////////////////////////////////////////////////////////////


module top_module ( in_clka, in_clkb, in_restart, in_mult, in_incr, in_n_mines, 
        out_state_main, in_place, in_data_in, in_data, out_start, 
        out_place_done, out_mines, out_load, out_temp_data_in, out_decode, 
        out_alu, out_alu_done, out_gameover, out_win, out_global_score, 
        out_n_nearby, out_temp_decoded, out_temp_cleared, out_display, 
        out_display_done, out_temp_index, out_temp_mine_cnt );
  input [2:0] in_mult;
  input [2:0] in_incr;
  input [2:0] in_n_mines;
  output [3:0] out_state_main;
  input [4:0] in_data;
  output [24:0] out_mines;
  output [4:0] out_temp_data_in;
  output [7:0] out_global_score;
  output [1:0] out_n_nearby;
  output [24:0] out_temp_decoded;
  output [24:0] out_temp_cleared;
  output [4:0] out_temp_index;
  output [2:0] out_temp_mine_cnt;
  input in_clka, in_clkb, in_restart, in_place, in_data_in;
  output out_start, out_place_done, out_load, out_decode, out_alu,
         out_alu_done, out_gameover, out_win, out_display, out_display_done;
  wire   \main/n61 , \main/n60 , \main/n59 , \main/n58 , \main/n57 ,
         \main/n56 , \main/n55 , \main/n54 , \main/n53 , \main/n52 ,
         \main/n51 , \main/n50 , \main/n49 , \main/n48 , \main/n47 ,
         \main/n46 , \main/n45 , \main/n44 , \main/n43 , \main/n42 ,
         \main/n41 , \main/n40 , \main/n39 , \main/n38 , \main/n37 ,
         \main/n36 , \main/n35 , \main/n34 , \main/n33 , \main/n32 ,
         \main/n31 , \main/n30 , \main/n29 , \main/n28 , \main/n27 ,
         \main/n26 , \main/n25 , \main/n24 , \main/n23 , \main/n22 ,
         \main/n21 , \main/n20 , \main/n19 , \main/n18 , \main/n17 ,
         \main/N138 , \main/N88 , \main/N87 , \main/N86 , \main/N85 ,
         \dp_ALU/n621 , \dp_ALU/n620 , \dp_ALU/n619 , \dp_ALU/n618 ,
         \dp_ALU/n617 , \dp_ALU/n616 , \dp_ALU/n615 , \dp_ALU/n614 ,
         \dp_ALU/n613 , \dp_ALU/n612 , \dp_ALU/n611 , \dp_ALU/n610 ,
         \dp_ALU/n609 , \dp_ALU/n608 , \dp_ALU/n607 , \dp_ALU/n606 ,
         \dp_ALU/n605 , \dp_ALU/n604 , \dp_ALU/n603 , \dp_ALU/n602 ,
         \dp_ALU/n601 , \dp_ALU/n600 , \dp_ALU/n599 , \dp_ALU/n598 ,
         \dp_ALU/n597 , \dp_ALU/n596 , \dp_ALU/n595 , \dp_ALU/n594 ,
         \dp_ALU/n593 , \dp_ALU/n592 , \dp_ALU/n591 , \dp_ALU/n590 ,
         \dp_ALU/n589 , \dp_ALU/n588 , \dp_ALU/n587 , \dp_ALU/n586 ,
         \dp_ALU/n585 , \dp_ALU/n584 , \dp_ALU/n583 , \dp_ALU/n582 ,
         \dp_ALU/n581 , \dp_ALU/n580 , \dp_ALU/n579 , \dp_ALU/n578 ,
         \dp_ALU/n577 , \dp_ALU/n576 , \dp_ALU/n575 , \dp_ALU/n574 ,
         \dp_ALU/n573 , \dp_ALU/n572 , \dp_ALU/n571 , \dp_ALU/n570 ,
         \dp_ALU/n569 , \dp_ALU/n568 , \dp_ALU/n567 , \dp_ALU/n566 ,
         \dp_ALU/n565 , \dp_ALU/n564 , \dp_ALU/n563 , \dp_ALU/n562 ,
         \dp_ALU/n561 , \dp_ALU/n560 , \dp_ALU/n559 , \dp_ALU/n558 ,
         \dp_ALU/n557 , \dp_ALU/n556 , \dp_ALU/n555 , \dp_ALU/n554 ,
         \dp_ALU/n553 , \dp_ALU/n552 , \dp_ALU/n551 , \dp_ALU/n550 ,
         \dp_ALU/n549 , \dp_ALU/n548 , \dp_ALU/n547 , \dp_ALU/n546 ,
         \dp_ALU/n545 , \dp_ALU/n544 , \dp_ALU/n543 , \dp_ALU/n542 ,
         \dp_ALU/n541 , \dp_ALU/n540 , \dp_ALU/n539 , \dp_ALU/n538 ,
         \dp_ALU/n537 , \dp_ALU/n536 , \dp_ALU/n535 , \dp_ALU/n534 ,
         \dp_ALU/n533 , \dp_ALU/n532 , \dp_ALU/n531 , \dp_ALU/n530 ,
         \dp_ALU/n529 , \dp_ALU/n528 , \dp_ALU/n527 , \dp_ALU/n526 ,
         \dp_ALU/n525 , \dp_ALU/n524 , \dp_ALU/n523 , \dp_ALU/n522 ,
         \dp_ALU/n521 , \dp_ALU/n520 , \dp_ALU/n519 , \dp_ALU/n518 ,
         \dp_ALU/n517 , \dp_ALU/n516 , \dp_ALU/n515 , \dp_ALU/n514 ,
         \dp_ALU/n513 , \dp_ALU/n512 , \dp_ALU/n511 , \dp_ALU/n510 ,
         \dp_ALU/n509 , \dp_ALU/n508 , \dp_ALU/n507 , \dp_ALU/n506 ,
         \dp_ALU/n505 , \dp_ALU/n504 , \dp_ALU/n503 , \dp_ALU/n502 ,
         \dp_ALU/n501 , \dp_ALU/n500 , \dp_ALU/n499 , \dp_ALU/n498 ,
         \dp_ALU/n497 , \dp_ALU/n496 , \dp_ALU/n495 , \dp_ALU/n494 ,
         \dp_ALU/n493 , \dp_ALU/n492 , \dp_ALU/n491 , \dp_ALU/n490 ,
         \dp_ALU/n489 , \dp_ALU/n488 , \dp_ALU/n487 , \dp_ALU/n486 ,
         \dp_ALU/n485 , \dp_ALU/n484 , \dp_ALU/n483 , \dp_ALU/n482 ,
         \dp_ALU/n481 , \dp_ALU/n480 , \dp_ALU/n479 , \dp_ALU/n478 ,
         \dp_ALU/n477 , \dp_ALU/n476 , \dp_ALU/n475 , \dp_ALU/n474 ,
         \dp_ALU/n473 , \dp_ALU/n472 , \dp_ALU/n471 , \dp_ALU/n470 ,
         \dp_ALU/n469 , \dp_ALU/n468 , \dp_ALU/n467 , \dp_ALU/n466 ,
         \dp_ALU/n465 , \dp_ALU/n464 , \dp_ALU/n463 , \dp_ALU/n462 ,
         \dp_ALU/n461 , \dp_ALU/n460 , \dp_ALU/n459 , \dp_ALU/n458 ,
         \dp_ALU/n457 , \dp_ALU/n456 , \dp_ALU/n455 , \dp_ALU/n454 ,
         \dp_ALU/n453 , \dp_ALU/n452 , \dp_ALU/n451 , \dp_ALU/n450 ,
         \dp_ALU/n449 , \dp_ALU/n448 , \dp_ALU/n447 , \dp_ALU/n446 ,
         \dp_ALU/n445 , \dp_ALU/n444 , \dp_ALU/n443 , \dp_ALU/n442 ,
         \dp_ALU/n441 , \dp_ALU/n440 , \dp_ALU/n439 , \dp_ALU/n438 ,
         \dp_ALU/n437 , \dp_ALU/n436 , \dp_ALU/n435 , \dp_ALU/n434 ,
         \dp_ALU/n433 , \dp_ALU/n432 , \dp_ALU/n431 , \dp_ALU/n430 ,
         \dp_ALU/n429 , \dp_ALU/n428 , \dp_ALU/n427 , \dp_ALU/n426 ,
         \dp_ALU/n425 , \dp_ALU/n424 , \dp_ALU/n423 , \dp_ALU/n422 ,
         \dp_ALU/n421 , \dp_ALU/n420 , \dp_ALU/n419 , \dp_ALU/n418 ,
         \dp_ALU/n417 , \dp_ALU/n416 , \dp_ALU/n415 , \dp_ALU/n414 ,
         \dp_ALU/n413 , \dp_ALU/n412 , \dp_ALU/n411 , \dp_ALU/n410 ,
         \dp_ALU/n409 , \dp_ALU/n408 , \dp_ALU/n407 , \dp_ALU/n406 ,
         \dp_ALU/n405 , \dp_ALU/n404 , \dp_ALU/n403 , \dp_ALU/n402 ,
         \dp_ALU/n401 , \dp_ALU/n400 , \dp_ALU/n399 , \dp_ALU/n398 ,
         \dp_ALU/n397 , \dp_ALU/n396 , \dp_ALU/n395 , \dp_ALU/n394 ,
         \dp_ALU/n393 , \dp_ALU/n392 , \dp_ALU/n391 , \dp_ALU/n390 ,
         \dp_ALU/n389 , \dp_ALU/n388 , \dp_ALU/n387 , \dp_ALU/n386 ,
         \dp_ALU/n385 , \dp_ALU/n384 , \dp_ALU/n383 , \dp_ALU/n382 ,
         \dp_ALU/n381 , \dp_ALU/n380 , \dp_ALU/n379 , \dp_ALU/n378 ,
         \dp_ALU/n377 , \dp_ALU/n376 , \dp_ALU/n375 , \dp_ALU/n374 ,
         \dp_ALU/n373 , \dp_ALU/n372 , \dp_ALU/n371 , \dp_ALU/n370 ,
         \dp_ALU/n369 , \dp_ALU/n368 , \dp_ALU/n367 , \dp_ALU/n366 ,
         \dp_ALU/n365 , \dp_ALU/n364 , \dp_ALU/n363 , \dp_ALU/n362 ,
         \dp_ALU/n361 , \dp_ALU/n360 , \dp_ALU/n359 , \dp_ALU/n358 ,
         \dp_ALU/n357 , \dp_ALU/n356 , \dp_ALU/n355 , \dp_ALU/n354 ,
         \dp_ALU/n353 , \dp_ALU/n352 , \dp_ALU/n351 , \dp_ALU/n350 ,
         \dp_ALU/n349 , \dp_ALU/n348 , \dp_ALU/n347 , \dp_ALU/n346 ,
         \dp_ALU/n345 , \dp_ALU/n344 , \dp_ALU/n343 , \dp_ALU/n342 ,
         \dp_ALU/n341 , \dp_ALU/n340 , \dp_ALU/n339 , \dp_ALU/n338 ,
         \dp_ALU/n337 , \dp_ALU/n336 , \dp_ALU/n335 , \dp_ALU/n334 ,
         \dp_ALU/n333 , \dp_ALU/n332 , \dp_ALU/n331 , \dp_ALU/n330 ,
         \dp_ALU/n329 , \dp_ALU/n328 , \dp_ALU/n327 , \dp_ALU/n326 ,
         \dp_ALU/n325 , \dp_ALU/n324 , \dp_ALU/n323 , \dp_ALU/n322 ,
         \dp_ALU/n321 , \dp_ALU/n320 , \dp_ALU/n319 , \dp_ALU/n318 ,
         \dp_ALU/n317 , \dp_ALU/n316 , \dp_ALU/n315 , \dp_ALU/n314 ,
         \dp_ALU/n313 , \dp_ALU/n312 , \dp_ALU/n311 , \dp_ALU/n310 ,
         \dp_ALU/n309 , \dp_ALU/n308 , \dp_ALU/n307 , \dp_ALU/n306 ,
         \dp_ALU/n305 , \dp_ALU/n304 , \dp_ALU/n303 , \dp_ALU/n302 ,
         \dp_ALU/n301 , \dp_ALU/n300 , \dp_ALU/n299 , \dp_ALU/n298 ,
         \dp_ALU/n297 , \dp_ALU/n296 , \dp_ALU/n295 , \dp_ALU/n294 ,
         \dp_ALU/n293 , \dp_ALU/n292 , \dp_ALU/n291 , \dp_ALU/n290 ,
         \dp_ALU/n289 , \dp_ALU/n288 , \dp_ALU/n287 , \dp_ALU/n286 ,
         \dp_ALU/n285 , \dp_ALU/n284 , \dp_ALU/n283 , \dp_ALU/n282 ,
         \dp_ALU/n281 , \dp_ALU/n280 , \dp_ALU/n279 , \dp_ALU/n278 ,
         \dp_ALU/n277 , \dp_ALU/n276 , \dp_ALU/n275 , \dp_ALU/n274 ,
         \dp_ALU/n273 , \dp_ALU/n272 , \dp_ALU/n271 , \dp_ALU/n270 ,
         \dp_ALU/n269 , \dp_ALU/n268 , \dp_ALU/n267 , \dp_ALU/n266 ,
         \dp_ALU/n265 , \dp_ALU/n264 , \dp_ALU/n263 , \dp_ALU/n262 ,
         \dp_ALU/n261 , \dp_ALU/n260 , \dp_ALU/n259 , \dp_ALU/n258 ,
         \dp_ALU/n257 , \dp_ALU/n256 , \dp_ALU/n255 , \dp_ALU/n254 ,
         \dp_ALU/n253 , \dp_ALU/n252 , \dp_ALU/n251 , \dp_ALU/n250 ,
         \dp_ALU/n249 , \dp_ALU/n248 , \dp_ALU/n247 , \dp_ALU/n246 ,
         \dp_ALU/n245 , \dp_ALU/n244 , \dp_ALU/n243 , \dp_ALU/n242 ,
         \dp_ALU/n241 , \dp_ALU/n240 , \dp_ALU/n239 , \dp_ALU/n238 ,
         \dp_ALU/n237 , \dp_ALU/n236 , \dp_ALU/n235 , \dp_ALU/n234 ,
         \dp_ALU/n233 , \dp_ALU/n232 , \dp_ALU/n231 , \dp_ALU/n230 ,
         \dp_ALU/n229 , \dp_ALU/n228 , \dp_ALU/n227 , \dp_ALU/n226 ,
         \dp_ALU/n225 , \dp_ALU/n224 , \dp_ALU/n223 , \dp_ALU/n222 ,
         \dp_ALU/n221 , \dp_ALU/n220 , \dp_ALU/n219 , \dp_ALU/n218 ,
         \dp_ALU/n217 , \dp_ALU/n216 , \dp_ALU/n215 , \dp_ALU/n214 ,
         \dp_ALU/n213 , \dp_ALU/n212 , \dp_ALU/n211 , \dp_ALU/n210 ,
         \dp_ALU/n209 , \dp_ALU/n208 , \dp_ALU/dp_cluster_2/N1202 ,
         \dp_ALU/dp_cluster_2/N1203 , \dp_ALU/dp_cluster_2/N1238 ,
         \dp_ALU/dp_cluster_2/N1239 , \dp_ALU/dp_cluster_2/N1274 ,
         \dp_ALU/dp_cluster_2/N1275 , \dp_ALU/dp_cluster_1/N1532 ,
         \dp_ALU/dp_cluster_0/N1741 , \dp_ALU/dp_cluster_0/N1742 ,
         \dp_ALU/N1938 , \dp_ALU/N1937 , \dp_ALU/N1936 , \dp_ALU/N1935 ,
         \dp_ALU/N1934 , \dp_ALU/N1933 , \dp_ALU/N1932 , \dp_ALU/N1870 ,
         \dp_ALU/N1869 , \dp_ALU/N1673 , \dp_ALU/N1672 , \dp_ALU/N1463 ,
         \dp_ALU/N1462 , \dp_ALU/N1459 , \dp_ALU/N1416 , \dp_ALU/N1371 ,
         \dp_ALU/N1324 , \dp_ALU/N1243 , \dp_ALU/N1242 , \dp_ALU/N1207 ,
         \dp_ALU/N1204 , \dp_ALU/N1171 , \dp_ALU/N1170 , \dp_ALU/N1169 ,
         \dp_ALU/N1139 , \dp_ALU/N1138 , \dp_ALU/N1061 , \dp_ALU/N1060 ,
         \dp_ALU/N1059 , \dp_ALU/N1058 , \dp_ALU/N1057 , \dp_ALU/N1056 ,
         \dp_ALU/N1055 , \dp_ALU/N1054 , \dp_ALU/N1053 , \dp_ALU/N1052 ,
         \dp_ALU/N1051 , \dp_ALU/N1050 , \dp_ALU/N1049 , \dp_ALU/N1048 ,
         \dp_ALU/N1047 , \dp_ALU/N1046 , \dp_ALU/N1045 , \dp_ALU/N1044 ,
         \dp_ALU/N1043 , \dp_ALU/N1042 , \dp_ALU/N1041 , \dp_ALU/N1040 ,
         \dp_ALU/N1039 , \dp_ALU/N1038 , \dp_ALU/N1037 , \dp_RNG/n171 ,
         \dp_RNG/n170 , \dp_RNG/n169 , \dp_RNG/n168 , \dp_RNG/n167 ,
         \dp_RNG/n166 , \dp_RNG/n165 , \dp_RNG/n164 , \dp_RNG/n163 ,
         \dp_RNG/n162 , \dp_RNG/n161 , \dp_RNG/n160 , \dp_RNG/n159 ,
         \dp_RNG/n158 , \dp_RNG/n157 , \dp_RNG/n156 , \dp_RNG/n155 ,
         \dp_RNG/n154 , \dp_RNG/n153 , \dp_RNG/n152 , \dp_RNG/n151 ,
         \dp_RNG/n150 , \dp_RNG/n149 , \dp_RNG/n148 , \dp_RNG/n147 ,
         \dp_RNG/n146 , \dp_RNG/n145 , \dp_RNG/n144 , \dp_RNG/n143 ,
         \dp_RNG/n142 , \dp_RNG/n141 , \dp_RNG/n140 , \dp_RNG/n139 ,
         \dp_RNG/n138 , \dp_RNG/n137 , \dp_RNG/n136 , \dp_RNG/n135 ,
         \dp_RNG/n134 , \dp_RNG/n133 , \dp_RNG/n132 , \dp_RNG/n131 ,
         \dp_RNG/n130 , \dp_RNG/n129 , \dp_RNG/n128 , \dp_RNG/n127 ,
         \dp_RNG/n126 , \dp_RNG/n125 , \dp_RNG/n124 , \dp_RNG/n123 ,
         \dp_RNG/n122 , \dp_RNG/n121 , \dp_RNG/n120 , \dp_RNG/n119 ,
         \dp_RNG/n118 , \dp_RNG/n117 , \dp_RNG/n116 , \dp_RNG/n115 ,
         \dp_RNG/n114 , \dp_RNG/n113 , \dp_RNG/n112 , \dp_RNG/n111 ,
         \dp_RNG/n110 , \dp_RNG/n109 , \dp_RNG/n108 , \dp_RNG/n107 ,
         \dp_RNG/n106 , \dp_RNG/n105 , \dp_RNG/n104 , \dp_RNG/n103 ,
         \dp_RNG/n102 , \dp_RNG/n101 , \dp_RNG/n100 , \dp_RNG/n99 ,
         \dp_RNG/n98 , \dp_RNG/n97 , \dp_RNG/n96 , \dp_RNG/n95 , \dp_RNG/n94 ,
         \dp_RNG/n93 , \dp_RNG/n92 , \dp_RNG/n91 , \dp_RNG/n90 , \dp_RNG/n89 ,
         \dp_RNG/n88 , \dp_RNG/n87 , \dp_RNG/n86 , \dp_RNG/n85 , \dp_RNG/n84 ,
         \dp_RNG/n83 , \dp_RNG/n82 , \dp_RNG/n81 , \dp_RNG/n80 , \dp_RNG/n79 ,
         \dp_RNG/n78 , \dp_RNG/n77 , \dp_RNG/n76 , \dp_RNG/n75 , \dp_RNG/n74 ,
         \dp_RNG/n73 , \dp_RNG/n72 , \dp_RNG/n71 , \dp_RNG/n70 , \dp_RNG/n69 ,
         \dp_RNG/n68 , \dp_RNG/n67 , \dp_RNG/n66 , \dp_RNG/n65 , \dp_RNG/n64 ,
         \dp_RNG/n63 , \dp_RNG/n62 , \dp_RNG/n61 , \dp_RNG/n60 , \dp_RNG/n59 ,
         \dp_RNG/n58 , \dp_RNG/n57 , \dp_RNG/n56 , \dp_RNG/n54 , \dp_RNG/n53 ,
         \dp_RNG/n52 , \dp_RNG/n51 , \dp_RNG/n50 , \dp_RNG/n49 ,
         \dp_RNG/dp_cluster_0/N19 , \dp_RNG/dp_cluster_0/N20 ,
         \dp_RNG/dp_cluster_0/N21 , \dp_RNG/dp_cluster_0/N22 ,
         \dp_RNG/dp_cluster_0/N23 , \dp_RNG/dp_cluster_0/N24 ,
         \dp_RNG/dp_cluster_0/N25 , \dp_RNG/dp_cluster_0/N26 , \dp_RNG/N35 ,
         \dp_RNG/N34 , \dp_RNG/N33 , \dp_RNG/N32 , \dp_RNG/N31 , \dp_RNG/N30 ,
         \dp_RNG/N29 , \dp_RNG/N28 , \dp_RNG/N27 , \dp_RNG/temp_gen ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n2 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n3 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n4 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n2 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n3 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n4 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n2 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n3 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n4 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n2 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n3 ,
         \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n4 ,
         \dp_RNG/rem_49/u_div/SumTmp[4][4] ,
         \dp_RNG/rem_49/u_div/SumTmp[4][3] ,
         \dp_RNG/rem_49/u_div/SumTmp[4][2] ,
         \dp_RNG/rem_49/u_div/SumTmp[4][1] ,
         \dp_RNG/rem_49/u_div/SumTmp[3][4] ,
         \dp_RNG/rem_49/u_div/SumTmp[3][3] ,
         \dp_RNG/rem_49/u_div/SumTmp[3][2] ,
         \dp_RNG/rem_49/u_div/SumTmp[3][1] ,
         \dp_RNG/rem_49/u_div/SumTmp[2][4] ,
         \dp_RNG/rem_49/u_div/SumTmp[2][3] ,
         \dp_RNG/rem_49/u_div/SumTmp[2][2] ,
         \dp_RNG/rem_49/u_div/SumTmp[2][1] ,
         \dp_RNG/rem_49/u_div/SumTmp[1][4] ,
         \dp_RNG/rem_49/u_div/SumTmp[1][3] ,
         \dp_RNG/rem_49/u_div/SumTmp[1][2] ,
         \dp_RNG/rem_49/u_div/SumTmp[1][1] ,
         \dp_RNG/rem_49/u_div/SumTmp[0][4] ,
         \dp_RNG/rem_49/u_div/SumTmp[0][3] ,
         \dp_RNG/rem_49/u_div/SumTmp[0][2] ,
         \dp_RNG/rem_49/u_div/SumTmp[0][1] , \dp_RNG/dp_cluster_0/mult_49/n28 ,
         \dp_RNG/dp_cluster_0/mult_49/n27 , \dp_RNG/dp_cluster_0/mult_49/n26 ,
         \dp_RNG/dp_cluster_0/mult_49/n25 , \dp_RNG/dp_cluster_0/mult_49/n24 ,
         \dp_RNG/dp_cluster_0/mult_49/n23 , \dp_RNG/dp_cluster_0/mult_49/n22 ,
         \dp_RNG/dp_cluster_0/mult_49/n21 , \dp_RNG/dp_cluster_0/mult_49/n20 ,
         \dp_RNG/dp_cluster_0/mult_49/n19 , \dp_RNG/dp_cluster_0/mult_49/n18 ,
         \dp_RNG/dp_cluster_0/mult_49/n17 , \dp_RNG/dp_cluster_0/mult_49/n16 ,
         \dp_RNG/dp_cluster_0/mult_49/n15 , \dp_RNG/dp_cluster_0/mult_49/n14 ,
         \dp_RNG/dp_cluster_0/mult_49/n13 , \dp_RNG/dp_cluster_0/mult_49/n12 ,
         \dp_RNG/dp_cluster_0/mult_49/n11 , \dp_RNG/dp_cluster_0/mult_49/n10 ,
         \dp_RNG/dp_cluster_0/mult_49/n9 , \dp_RNG/dp_cluster_0/mult_49/n8 ,
         \dp_RNG/dp_cluster_0/mult_49/n7 , \dp_RNG/dp_cluster_0/mult_49/n6 ,
         \dp_RNG/dp_cluster_0/mult_49/n5 , \dp_RNG/dp_cluster_0/mult_49/n4 ,
         \dp_RNG/dp_cluster_0/mult_49/n3 , \dp_RNG/dp_cluster_0/mult_49/n2 ,
         \dp_ALU/r494/carry[4] , \dp_ALU/r495/carry[2] ,
         \dp_ALU/r495/carry[4] , \dp_ALU/r497/carry[4] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307;
  wire   [3:0] \main/next_state ;
  wire   [8:0] \dp_RNG/rem_49/quotient ;
  wire   [8:1] \dp_RNG/dp_cluster_0/add_49/carry ;
  wire   [7:2] \dp_ALU/add_113/carry ;
  assign out_temp_data_in[0] = \dp_ALU/N1204 ;

  NOR2X1 \main/U68  ( .A(n132), .B(\main/next_state [3]), .Y(\main/n19 ) );
  NAND2X1 \main/U67  ( .A(\main/n19 ), .B(n133), .Y(\main/n57 ) );
  NOR2X1 \main/U66  ( .A(n125), .B(\main/n57 ), .Y(\main/N138 ) );
  NOR2X1 \main/U65  ( .A(n137), .B(out_gameover), .Y(\main/n47 ) );
  NOR2X1 \main/U64  ( .A(out_state_main[3]), .B(out_state_main[0]), .Y(
        \main/n56 ) );
  NAND3X1 \main/U63  ( .A(out_state_main[2]), .B(out_state_main[1]), .C(
        \main/n56 ), .Y(\main/n55 ) );
  OAI21X1 \main/U62  ( .A(in_place), .B(out_state_main[2]), .C(n127), .Y(
        \main/n52 ) );
  NOR2X1 \main/U61  ( .A(n127), .B(out_state_main[2]), .Y(\main/n42 ) );
  NAND3X1 \main/U60  ( .A(\main/n42 ), .B(in_data_in), .C(out_place_done), .Y(
        \main/n53 ) );
  NAND2X1 \main/U59  ( .A(n136), .B(n134), .Y(\main/n54 ) );
  AOI21X1 \main/U58  ( .A(\main/n52 ), .B(\main/n53 ), .C(\main/n54 ), .Y(
        \main/n51 ) );
  AOI21X1 \main/U57  ( .A(\main/n47 ), .B(n129), .C(\main/n51 ), .Y(\main/n48 ) );
  NAND3X1 \main/U56  ( .A(out_alu_done), .B(n129), .C(out_gameover), .Y(
        \main/n38 ) );
  NOR2X1 \main/U55  ( .A(out_state_main[2]), .B(out_state_main[1]), .Y(
        \main/n50 ) );
  NAND3X1 \main/U54  ( .A(out_state_main[3]), .B(n136), .C(\main/n50 ), .Y(
        \main/n35 ) );
  NAND3X1 \main/U53  ( .A(out_display_done), .B(in_data_in), .C(n130), .Y(
        \main/n46 ) );
  AOI21X1 \main/U52  ( .A(\main/n48 ), .B(\main/n49 ), .C(n17), .Y(\main/N85 )
         );
  OR2X1 \main/U51  ( .A(n137), .B(\main/n47 ), .Y(\main/n40 ) );
  AOI22X1 \main/U50  ( .A(\main/n42 ), .B(n136), .C(out_state_main[0]), .D(
        n127), .Y(\main/n45 ) );
  OAI21X1 \main/U49  ( .A(out_state_main[3]), .B(\main/n45 ), .C(\main/n46 ), 
        .Y(\main/n44 ) );
  AOI21X1 \main/U48  ( .A(n129), .B(\main/n40 ), .C(\main/n44 ), .Y(\main/n43 ) );
  NOR2X1 \main/U47  ( .A(n17), .B(\main/n43 ), .Y(\main/N86 ) );
  AOI22X1 \main/U46  ( .A(n127), .B(out_state_main[2]), .C(out_state_main[0]), 
        .D(\main/n42 ), .Y(\main/n41 ) );
  AOI22X1 \main/U45  ( .A(n126), .B(n134), .C(n129), .D(\main/n40 ), .Y(
        \main/n39 ) );
  NOR2X1 \main/U44  ( .A(n17), .B(\main/n39 ), .Y(\main/N87 ) );
  NOR2X1 \main/U43  ( .A(out_state_main[3]), .B(n127), .Y(\main/n37 ) );
  AOI21X1 \main/U42  ( .A(\main/n36 ), .B(\main/n37 ), .C(n128), .Y(\main/n33 ) );
  AOI21X1 \main/U41  ( .A(in_data_in), .B(out_display_done), .C(\main/n35 ), 
        .Y(\main/n34 ) );
  AOI21X1 \main/U40  ( .A(\main/n33 ), .B(n120), .C(n17), .Y(\main/N88 ) );
  NOR2X1 \main/U39  ( .A(\main/next_state [2]), .B(\main/next_state [1]), .Y(
        \main/n28 ) );
  NAND3X1 \main/U38  ( .A(n125), .B(n133), .C(\main/n19 ), .Y(\main/n32 ) );
  AOI21X1 \main/U37  ( .A(n135), .B(\main/n28 ), .C(n124), .Y(\main/n29 ) );
  OAI21X1 \main/U36  ( .A(\main/n28 ), .B(n135), .C(\main/n29 ), .Y(\main/n30 ) );
  NAND3X1 \main/U35  ( .A(\main/next_state [0]), .B(n135), .C(\main/n28 ), .Y(
        \main/n31 ) );
  OAI21X1 \main/U34  ( .A(n123), .B(\main/n30 ), .C(\main/n31 ), .Y(\main/n61 ) );
  NAND3X1 \main/U33  ( .A(n132), .B(n135), .C(\main/next_state [2]), .Y(
        \main/n25 ) );
  OR2X1 \main/U32  ( .A(\main/n25 ), .B(n125), .Y(\main/n23 ) );
  NOR2X1 \main/U31  ( .A(\main/n19 ), .B(\main/n28 ), .Y(\main/n27 ) );
  NAND3X1 \main/U30  ( .A(out_decode), .B(\main/n24 ), .C(\main/n27 ), .Y(
        \main/n26 ) );
  OAI21X1 \main/U29  ( .A(\main/next_state [0]), .B(\main/n25 ), .C(\main/n26 ), .Y(\main/n60 ) );
  NAND2X1 \main/U28  ( .A(n133), .B(n135), .Y(\main/n21 ) );
  NAND2X1 \main/U27  ( .A(out_alu), .B(\main/n24 ), .Y(\main/n22 ) );
  OAI21X1 \main/U26  ( .A(\main/n21 ), .B(\main/n22 ), .C(\main/n23 ), .Y(
        \main/n59 ) );
  XNOR2X1 \main/U25  ( .A(n132), .B(\main/next_state [2]), .Y(\main/n20 ) );
  OAI21X1 \main/U24  ( .A(\main/next_state [1]), .B(\main/n20 ), .C(
        out_display), .Y(\main/n17 ) );
  NAND3X1 \main/U23  ( .A(n131), .B(\main/n19 ), .C(\main/next_state [0]), .Y(
        \main/n18 ) );
  OAI21X1 \main/U22  ( .A(n135), .B(\main/n17 ), .C(\main/n18 ), .Y(\main/n58 ) );
  AND2X2 \main/U5  ( .A(\main/n38 ), .B(\main/n46 ), .Y(\main/n49 ) );
  AND2X2 \main/U4  ( .A(out_state_main[2]), .B(out_state_main[0]), .Y(
        \main/n36 ) );
  AND2X2 \main/U3  ( .A(\main/n29 ), .B(\main/n23 ), .Y(\main/n24 ) );
  DFFNEGX1 \main/display_reg  ( .D(\main/n58 ), .CLK(n15), .Q(out_display) );
  DFFNEGX1 \main/alu_reg  ( .D(\main/n59 ), .CLK(n15), .Q(out_alu) );
  DFFNEGX1 \main/decode_reg  ( .D(\main/n60 ), .CLK(n15), .Q(out_decode) );
  DFFNEGX1 \main/start_reg  ( .D(\main/n61 ), .CLK(n15), .Q(out_start) );
  DFFNEGX1 \main/load_reg  ( .D(\main/N138 ), .CLK(n15), .Q(out_load) );
  DFFNEGX1 \main/next_state_reg[0]  ( .D(\main/N85 ), .CLK(n42), .Q(
        \main/next_state [0]) );
  DFFNEGX1 \main/state_reg[1]  ( .D(\main/next_state [1]), .CLK(n15), .Q(
        out_state_main[1]) );
  DFFNEGX1 \main/next_state_reg[1]  ( .D(\main/N86 ), .CLK(n42), .Q(
        \main/next_state [1]) );
  DFFNEGX1 \main/state_reg[2]  ( .D(\main/next_state [2]), .CLK(n15), .Q(
        out_state_main[2]) );
  DFFNEGX1 \main/next_state_reg[2]  ( .D(\main/N87 ), .CLK(n42), .Q(
        \main/next_state [2]) );
  DFFNEGX1 \main/state_reg[3]  ( .D(\main/next_state [3]), .CLK(n15), .Q(
        out_state_main[3]) );
  DFFNEGX1 \main/next_state_reg[3]  ( .D(\main/N88 ), .CLK(n42), .Q(
        \main/next_state [3]) );
  DFFNEGX1 \main/state_reg[0]  ( .D(\main/next_state [0]), .CLK(n15), .Q(
        out_state_main[0]) );
  NAND2X1 \dp_ALU/U581  ( .A(\dp_ALU/N1204 ), .B(out_temp_data_in[1]), .Y(
        \dp_ALU/n545 ) );
  NAND2X1 \dp_ALU/U580  ( .A(n22), .B(out_temp_data_in[1]), .Y(\dp_ALU/n546 )
         );
  OAI22X1 \dp_ALU/U579  ( .A(out_mines[21]), .B(\dp_ALU/n545 ), .C(
        out_mines[20]), .D(\dp_ALU/n546 ), .Y(\dp_ALU/n560 ) );
  NAND2X1 \dp_ALU/U578  ( .A(n219), .B(\dp_ALU/N1204 ), .Y(\dp_ALU/n543 ) );
  NAND2X1 \dp_ALU/U577  ( .A(n219), .B(n22), .Y(\dp_ALU/n544 ) );
  OAI22X1 \dp_ALU/U576  ( .A(out_mines[23]), .B(\dp_ALU/n543 ), .C(
        out_mines[22]), .D(\dp_ALU/n544 ), .Y(\dp_ALU/n561 ) );
  OAI21X1 \dp_ALU/U575  ( .A(\dp_ALU/n560 ), .B(\dp_ALU/n561 ), .C(
        \dp_ALU/N1138 ), .Y(\dp_ALU/n556 ) );
  OAI22X1 \dp_ALU/U574  ( .A(out_mines[17]), .B(\dp_ALU/n545 ), .C(
        out_mines[16]), .D(\dp_ALU/n546 ), .Y(\dp_ALU/n558 ) );
  OAI22X1 \dp_ALU/U573  ( .A(out_mines[19]), .B(\dp_ALU/n543 ), .C(
        out_mines[18]), .D(\dp_ALU/n544 ), .Y(\dp_ALU/n559 ) );
  OAI21X1 \dp_ALU/U572  ( .A(\dp_ALU/n558 ), .B(\dp_ALU/n559 ), .C(n218), .Y(
        \dp_ALU/n557 ) );
  NAND2X1 \dp_ALU/U571  ( .A(\dp_ALU/n556 ), .B(\dp_ALU/n557 ), .Y(
        \dp_ALU/n555 ) );
  AOI22X1 \dp_ALU/U570  ( .A(\dp_ALU/n555 ), .B(n217), .C(\dp_ALU/N1139 ), .D(
        n233), .Y(\dp_ALU/n535 ) );
  OAI22X1 \dp_ALU/U569  ( .A(out_mines[13]), .B(\dp_ALU/n545 ), .C(
        out_mines[12]), .D(\dp_ALU/n546 ), .Y(\dp_ALU/n553 ) );
  OAI22X1 \dp_ALU/U568  ( .A(out_mines[15]), .B(\dp_ALU/n543 ), .C(
        out_mines[14]), .D(\dp_ALU/n544 ), .Y(\dp_ALU/n554 ) );
  OAI21X1 \dp_ALU/U567  ( .A(\dp_ALU/n553 ), .B(\dp_ALU/n554 ), .C(
        \dp_ALU/N1138 ), .Y(\dp_ALU/n549 ) );
  OAI22X1 \dp_ALU/U566  ( .A(out_mines[9]), .B(\dp_ALU/n545 ), .C(out_mines[8]), .D(\dp_ALU/n546 ), .Y(\dp_ALU/n551 ) );
  OAI22X1 \dp_ALU/U565  ( .A(out_mines[11]), .B(\dp_ALU/n543 ), .C(
        out_mines[10]), .D(\dp_ALU/n544 ), .Y(\dp_ALU/n552 ) );
  OAI21X1 \dp_ALU/U564  ( .A(\dp_ALU/n551 ), .B(\dp_ALU/n552 ), .C(n218), .Y(
        \dp_ALU/n550 ) );
  AOI21X1 \dp_ALU/U563  ( .A(\dp_ALU/n549 ), .B(\dp_ALU/n550 ), .C(n217), .Y(
        \dp_ALU/n537 ) );
  OAI22X1 \dp_ALU/U562  ( .A(out_mines[5]), .B(\dp_ALU/n545 ), .C(out_mines[4]), .D(\dp_ALU/n546 ), .Y(\dp_ALU/n547 ) );
  OAI22X1 \dp_ALU/U561  ( .A(out_mines[7]), .B(\dp_ALU/n543 ), .C(out_mines[6]), .D(\dp_ALU/n544 ), .Y(\dp_ALU/n548 ) );
  OAI21X1 \dp_ALU/U560  ( .A(\dp_ALU/n547 ), .B(\dp_ALU/n548 ), .C(
        \dp_ALU/N1138 ), .Y(\dp_ALU/n539 ) );
  OAI22X1 \dp_ALU/U559  ( .A(out_mines[1]), .B(\dp_ALU/n545 ), .C(out_mines[0]), .D(\dp_ALU/n546 ), .Y(\dp_ALU/n541 ) );
  OAI22X1 \dp_ALU/U558  ( .A(out_mines[3]), .B(\dp_ALU/n543 ), .C(out_mines[2]), .D(\dp_ALU/n544 ), .Y(\dp_ALU/n542 ) );
  OAI21X1 \dp_ALU/U557  ( .A(\dp_ALU/n541 ), .B(\dp_ALU/n542 ), .C(n218), .Y(
        \dp_ALU/n540 ) );
  AOI21X1 \dp_ALU/U556  ( .A(\dp_ALU/n539 ), .B(\dp_ALU/n540 ), .C(
        \dp_ALU/N1139 ), .Y(\dp_ALU/n538 ) );
  OAI21X1 \dp_ALU/U555  ( .A(\dp_ALU/n537 ), .B(\dp_ALU/n538 ), .C(n12), .Y(
        \dp_ALU/n536 ) );
  OAI21X1 \dp_ALU/U554  ( .A(\dp_ALU/n535 ), .B(n12), .C(\dp_ALU/n536 ), .Y(
        \dp_ALU/n390 ) );
  NAND2X1 \dp_ALU/U553  ( .A(n22), .B(n216), .Y(\dp_ALU/n518 ) );
  NAND2X1 \dp_ALU/U552  ( .A(\dp_ALU/N1204 ), .B(n216), .Y(\dp_ALU/n519 ) );
  OAI22X1 \dp_ALU/U551  ( .A(out_mines[21]), .B(\dp_ALU/n518 ), .C(
        out_mines[20]), .D(\dp_ALU/n519 ), .Y(\dp_ALU/n533 ) );
  NAND2X1 \dp_ALU/U550  ( .A(\dp_ALU/N1169 ), .B(n22), .Y(\dp_ALU/n516 ) );
  NAND2X1 \dp_ALU/U549  ( .A(\dp_ALU/N1169 ), .B(\dp_ALU/N1204 ), .Y(
        \dp_ALU/n517 ) );
  OAI22X1 \dp_ALU/U548  ( .A(out_mines[23]), .B(\dp_ALU/n516 ), .C(
        out_mines[22]), .D(\dp_ALU/n517 ), .Y(\dp_ALU/n534 ) );
  OAI21X1 \dp_ALU/U547  ( .A(\dp_ALU/n533 ), .B(\dp_ALU/n534 ), .C(
        \dp_ALU/N1170 ), .Y(\dp_ALU/n529 ) );
  OAI22X1 \dp_ALU/U546  ( .A(out_mines[17]), .B(\dp_ALU/n518 ), .C(
        out_mines[16]), .D(\dp_ALU/n519 ), .Y(\dp_ALU/n531 ) );
  OAI22X1 \dp_ALU/U545  ( .A(out_mines[19]), .B(\dp_ALU/n516 ), .C(
        out_mines[18]), .D(\dp_ALU/n517 ), .Y(\dp_ALU/n532 ) );
  OAI21X1 \dp_ALU/U544  ( .A(\dp_ALU/n531 ), .B(\dp_ALU/n532 ), .C(n215), .Y(
        \dp_ALU/n530 ) );
  NAND2X1 \dp_ALU/U543  ( .A(\dp_ALU/n529 ), .B(\dp_ALU/n530 ), .Y(
        \dp_ALU/n528 ) );
  AOI22X1 \dp_ALU/U542  ( .A(\dp_ALU/n528 ), .B(n214), .C(\dp_ALU/N1171 ), .D(
        n233), .Y(\dp_ALU/n508 ) );
  OAI22X1 \dp_ALU/U541  ( .A(out_mines[13]), .B(\dp_ALU/n518 ), .C(
        out_mines[12]), .D(\dp_ALU/n519 ), .Y(\dp_ALU/n526 ) );
  OAI22X1 \dp_ALU/U540  ( .A(out_mines[15]), .B(\dp_ALU/n516 ), .C(
        out_mines[14]), .D(\dp_ALU/n517 ), .Y(\dp_ALU/n527 ) );
  OAI21X1 \dp_ALU/U539  ( .A(\dp_ALU/n526 ), .B(\dp_ALU/n527 ), .C(
        \dp_ALU/N1170 ), .Y(\dp_ALU/n522 ) );
  OAI22X1 \dp_ALU/U538  ( .A(out_mines[9]), .B(\dp_ALU/n518 ), .C(out_mines[8]), .D(\dp_ALU/n519 ), .Y(\dp_ALU/n524 ) );
  OAI22X1 \dp_ALU/U537  ( .A(out_mines[11]), .B(\dp_ALU/n516 ), .C(
        out_mines[10]), .D(\dp_ALU/n517 ), .Y(\dp_ALU/n525 ) );
  OAI21X1 \dp_ALU/U536  ( .A(\dp_ALU/n524 ), .B(\dp_ALU/n525 ), .C(n215), .Y(
        \dp_ALU/n523 ) );
  AOI21X1 \dp_ALU/U535  ( .A(\dp_ALU/n522 ), .B(\dp_ALU/n523 ), .C(n214), .Y(
        \dp_ALU/n510 ) );
  OAI22X1 \dp_ALU/U534  ( .A(out_mines[5]), .B(\dp_ALU/n518 ), .C(out_mines[4]), .D(\dp_ALU/n519 ), .Y(\dp_ALU/n520 ) );
  OAI22X1 \dp_ALU/U533  ( .A(out_mines[7]), .B(\dp_ALU/n516 ), .C(out_mines[6]), .D(\dp_ALU/n517 ), .Y(\dp_ALU/n521 ) );
  OAI21X1 \dp_ALU/U532  ( .A(\dp_ALU/n520 ), .B(\dp_ALU/n521 ), .C(
        \dp_ALU/N1170 ), .Y(\dp_ALU/n512 ) );
  OAI22X1 \dp_ALU/U531  ( .A(out_mines[1]), .B(\dp_ALU/n518 ), .C(out_mines[0]), .D(\dp_ALU/n519 ), .Y(\dp_ALU/n514 ) );
  OAI22X1 \dp_ALU/U530  ( .A(out_mines[3]), .B(\dp_ALU/n516 ), .C(out_mines[2]), .D(\dp_ALU/n517 ), .Y(\dp_ALU/n515 ) );
  OAI21X1 \dp_ALU/U529  ( .A(\dp_ALU/n514 ), .B(\dp_ALU/n515 ), .C(n215), .Y(
        \dp_ALU/n513 ) );
  AOI21X1 \dp_ALU/U528  ( .A(\dp_ALU/n512 ), .B(\dp_ALU/n513 ), .C(
        \dp_ALU/N1171 ), .Y(\dp_ALU/n511 ) );
  OAI21X1 \dp_ALU/U527  ( .A(\dp_ALU/n510 ), .B(\dp_ALU/n511 ), .C(n13), .Y(
        \dp_ALU/n509 ) );
  OAI21X1 \dp_ALU/U526  ( .A(\dp_ALU/n508 ), .B(n13), .C(\dp_ALU/n509 ), .Y(
        \dp_ALU/n392 ) );
  NAND2X1 \dp_ALU/U525  ( .A(\dp_ALU/N1204 ), .B(n219), .Y(\dp_ALU/n491 ) );
  NAND2X1 \dp_ALU/U524  ( .A(n22), .B(n219), .Y(\dp_ALU/n492 ) );
  OAI22X1 \dp_ALU/U523  ( .A(out_mines[21]), .B(\dp_ALU/n491 ), .C(
        out_mines[20]), .D(\dp_ALU/n492 ), .Y(\dp_ALU/n506 ) );
  NAND2X1 \dp_ALU/U522  ( .A(out_temp_data_in[1]), .B(\dp_ALU/N1204 ), .Y(
        \dp_ALU/n489 ) );
  NAND2X1 \dp_ALU/U521  ( .A(out_temp_data_in[1]), .B(n22), .Y(\dp_ALU/n490 )
         );
  OAI22X1 \dp_ALU/U520  ( .A(out_mines[23]), .B(\dp_ALU/n489 ), .C(
        out_mines[22]), .D(\dp_ALU/n490 ), .Y(\dp_ALU/n507 ) );
  OAI21X1 \dp_ALU/U519  ( .A(\dp_ALU/n506 ), .B(\dp_ALU/n507 ), .C(n221), .Y(
        \dp_ALU/n502 ) );
  OAI22X1 \dp_ALU/U518  ( .A(out_mines[17]), .B(\dp_ALU/n491 ), .C(
        out_mines[16]), .D(\dp_ALU/n492 ), .Y(\dp_ALU/n504 ) );
  OAI22X1 \dp_ALU/U517  ( .A(out_mines[19]), .B(\dp_ALU/n489 ), .C(
        out_mines[18]), .D(\dp_ALU/n490 ), .Y(\dp_ALU/n505 ) );
  OAI21X1 \dp_ALU/U516  ( .A(\dp_ALU/n504 ), .B(\dp_ALU/n505 ), .C(
        out_temp_data_in[2]), .Y(\dp_ALU/n503 ) );
  NAND2X1 \dp_ALU/U515  ( .A(\dp_ALU/n502 ), .B(\dp_ALU/n503 ), .Y(
        \dp_ALU/n501 ) );
  AOI22X1 \dp_ALU/U514  ( .A(\dp_ALU/n501 ), .B(n220), .C(\dp_ALU/N1207 ), .D(
        n233), .Y(\dp_ALU/n481 ) );
  OAI22X1 \dp_ALU/U513  ( .A(out_mines[13]), .B(\dp_ALU/n491 ), .C(
        out_mines[12]), .D(\dp_ALU/n492 ), .Y(\dp_ALU/n499 ) );
  OAI22X1 \dp_ALU/U512  ( .A(out_mines[15]), .B(\dp_ALU/n489 ), .C(
        out_mines[14]), .D(\dp_ALU/n490 ), .Y(\dp_ALU/n500 ) );
  OAI21X1 \dp_ALU/U511  ( .A(\dp_ALU/n499 ), .B(\dp_ALU/n500 ), .C(n221), .Y(
        \dp_ALU/n495 ) );
  OAI22X1 \dp_ALU/U510  ( .A(out_mines[9]), .B(\dp_ALU/n491 ), .C(out_mines[8]), .D(\dp_ALU/n492 ), .Y(\dp_ALU/n497 ) );
  OAI22X1 \dp_ALU/U509  ( .A(out_mines[11]), .B(\dp_ALU/n489 ), .C(
        out_mines[10]), .D(\dp_ALU/n490 ), .Y(\dp_ALU/n498 ) );
  OAI21X1 \dp_ALU/U508  ( .A(\dp_ALU/n497 ), .B(\dp_ALU/n498 ), .C(
        out_temp_data_in[2]), .Y(\dp_ALU/n496 ) );
  AOI21X1 \dp_ALU/U507  ( .A(\dp_ALU/n495 ), .B(\dp_ALU/n496 ), .C(n220), .Y(
        \dp_ALU/n483 ) );
  OAI22X1 \dp_ALU/U506  ( .A(out_mines[5]), .B(\dp_ALU/n491 ), .C(out_mines[4]), .D(\dp_ALU/n492 ), .Y(\dp_ALU/n493 ) );
  OAI22X1 \dp_ALU/U505  ( .A(out_mines[7]), .B(\dp_ALU/n489 ), .C(out_mines[6]), .D(\dp_ALU/n490 ), .Y(\dp_ALU/n494 ) );
  OAI21X1 \dp_ALU/U504  ( .A(\dp_ALU/n493 ), .B(\dp_ALU/n494 ), .C(n221), .Y(
        \dp_ALU/n485 ) );
  OAI22X1 \dp_ALU/U503  ( .A(out_mines[1]), .B(\dp_ALU/n491 ), .C(out_mines[0]), .D(\dp_ALU/n492 ), .Y(\dp_ALU/n487 ) );
  OAI22X1 \dp_ALU/U502  ( .A(out_mines[3]), .B(\dp_ALU/n489 ), .C(out_mines[2]), .D(\dp_ALU/n490 ), .Y(\dp_ALU/n488 ) );
  OAI21X1 \dp_ALU/U501  ( .A(\dp_ALU/n487 ), .B(\dp_ALU/n488 ), .C(
        out_temp_data_in[2]), .Y(\dp_ALU/n486 ) );
  AOI21X1 \dp_ALU/U500  ( .A(\dp_ALU/n485 ), .B(\dp_ALU/n486 ), .C(
        \dp_ALU/N1207 ), .Y(\dp_ALU/n484 ) );
  OAI21X1 \dp_ALU/U499  ( .A(\dp_ALU/n483 ), .B(\dp_ALU/n484 ), .C(n11), .Y(
        \dp_ALU/n482 ) );
  OAI21X1 \dp_ALU/U498  ( .A(\dp_ALU/n481 ), .B(n11), .C(\dp_ALU/n482 ), .Y(
        \dp_ALU/n394 ) );
  NAND2X1 \dp_ALU/U497  ( .A(n22), .B(n272), .Y(\dp_ALU/n464 ) );
  NAND2X1 \dp_ALU/U496  ( .A(\dp_ALU/N1204 ), .B(n272), .Y(\dp_ALU/n465 ) );
  OAI22X1 \dp_ALU/U495  ( .A(out_mines[21]), .B(\dp_ALU/n464 ), .C(
        out_mines[20]), .D(\dp_ALU/n465 ), .Y(\dp_ALU/n479 ) );
  NAND2X1 \dp_ALU/U494  ( .A(n200), .B(n22), .Y(\dp_ALU/n462 ) );
  NAND2X1 \dp_ALU/U493  ( .A(n200), .B(\dp_ALU/N1204 ), .Y(\dp_ALU/n463 ) );
  OAI22X1 \dp_ALU/U492  ( .A(out_mines[23]), .B(\dp_ALU/n462 ), .C(
        out_mines[22]), .D(\dp_ALU/n463 ), .Y(\dp_ALU/n480 ) );
  OAI21X1 \dp_ALU/U491  ( .A(\dp_ALU/n479 ), .B(\dp_ALU/n480 ), .C(
        \dp_ALU/N1242 ), .Y(\dp_ALU/n475 ) );
  OAI22X1 \dp_ALU/U490  ( .A(out_mines[17]), .B(\dp_ALU/n464 ), .C(
        out_mines[16]), .D(\dp_ALU/n465 ), .Y(\dp_ALU/n477 ) );
  OAI22X1 \dp_ALU/U489  ( .A(out_mines[19]), .B(\dp_ALU/n462 ), .C(
        out_mines[18]), .D(\dp_ALU/n463 ), .Y(\dp_ALU/n478 ) );
  OAI21X1 \dp_ALU/U488  ( .A(\dp_ALU/n477 ), .B(\dp_ALU/n478 ), .C(n201), .Y(
        \dp_ALU/n476 ) );
  NAND2X1 \dp_ALU/U487  ( .A(\dp_ALU/n475 ), .B(\dp_ALU/n476 ), .Y(
        \dp_ALU/n474 ) );
  AOI22X1 \dp_ALU/U486  ( .A(\dp_ALU/n474 ), .B(n202), .C(\dp_ALU/N1243 ), .D(
        n233), .Y(\dp_ALU/n454 ) );
  OAI22X1 \dp_ALU/U485  ( .A(out_mines[13]), .B(\dp_ALU/n464 ), .C(
        out_mines[12]), .D(\dp_ALU/n465 ), .Y(\dp_ALU/n472 ) );
  OAI22X1 \dp_ALU/U484  ( .A(out_mines[15]), .B(\dp_ALU/n462 ), .C(
        out_mines[14]), .D(\dp_ALU/n463 ), .Y(\dp_ALU/n473 ) );
  OAI21X1 \dp_ALU/U483  ( .A(\dp_ALU/n472 ), .B(\dp_ALU/n473 ), .C(
        \dp_ALU/N1242 ), .Y(\dp_ALU/n468 ) );
  OAI22X1 \dp_ALU/U482  ( .A(out_mines[9]), .B(\dp_ALU/n464 ), .C(out_mines[8]), .D(\dp_ALU/n465 ), .Y(\dp_ALU/n470 ) );
  OAI22X1 \dp_ALU/U481  ( .A(out_mines[11]), .B(\dp_ALU/n462 ), .C(
        out_mines[10]), .D(\dp_ALU/n463 ), .Y(\dp_ALU/n471 ) );
  OAI21X1 \dp_ALU/U480  ( .A(\dp_ALU/n470 ), .B(\dp_ALU/n471 ), .C(n201), .Y(
        \dp_ALU/n469 ) );
  AOI21X1 \dp_ALU/U479  ( .A(\dp_ALU/n468 ), .B(\dp_ALU/n469 ), .C(n202), .Y(
        \dp_ALU/n456 ) );
  OAI22X1 \dp_ALU/U478  ( .A(out_mines[5]), .B(\dp_ALU/n464 ), .C(out_mines[4]), .D(\dp_ALU/n465 ), .Y(\dp_ALU/n466 ) );
  OAI22X1 \dp_ALU/U477  ( .A(out_mines[7]), .B(\dp_ALU/n462 ), .C(out_mines[6]), .D(\dp_ALU/n463 ), .Y(\dp_ALU/n467 ) );
  OAI21X1 \dp_ALU/U476  ( .A(\dp_ALU/n466 ), .B(\dp_ALU/n467 ), .C(
        \dp_ALU/N1242 ), .Y(\dp_ALU/n458 ) );
  OAI22X1 \dp_ALU/U475  ( .A(out_mines[1]), .B(\dp_ALU/n464 ), .C(out_mines[0]), .D(\dp_ALU/n465 ), .Y(\dp_ALU/n460 ) );
  OAI22X1 \dp_ALU/U474  ( .A(out_mines[3]), .B(\dp_ALU/n462 ), .C(out_mines[2]), .D(\dp_ALU/n463 ), .Y(\dp_ALU/n461 ) );
  OAI21X1 \dp_ALU/U473  ( .A(\dp_ALU/n460 ), .B(\dp_ALU/n461 ), .C(n201), .Y(
        \dp_ALU/n459 ) );
  AOI21X1 \dp_ALU/U472  ( .A(\dp_ALU/n458 ), .B(\dp_ALU/n459 ), .C(
        \dp_ALU/N1243 ), .Y(\dp_ALU/n457 ) );
  OAI21X1 \dp_ALU/U471  ( .A(\dp_ALU/n456 ), .B(\dp_ALU/n457 ), .C(n10), .Y(
        \dp_ALU/n455 ) );
  OAI21X1 \dp_ALU/U470  ( .A(\dp_ALU/n454 ), .B(n10), .C(\dp_ALU/n455 ), .Y(
        \dp_ALU/n391 ) );
  NOR2X1 \dp_ALU/U469  ( .A(n219), .B(\dp_ALU/N1204 ), .Y(\dp_ALU/n441 ) );
  NAND2X1 \dp_ALU/U468  ( .A(out_temp_data_in[4]), .B(n18), .Y(\dp_ALU/n424 )
         );
  NAND2X1 \dp_ALU/U467  ( .A(n18), .B(n225), .Y(\dp_ALU/n411 ) );
  NAND2X1 \dp_ALU/U466  ( .A(out_temp_data_in[3]), .B(n225), .Y(\dp_ALU/n410 )
         );
  AOI22X1 \dp_ALU/U465  ( .A(n223), .B(out_mines[7]), .C(n224), .D(
        out_mines[15]), .Y(\dp_ALU/n453 ) );
  OAI21X1 \dp_ALU/U464  ( .A(n238), .B(\dp_ALU/n424 ), .C(\dp_ALU/n453 ), .Y(
        \dp_ALU/n433 ) );
  NOR2X1 \dp_ALU/U463  ( .A(n219), .B(n22), .Y(\dp_ALU/n440 ) );
  AOI22X1 \dp_ALU/U462  ( .A(n223), .B(out_mines[8]), .C(n224), .D(
        out_mines[16]), .Y(\dp_ALU/n452 ) );
  OAI21X1 \dp_ALU/U461  ( .A(n233), .B(\dp_ALU/n424 ), .C(\dp_ALU/n452 ), .Y(
        \dp_ALU/n419 ) );
  AOI22X1 \dp_ALU/U460  ( .A(\dp_ALU/n441 ), .B(\dp_ALU/n433 ), .C(
        \dp_ALU/n440 ), .D(\dp_ALU/n419 ), .Y(\dp_ALU/n448 ) );
  NOR2X1 \dp_ALU/U459  ( .A(\dp_ALU/N1204 ), .B(out_temp_data_in[1]), .Y(
        \dp_ALU/n443 ) );
  AOI22X1 \dp_ALU/U458  ( .A(n223), .B(out_mines[5]), .C(n224), .D(
        out_mines[13]), .Y(\dp_ALU/n451 ) );
  OAI21X1 \dp_ALU/U457  ( .A(n237), .B(\dp_ALU/n424 ), .C(\dp_ALU/n451 ), .Y(
        \dp_ALU/n425 ) );
  NOR2X1 \dp_ALU/U456  ( .A(n22), .B(out_temp_data_in[1]), .Y(\dp_ALU/n442 )
         );
  AOI22X1 \dp_ALU/U455  ( .A(n223), .B(out_mines[6]), .C(n224), .D(
        out_mines[14]), .Y(\dp_ALU/n450 ) );
  OAI21X1 \dp_ALU/U454  ( .A(n236), .B(\dp_ALU/n424 ), .C(\dp_ALU/n450 ), .Y(
        \dp_ALU/n432 ) );
  AOI22X1 \dp_ALU/U453  ( .A(\dp_ALU/n443 ), .B(\dp_ALU/n425 ), .C(
        \dp_ALU/n442 ), .D(\dp_ALU/n432 ), .Y(\dp_ALU/n449 ) );
  AOI22X1 \dp_ALU/U452  ( .A(\dp_ALU/n441 ), .B(out_mines[19]), .C(
        \dp_ALU/n440 ), .D(out_mines[20]), .Y(\dp_ALU/n446 ) );
  AOI22X1 \dp_ALU/U451  ( .A(\dp_ALU/n443 ), .B(out_mines[17]), .C(
        \dp_ALU/n442 ), .D(out_mines[18]), .Y(\dp_ALU/n447 ) );
  NAND2X1 \dp_ALU/U450  ( .A(\dp_ALU/n446 ), .B(\dp_ALU/n447 ), .Y(
        \dp_ALU/n415 ) );
  NOR2X1 \dp_ALU/U449  ( .A(n206), .B(\dp_ALU/n424 ), .Y(\dp_ALU/n435 ) );
  AOI22X1 \dp_ALU/U448  ( .A(\dp_ALU/n441 ), .B(out_mines[11]), .C(
        \dp_ALU/n440 ), .D(out_mines[12]), .Y(\dp_ALU/n444 ) );
  AOI22X1 \dp_ALU/U447  ( .A(\dp_ALU/n443 ), .B(out_mines[9]), .C(
        \dp_ALU/n442 ), .D(out_mines[10]), .Y(\dp_ALU/n445 ) );
  NAND2X1 \dp_ALU/U446  ( .A(\dp_ALU/n444 ), .B(\dp_ALU/n445 ), .Y(
        \dp_ALU/n414 ) );
  AOI22X1 \dp_ALU/U445  ( .A(out_mines[2]), .B(\dp_ALU/n442 ), .C(out_mines[1]), .D(\dp_ALU/n443 ), .Y(\dp_ALU/n438 ) );
  AOI22X1 \dp_ALU/U444  ( .A(out_mines[4]), .B(\dp_ALU/n440 ), .C(out_mines[3]), .D(\dp_ALU/n441 ), .Y(\dp_ALU/n439 ) );
  AOI21X1 \dp_ALU/U443  ( .A(\dp_ALU/n438 ), .B(\dp_ALU/n439 ), .C(
        \dp_ALU/n411 ), .Y(\dp_ALU/n437 ) );
  AOI21X1 \dp_ALU/U442  ( .A(\dp_ALU/n414 ), .B(n224), .C(\dp_ALU/n437 ), .Y(
        \dp_ALU/n436 ) );
  OAI21X1 \dp_ALU/U441  ( .A(\dp_ALU/n435 ), .B(n207), .C(n221), .Y(
        \dp_ALU/n434 ) );
  OAI21X1 \dp_ALU/U440  ( .A(\dp_ALU/n412 ), .B(n221), .C(\dp_ALU/n434 ), .Y(
        \dp_ALU/N1324 ) );
  AOI22X1 \dp_ALU/U439  ( .A(\dp_ALU/n432 ), .B(n22), .C(\dp_ALU/N1204 ), .D(
        \dp_ALU/n433 ), .Y(\dp_ALU/n427 ) );
  NAND2X1 \dp_ALU/U438  ( .A(\dp_ALU/N1204 ), .B(n224), .Y(\dp_ALU/n406 ) );
  NOR2X1 \dp_ALU/U437  ( .A(n230), .B(\dp_ALU/n406 ), .Y(\dp_ALU/n429 ) );
  NAND2X1 \dp_ALU/U436  ( .A(\dp_ALU/N1204 ), .B(n223), .Y(\dp_ALU/n409 ) );
  AOI22X1 \dp_ALU/U435  ( .A(n223), .B(out_mines[10]), .C(n224), .D(
        out_mines[18]), .Y(\dp_ALU/n431 ) );
  OAI22X1 \dp_ALU/U434  ( .A(n228), .B(\dp_ALU/n409 ), .C(\dp_ALU/N1204 ), .D(
        \dp_ALU/n431 ), .Y(\dp_ALU/n430 ) );
  OAI21X1 \dp_ALU/U433  ( .A(\dp_ALU/n429 ), .B(\dp_ALU/n430 ), .C(
        out_temp_data_in[2]), .Y(\dp_ALU/n428 ) );
  OAI21X1 \dp_ALU/U432  ( .A(out_temp_data_in[2]), .B(\dp_ALU/n427 ), .C(
        \dp_ALU/n428 ), .Y(\dp_ALU/n426 ) );
  NOR2X1 \dp_ALU/U431  ( .A(n235), .B(\dp_ALU/n424 ), .Y(\dp_ALU/n422 ) );
  OAI22X1 \dp_ALU/U430  ( .A(n241), .B(\dp_ALU/n410 ), .C(n247), .D(
        \dp_ALU/n411 ), .Y(\dp_ALU/n423 ) );
  OAI21X1 \dp_ALU/U429  ( .A(\dp_ALU/n422 ), .B(\dp_ALU/n423 ), .C(n22), .Y(
        \dp_ALU/n421 ) );
  OAI21X1 \dp_ALU/U428  ( .A(n222), .B(n22), .C(\dp_ALU/n421 ), .Y(
        \dp_ALU/n417 ) );
  OAI22X1 \dp_ALU/U427  ( .A(\dp_ALU/n409 ), .B(n239), .C(\dp_ALU/n406 ), .D(
        n234), .Y(\dp_ALU/n420 ) );
  AOI21X1 \dp_ALU/U426  ( .A(n22), .B(\dp_ALU/n419 ), .C(\dp_ALU/n420 ), .Y(
        \dp_ALU/n418 ) );
  AOI22X1 \dp_ALU/U425  ( .A(\dp_ALU/n417 ), .B(n221), .C(out_temp_data_in[2]), 
        .D(n211), .Y(\dp_ALU/n416 ) );
  OAI22X1 \dp_ALU/U424  ( .A(n210), .B(n219), .C(out_temp_data_in[1]), .D(
        \dp_ALU/n416 ), .Y(\dp_ALU/N1371 ) );
  AOI22X1 \dp_ALU/U423  ( .A(n223), .B(\dp_ALU/n414 ), .C(n224), .D(
        \dp_ALU/n415 ), .Y(\dp_ALU/n413 ) );
  OAI22X1 \dp_ALU/U422  ( .A(out_temp_data_in[2]), .B(\dp_ALU/n412 ), .C(
        \dp_ALU/n413 ), .D(n221), .Y(\dp_ALU/N1416 ) );
  OAI22X1 \dp_ALU/U421  ( .A(n235), .B(\dp_ALU/n410 ), .C(n241), .D(
        \dp_ALU/n411 ), .Y(\dp_ALU/n408 ) );
  AOI22X1 \dp_ALU/U420  ( .A(\dp_ALU/n408 ), .B(n22), .C(n212), .D(
        out_mines[13]), .Y(\dp_ALU/n407 ) );
  OAI21X1 \dp_ALU/U419  ( .A(n237), .B(\dp_ALU/n406 ), .C(\dp_ALU/n407 ), .Y(
        \dp_ALU/n405 ) );
  AOI22X1 \dp_ALU/U418  ( .A(out_temp_data_in[2]), .B(\dp_ALU/n405 ), .C(n211), 
        .D(n221), .Y(\dp_ALU/n404 ) );
  OAI22X1 \dp_ALU/U417  ( .A(out_temp_data_in[1]), .B(n210), .C(\dp_ALU/n404 ), 
        .D(n219), .Y(\dp_ALU/N1459 ) );
  XOR2X1 \dp_ALU/U416  ( .A(n213), .B(\dp_ALU/n394 ), .Y(\dp_ALU/n401 ) );
  XOR2X1 \dp_ALU/U415  ( .A(\dp_ALU/n390 ), .B(\dp_ALU/n401 ), .Y(
        \dp_ALU/dp_cluster_2/N1202 ) );
  XOR2X1 \dp_ALU/U414  ( .A(\dp_ALU/dp_cluster_2/N1202 ), .B(\dp_ALU/N1459 ), 
        .Y(\dp_ALU/n400 ) );
  XNOR2X1 \dp_ALU/U413  ( .A(\dp_ALU/n400 ), .B(n205), .Y(
        \dp_ALU/dp_cluster_2/N1274 ) );
  XOR2X1 \dp_ALU/U412  ( .A(\dp_ALU/N1371 ), .B(n203), .Y(\dp_ALU/n403 ) );
  XOR2X1 \dp_ALU/U411  ( .A(\dp_ALU/n403 ), .B(\dp_ALU/n391 ), .Y(
        \dp_ALU/dp_cluster_2/N1238 ) );
  XOR2X1 \dp_ALU/U410  ( .A(\dp_ALU/dp_cluster_2/N1274 ), .B(
        \dp_ALU/dp_cluster_2/N1238 ), .Y(\dp_ALU/N1462 ) );
  NAND2X1 \dp_ALU/U409  ( .A(\dp_ALU/dp_cluster_2/N1274 ), .B(
        \dp_ALU/dp_cluster_2/N1238 ), .Y(\dp_ALU/n402 ) );
  OAI22X1 \dp_ALU/U408  ( .A(n203), .B(n208), .C(\dp_ALU/n403 ), .D(
        \dp_ALU/n391 ), .Y(\dp_ALU/dp_cluster_2/N1239 ) );
  XNOR2X1 \dp_ALU/U407  ( .A(\dp_ALU/n402 ), .B(\dp_ALU/dp_cluster_2/N1239 ), 
        .Y(\dp_ALU/n398 ) );
  OAI22X1 \dp_ALU/U406  ( .A(\dp_ALU/n401 ), .B(\dp_ALU/n390 ), .C(
        \dp_ALU/n392 ), .D(\dp_ALU/n394 ), .Y(\dp_ALU/dp_cluster_2/N1203 ) );
  AOI22X1 \dp_ALU/U405  ( .A(\dp_ALU/n400 ), .B(\dp_ALU/N1416 ), .C(
        \dp_ALU/dp_cluster_2/N1202 ), .D(\dp_ALU/N1459 ), .Y(\dp_ALU/n399 ) );
  XNOR2X1 \dp_ALU/U404  ( .A(\dp_ALU/dp_cluster_2/N1203 ), .B(\dp_ALU/n399 ), 
        .Y(\dp_ALU/dp_cluster_2/N1275 ) );
  XOR2X1 \dp_ALU/U403  ( .A(\dp_ALU/n398 ), .B(\dp_ALU/dp_cluster_2/N1275 ), 
        .Y(\dp_ALU/N1463 ) );
  XOR2X1 \dp_ALU/U402  ( .A(\dp_ALU/n394 ), .B(\dp_ALU/N1324 ), .Y(
        \dp_ALU/n395 ) );
  XOR2X1 \dp_ALU/U401  ( .A(\dp_ALU/n395 ), .B(n213), .Y(\dp_ALU/n396 ) );
  XOR2X1 \dp_ALU/U400  ( .A(n204), .B(n209), .Y(\dp_ALU/n397 ) );
  XOR2X1 \dp_ALU/U399  ( .A(\dp_ALU/n397 ), .B(n205), .Y(\dp_ALU/N1672 ) );
  OAI22X1 \dp_ALU/U398  ( .A(n209), .B(\dp_ALU/n396 ), .C(n205), .D(
        \dp_ALU/n397 ), .Y(\dp_ALU/n393 ) );
  OAI22X1 \dp_ALU/U397  ( .A(n203), .B(\dp_ALU/n394 ), .C(\dp_ALU/n392 ), .D(
        \dp_ALU/n395 ), .Y(\dp_ALU/dp_cluster_1/N1532 ) );
  XOR2X1 \dp_ALU/U396  ( .A(\dp_ALU/n393 ), .B(\dp_ALU/dp_cluster_1/N1532 ), 
        .Y(\dp_ALU/N1673 ) );
  XOR2X1 \dp_ALU/U395  ( .A(n213), .B(\dp_ALU/n391 ), .Y(\dp_ALU/n389 ) );
  XOR2X1 \dp_ALU/U394  ( .A(\dp_ALU/n390 ), .B(\dp_ALU/n389 ), .Y(
        \dp_ALU/dp_cluster_0/N1741 ) );
  XOR2X1 \dp_ALU/U393  ( .A(\dp_ALU/dp_cluster_0/N1741 ), .B(\dp_ALU/N1416 ), 
        .Y(\dp_ALU/n388 ) );
  XNOR2X1 \dp_ALU/U392  ( .A(\dp_ALU/n388 ), .B(n208), .Y(\dp_ALU/N1869 ) );
  OAI22X1 \dp_ALU/U391  ( .A(\dp_ALU/n389 ), .B(\dp_ALU/n390 ), .C(
        \dp_ALU/n391 ), .D(\dp_ALU/n392 ), .Y(\dp_ALU/dp_cluster_0/N1742 ) );
  AOI22X1 \dp_ALU/U390  ( .A(\dp_ALU/n388 ), .B(\dp_ALU/N1371 ), .C(
        \dp_ALU/dp_cluster_0/N1741 ), .D(\dp_ALU/N1416 ), .Y(\dp_ALU/n387 ) );
  XNOR2X1 \dp_ALU/U389  ( .A(\dp_ALU/dp_cluster_0/N1742 ), .B(\dp_ALU/n387 ), 
        .Y(\dp_ALU/N1870 ) );
  NAND3X1 \dp_ALU/U388  ( .A(n81), .B(n123), .C(out_load), .Y(\dp_ALU/n386 )
         );
  NAND2X1 \dp_ALU/U387  ( .A(n81), .B(\dp_ALU/n386 ), .Y(\dp_ALU/n380 ) );
  NAND2X1 \dp_ALU/U386  ( .A(in_data[4]), .B(n71), .Y(\dp_ALU/n385 ) );
  OAI21X1 \dp_ALU/U385  ( .A(n225), .B(\dp_ALU/n380 ), .C(\dp_ALU/n385 ), .Y(
        \dp_ALU/n621 ) );
  NAND2X1 \dp_ALU/U384  ( .A(in_data[3]), .B(n71), .Y(\dp_ALU/n384 ) );
  OAI21X1 \dp_ALU/U383  ( .A(n18), .B(\dp_ALU/n380 ), .C(\dp_ALU/n384 ), .Y(
        \dp_ALU/n620 ) );
  NAND2X1 \dp_ALU/U382  ( .A(in_data[2]), .B(n71), .Y(\dp_ALU/n383 ) );
  OAI21X1 \dp_ALU/U381  ( .A(n221), .B(\dp_ALU/n380 ), .C(\dp_ALU/n383 ), .Y(
        \dp_ALU/n619 ) );
  NAND2X1 \dp_ALU/U380  ( .A(in_data[1]), .B(n71), .Y(\dp_ALU/n382 ) );
  OAI21X1 \dp_ALU/U379  ( .A(n219), .B(\dp_ALU/n380 ), .C(\dp_ALU/n382 ), .Y(
        \dp_ALU/n618 ) );
  NAND2X1 \dp_ALU/U378  ( .A(in_data[0]), .B(n71), .Y(\dp_ALU/n381 ) );
  OAI21X1 \dp_ALU/U377  ( .A(n22), .B(\dp_ALU/n380 ), .C(\dp_ALU/n381 ), .Y(
        \dp_ALU/n617 ) );
  NOR3X1 \dp_ALU/U376  ( .A(n17), .B(out_start), .C(out_load), .Y(
        \dp_ALU/n213 ) );
  NAND2X1 \dp_ALU/U375  ( .A(out_decode), .B(\dp_ALU/n213 ), .Y(\dp_ALU/n379 )
         );
  NAND2X1 \dp_ALU/U374  ( .A(n81), .B(\dp_ALU/n379 ), .Y(\dp_ALU/n352 ) );
  NOR2X1 \dp_ALU/U373  ( .A(n3), .B(\dp_ALU/n379 ), .Y(\dp_ALU/n354 ) );
  NAND2X1 \dp_ALU/U372  ( .A(\dp_ALU/N1061 ), .B(n30), .Y(\dp_ALU/n378 ) );
  OAI21X1 \dp_ALU/U371  ( .A(n198), .B(n28), .C(\dp_ALU/n378 ), .Y(
        \dp_ALU/n616 ) );
  NAND2X1 \dp_ALU/U370  ( .A(\dp_ALU/N1060 ), .B(n30), .Y(\dp_ALU/n377 ) );
  OAI21X1 \dp_ALU/U369  ( .A(n197), .B(n28), .C(\dp_ALU/n377 ), .Y(
        \dp_ALU/n615 ) );
  NAND2X1 \dp_ALU/U368  ( .A(\dp_ALU/N1059 ), .B(n30), .Y(\dp_ALU/n376 ) );
  OAI21X1 \dp_ALU/U367  ( .A(n196), .B(n28), .C(\dp_ALU/n376 ), .Y(
        \dp_ALU/n614 ) );
  NAND2X1 \dp_ALU/U366  ( .A(\dp_ALU/N1058 ), .B(n30), .Y(\dp_ALU/n375 ) );
  OAI21X1 \dp_ALU/U365  ( .A(n194), .B(n28), .C(\dp_ALU/n375 ), .Y(
        \dp_ALU/n613 ) );
  NAND2X1 \dp_ALU/U364  ( .A(\dp_ALU/N1057 ), .B(n30), .Y(\dp_ALU/n374 ) );
  OAI21X1 \dp_ALU/U363  ( .A(n193), .B(n28), .C(\dp_ALU/n374 ), .Y(
        \dp_ALU/n612 ) );
  NAND2X1 \dp_ALU/U362  ( .A(\dp_ALU/N1056 ), .B(n30), .Y(\dp_ALU/n373 ) );
  OAI21X1 \dp_ALU/U361  ( .A(n192), .B(n28), .C(\dp_ALU/n373 ), .Y(
        \dp_ALU/n611 ) );
  NAND2X1 \dp_ALU/U360  ( .A(\dp_ALU/N1055 ), .B(n30), .Y(\dp_ALU/n372 ) );
  OAI21X1 \dp_ALU/U359  ( .A(n190), .B(n28), .C(\dp_ALU/n372 ), .Y(
        \dp_ALU/n610 ) );
  NAND2X1 \dp_ALU/U358  ( .A(\dp_ALU/N1054 ), .B(n30), .Y(\dp_ALU/n371 ) );
  OAI21X1 \dp_ALU/U357  ( .A(n189), .B(n28), .C(\dp_ALU/n371 ), .Y(
        \dp_ALU/n609 ) );
  NAND2X1 \dp_ALU/U356  ( .A(\dp_ALU/N1053 ), .B(n30), .Y(\dp_ALU/n370 ) );
  OAI21X1 \dp_ALU/U355  ( .A(n188), .B(n28), .C(\dp_ALU/n370 ), .Y(
        \dp_ALU/n608 ) );
  NAND2X1 \dp_ALU/U354  ( .A(\dp_ALU/N1052 ), .B(n30), .Y(\dp_ALU/n369 ) );
  OAI21X1 \dp_ALU/U353  ( .A(n187), .B(n28), .C(\dp_ALU/n369 ), .Y(
        \dp_ALU/n607 ) );
  NAND2X1 \dp_ALU/U352  ( .A(\dp_ALU/N1051 ), .B(n30), .Y(\dp_ALU/n368 ) );
  OAI21X1 \dp_ALU/U351  ( .A(n186), .B(n28), .C(\dp_ALU/n368 ), .Y(
        \dp_ALU/n606 ) );
  NAND2X1 \dp_ALU/U350  ( .A(\dp_ALU/N1050 ), .B(n30), .Y(\dp_ALU/n367 ) );
  OAI21X1 \dp_ALU/U349  ( .A(n185), .B(n28), .C(\dp_ALU/n367 ), .Y(
        \dp_ALU/n605 ) );
  NAND2X1 \dp_ALU/U348  ( .A(\dp_ALU/N1049 ), .B(n31), .Y(\dp_ALU/n366 ) );
  OAI21X1 \dp_ALU/U347  ( .A(n184), .B(n29), .C(\dp_ALU/n366 ), .Y(
        \dp_ALU/n604 ) );
  NAND2X1 \dp_ALU/U346  ( .A(\dp_ALU/N1048 ), .B(n31), .Y(\dp_ALU/n365 ) );
  OAI21X1 \dp_ALU/U345  ( .A(n183), .B(n29), .C(\dp_ALU/n365 ), .Y(
        \dp_ALU/n603 ) );
  NAND2X1 \dp_ALU/U344  ( .A(\dp_ALU/N1047 ), .B(n31), .Y(\dp_ALU/n364 ) );
  OAI21X1 \dp_ALU/U343  ( .A(n182), .B(n29), .C(\dp_ALU/n364 ), .Y(
        \dp_ALU/n602 ) );
  NAND2X1 \dp_ALU/U342  ( .A(\dp_ALU/N1046 ), .B(n31), .Y(\dp_ALU/n363 ) );
  OAI21X1 \dp_ALU/U341  ( .A(n181), .B(n29), .C(\dp_ALU/n363 ), .Y(
        \dp_ALU/n601 ) );
  NAND2X1 \dp_ALU/U340  ( .A(\dp_ALU/N1045 ), .B(n31), .Y(\dp_ALU/n362 ) );
  OAI21X1 \dp_ALU/U339  ( .A(n179), .B(n29), .C(\dp_ALU/n362 ), .Y(
        \dp_ALU/n600 ) );
  NAND2X1 \dp_ALU/U338  ( .A(\dp_ALU/N1044 ), .B(n31), .Y(\dp_ALU/n361 ) );
  OAI21X1 \dp_ALU/U337  ( .A(n178), .B(n29), .C(\dp_ALU/n361 ), .Y(
        \dp_ALU/n599 ) );
  NAND2X1 \dp_ALU/U336  ( .A(\dp_ALU/N1043 ), .B(n31), .Y(\dp_ALU/n360 ) );
  OAI21X1 \dp_ALU/U335  ( .A(n176), .B(n29), .C(\dp_ALU/n360 ), .Y(
        \dp_ALU/n598 ) );
  NAND2X1 \dp_ALU/U334  ( .A(\dp_ALU/N1042 ), .B(n31), .Y(\dp_ALU/n359 ) );
  OAI21X1 \dp_ALU/U333  ( .A(n175), .B(n29), .C(\dp_ALU/n359 ), .Y(
        \dp_ALU/n597 ) );
  NAND2X1 \dp_ALU/U332  ( .A(\dp_ALU/N1041 ), .B(n31), .Y(\dp_ALU/n358 ) );
  OAI21X1 \dp_ALU/U331  ( .A(n174), .B(n29), .C(\dp_ALU/n358 ), .Y(
        \dp_ALU/n596 ) );
  NAND2X1 \dp_ALU/U330  ( .A(\dp_ALU/N1040 ), .B(n31), .Y(\dp_ALU/n357 ) );
  OAI21X1 \dp_ALU/U329  ( .A(n172), .B(n29), .C(\dp_ALU/n357 ), .Y(
        \dp_ALU/n595 ) );
  NAND2X1 \dp_ALU/U328  ( .A(\dp_ALU/N1039 ), .B(n31), .Y(\dp_ALU/n356 ) );
  OAI21X1 \dp_ALU/U327  ( .A(n171), .B(n29), .C(\dp_ALU/n356 ), .Y(
        \dp_ALU/n594 ) );
  NAND2X1 \dp_ALU/U326  ( .A(\dp_ALU/N1038 ), .B(n31), .Y(\dp_ALU/n355 ) );
  OAI21X1 \dp_ALU/U325  ( .A(n170), .B(n29), .C(\dp_ALU/n355 ), .Y(
        \dp_ALU/n593 ) );
  NAND2X1 \dp_ALU/U324  ( .A(\dp_ALU/N1037 ), .B(\dp_ALU/n354 ), .Y(
        \dp_ALU/n353 ) );
  OAI21X1 \dp_ALU/U323  ( .A(n168), .B(\dp_ALU/n352 ), .C(\dp_ALU/n353 ), .Y(
        \dp_ALU/n592 ) );
  NAND3X1 \dp_ALU/U322  ( .A(\dp_ALU/n213 ), .B(n122), .C(out_alu), .Y(
        \dp_ALU/n209 ) );
  NOR2X1 \dp_ALU/U321  ( .A(n17), .B(n24), .Y(\dp_ALU/n218 ) );
  NOR2X1 \dp_ALU/U320  ( .A(n24), .B(\dp_ALU/n256 ), .Y(\dp_ALU/n351 ) );
  OAI22X1 \dp_ALU/U319  ( .A(n26), .B(n139), .C(n168), .D(n23), .Y(
        \dp_ALU/n591 ) );
  OAI22X1 \dp_ALU/U318  ( .A(n26), .B(n140), .C(n170), .D(\dp_ALU/n209 ), .Y(
        \dp_ALU/n590 ) );
  OAI22X1 \dp_ALU/U317  ( .A(n26), .B(n141), .C(n171), .D(\dp_ALU/n209 ), .Y(
        \dp_ALU/n589 ) );
  OAI22X1 \dp_ALU/U316  ( .A(n26), .B(n142), .C(n172), .D(\dp_ALU/n209 ), .Y(
        \dp_ALU/n588 ) );
  OAI22X1 \dp_ALU/U315  ( .A(n26), .B(n143), .C(n174), .D(\dp_ALU/n209 ), .Y(
        \dp_ALU/n587 ) );
  OAI22X1 \dp_ALU/U314  ( .A(n26), .B(n144), .C(n175), .D(\dp_ALU/n209 ), .Y(
        \dp_ALU/n586 ) );
  OAI22X1 \dp_ALU/U313  ( .A(n26), .B(n145), .C(n176), .D(\dp_ALU/n209 ), .Y(
        \dp_ALU/n585 ) );
  OAI22X1 \dp_ALU/U312  ( .A(n26), .B(n146), .C(n178), .D(\dp_ALU/n209 ), .Y(
        \dp_ALU/n584 ) );
  OAI22X1 \dp_ALU/U311  ( .A(n26), .B(n147), .C(n179), .D(n23), .Y(
        \dp_ALU/n583 ) );
  OAI22X1 \dp_ALU/U310  ( .A(n26), .B(n148), .C(n181), .D(n23), .Y(
        \dp_ALU/n582 ) );
  OAI22X1 \dp_ALU/U309  ( .A(n26), .B(n149), .C(n182), .D(n23), .Y(
        \dp_ALU/n581 ) );
  OAI22X1 \dp_ALU/U308  ( .A(n26), .B(n150), .C(n183), .D(n23), .Y(
        \dp_ALU/n580 ) );
  OAI22X1 \dp_ALU/U307  ( .A(n27), .B(n151), .C(n184), .D(n23), .Y(
        \dp_ALU/n579 ) );
  OAI22X1 \dp_ALU/U306  ( .A(n27), .B(n152), .C(n185), .D(n23), .Y(
        \dp_ALU/n578 ) );
  OAI22X1 \dp_ALU/U305  ( .A(n27), .B(n153), .C(n186), .D(n23), .Y(
        \dp_ALU/n577 ) );
  OAI22X1 \dp_ALU/U304  ( .A(n27), .B(n154), .C(n187), .D(n23), .Y(
        \dp_ALU/n576 ) );
  OAI22X1 \dp_ALU/U303  ( .A(n27), .B(n155), .C(n188), .D(n23), .Y(
        \dp_ALU/n575 ) );
  OAI22X1 \dp_ALU/U302  ( .A(n27), .B(n156), .C(n189), .D(n23), .Y(
        \dp_ALU/n574 ) );
  OAI22X1 \dp_ALU/U301  ( .A(n27), .B(n157), .C(n190), .D(n23), .Y(
        \dp_ALU/n573 ) );
  OAI22X1 \dp_ALU/U300  ( .A(n27), .B(n158), .C(n192), .D(n23), .Y(
        \dp_ALU/n572 ) );
  OAI22X1 \dp_ALU/U299  ( .A(n27), .B(n159), .C(n193), .D(n23), .Y(
        \dp_ALU/n571 ) );
  OAI22X1 \dp_ALU/U298  ( .A(n27), .B(n160), .C(n194), .D(n23), .Y(
        \dp_ALU/n570 ) );
  OAI22X1 \dp_ALU/U297  ( .A(n27), .B(n161), .C(n196), .D(n23), .Y(
        \dp_ALU/n569 ) );
  OAI22X1 \dp_ALU/U296  ( .A(n27), .B(n162), .C(n197), .D(n23), .Y(
        \dp_ALU/n568 ) );
  OAI22X1 \dp_ALU/U295  ( .A(\dp_ALU/n351 ), .B(n163), .C(n198), .D(n23), .Y(
        \dp_ALU/n567 ) );
  AOI22X1 \dp_ALU/U294  ( .A(out_temp_cleared[22]), .B(out_mines[22]), .C(
        out_temp_cleared[23]), .D(out_mines[23]), .Y(\dp_ALU/n344 ) );
  NOR2X1 \dp_ALU/U293  ( .A(out_temp_decoded[24]), .B(out_temp_cleared[24]), 
        .Y(\dp_ALU/n350 ) );
  AOI22X1 \dp_ALU/U292  ( .A(\dp_ALU/n350 ), .B(n233), .C(out_temp_cleared[21]), .D(out_mines[21]), .Y(\dp_ALU/n345 ) );
  NOR2X1 \dp_ALU/U291  ( .A(out_temp_decoded[19]), .B(out_temp_cleared[19]), 
        .Y(\dp_ALU/n347 ) );
  NAND3X1 \dp_ALU/U290  ( .A(n157), .B(n190), .C(n229), .Y(\dp_ALU/n349 ) );
  OAI21X1 \dp_ALU/U289  ( .A(n233), .B(n163), .C(\dp_ALU/n349 ), .Y(
        \dp_ALU/n348 ) );
  AOI21X1 \dp_ALU/U288  ( .A(\dp_ALU/n347 ), .B(n230), .C(\dp_ALU/n348 ), .Y(
        \dp_ALU/n346 ) );
  NAND3X1 \dp_ALU/U287  ( .A(\dp_ALU/n344 ), .B(\dp_ALU/n345 ), .C(
        \dp_ALU/n346 ), .Y(\dp_ALU/n334 ) );
  AOI22X1 \dp_ALU/U286  ( .A(out_temp_cleared[19]), .B(out_mines[19]), .C(
        out_temp_cleared[20]), .D(out_mines[20]), .Y(\dp_ALU/n336 ) );
  NOR2X1 \dp_ALU/U285  ( .A(out_temp_decoded[20]), .B(out_temp_cleared[20]), 
        .Y(\dp_ALU/n343 ) );
  AOI22X1 \dp_ALU/U284  ( .A(\dp_ALU/n343 ), .B(n235), .C(out_temp_cleared[18]), .D(out_mines[18]), .Y(\dp_ALU/n337 ) );
  NOR2X1 \dp_ALU/U283  ( .A(out_temp_decoded[5]), .B(out_temp_cleared[5]), .Y(
        \dp_ALU/n339 ) );
  NAND2X1 \dp_ALU/U282  ( .A(n143), .B(n174), .Y(\dp_ALU/n341 ) );
  NAND3X1 \dp_ALU/U281  ( .A(n142), .B(n172), .C(n226), .Y(\dp_ALU/n342 ) );
  OAI21X1 \dp_ALU/U280  ( .A(out_mines[4]), .B(\dp_ALU/n341 ), .C(
        \dp_ALU/n342 ), .Y(\dp_ALU/n340 ) );
  AOI21X1 \dp_ALU/U279  ( .A(\dp_ALU/n339 ), .B(n249), .C(\dp_ALU/n340 ), .Y(
        \dp_ALU/n338 ) );
  NAND3X1 \dp_ALU/U278  ( .A(\dp_ALU/n336 ), .B(\dp_ALU/n337 ), .C(
        \dp_ALU/n338 ), .Y(\dp_ALU/n335 ) );
  NOR2X1 \dp_ALU/U277  ( .A(\dp_ALU/n334 ), .B(\dp_ALU/n335 ), .Y(
        \dp_ALU/n269 ) );
  NOR2X1 \dp_ALU/U276  ( .A(out_temp_decoded[12]), .B(out_temp_cleared[12]), 
        .Y(\dp_ALU/n332 ) );
  NOR2X1 \dp_ALU/U275  ( .A(out_temp_decoded[13]), .B(out_temp_cleared[13]), 
        .Y(\dp_ALU/n333 ) );
  AOI22X1 \dp_ALU/U274  ( .A(\dp_ALU/n332 ), .B(n241), .C(\dp_ALU/n333 ), .D(
        n243), .Y(\dp_ALU/n324 ) );
  AOI22X1 \dp_ALU/U273  ( .A(out_temp_cleared[16]), .B(out_mines[16]), .C(
        out_temp_cleared[17]), .D(out_mines[17]), .Y(\dp_ALU/n325 ) );
  NAND2X1 \dp_ALU/U272  ( .A(n155), .B(n188), .Y(\dp_ALU/n330 ) );
  NAND3X1 \dp_ALU/U271  ( .A(n154), .B(n187), .C(n244), .Y(\dp_ALU/n331 ) );
  OAI21X1 \dp_ALU/U270  ( .A(out_mines[16]), .B(\dp_ALU/n330 ), .C(
        \dp_ALU/n331 ), .Y(\dp_ALU/n327 ) );
  NAND3X1 \dp_ALU/U269  ( .A(n156), .B(n189), .C(n234), .Y(\dp_ALU/n329 ) );
  OAI21X1 \dp_ALU/U268  ( .A(n244), .B(n154), .C(\dp_ALU/n329 ), .Y(
        \dp_ALU/n328 ) );
  NOR2X1 \dp_ALU/U267  ( .A(\dp_ALU/n327 ), .B(\dp_ALU/n328 ), .Y(
        \dp_ALU/n326 ) );
  NAND3X1 \dp_ALU/U266  ( .A(\dp_ALU/n324 ), .B(\dp_ALU/n325 ), .C(
        \dp_ALU/n326 ), .Y(\dp_ALU/n314 ) );
  AOI22X1 \dp_ALU/U265  ( .A(out_temp_cleared[13]), .B(out_mines[13]), .C(
        out_temp_cleared[14]), .D(out_mines[14]), .Y(\dp_ALU/n316 ) );
  NOR2X1 \dp_ALU/U264  ( .A(out_temp_decoded[14]), .B(out_temp_cleared[14]), 
        .Y(\dp_ALU/n323 ) );
  AOI22X1 \dp_ALU/U263  ( .A(\dp_ALU/n323 ), .B(n242), .C(out_temp_cleared[12]), .D(out_mines[12]), .Y(\dp_ALU/n317 ) );
  NOR2X1 \dp_ALU/U262  ( .A(out_temp_decoded[23]), .B(out_temp_cleared[23]), 
        .Y(\dp_ALU/n319 ) );
  NAND2X1 \dp_ALU/U261  ( .A(n161), .B(n196), .Y(\dp_ALU/n321 ) );
  NAND3X1 \dp_ALU/U260  ( .A(n160), .B(n194), .C(n237), .Y(\dp_ALU/n322 ) );
  OAI21X1 \dp_ALU/U259  ( .A(out_mines[22]), .B(\dp_ALU/n321 ), .C(
        \dp_ALU/n322 ), .Y(\dp_ALU/n320 ) );
  AOI21X1 \dp_ALU/U258  ( .A(\dp_ALU/n319 ), .B(n238), .C(\dp_ALU/n320 ), .Y(
        \dp_ALU/n318 ) );
  NAND3X1 \dp_ALU/U257  ( .A(\dp_ALU/n316 ), .B(\dp_ALU/n317 ), .C(
        \dp_ALU/n318 ), .Y(\dp_ALU/n315 ) );
  NOR2X1 \dp_ALU/U256  ( .A(\dp_ALU/n314 ), .B(\dp_ALU/n315 ), .Y(
        \dp_ALU/n270 ) );
  NAND2X1 \dp_ALU/U255  ( .A(n141), .B(n171), .Y(\dp_ALU/n312 ) );
  NAND3X1 \dp_ALU/U254  ( .A(n140), .B(n170), .C(n245), .Y(\dp_ALU/n313 ) );
  OAI21X1 \dp_ALU/U253  ( .A(out_mines[2]), .B(\dp_ALU/n312 ), .C(
        \dp_ALU/n313 ), .Y(\dp_ALU/n310 ) );
  OAI22X1 \dp_ALU/U252  ( .A(n245), .B(n140), .C(n246), .D(n139), .Y(
        \dp_ALU/n311 ) );
  NOR2X1 \dp_ALU/U251  ( .A(\dp_ALU/n310 ), .B(\dp_ALU/n311 ), .Y(
        \dp_ALU/n297 ) );
  OAI22X1 \dp_ALU/U250  ( .A(n247), .B(n143), .C(n226), .D(n142), .Y(
        \dp_ALU/n307 ) );
  NAND3X1 \dp_ALU/U249  ( .A(n139), .B(n168), .C(n246), .Y(\dp_ALU/n309 ) );
  OAI21X1 \dp_ALU/U248  ( .A(n249), .B(n144), .C(\dp_ALU/n309 ), .Y(
        \dp_ALU/n308 ) );
  NOR2X1 \dp_ALU/U247  ( .A(\dp_ALU/n307 ), .B(\dp_ALU/n308 ), .Y(
        \dp_ALU/n298 ) );
  NAND3X1 \dp_ALU/U246  ( .A(n148), .B(n181), .C(n239), .Y(\dp_ALU/n303 ) );
  NAND3X1 \dp_ALU/U245  ( .A(n150), .B(n183), .C(n228), .Y(\dp_ALU/n304 ) );
  NOR2X1 \dp_ALU/U244  ( .A(out_temp_decoded[10]), .B(out_temp_cleared[10]), 
        .Y(\dp_ALU/n306 ) );
  AOI22X1 \dp_ALU/U243  ( .A(out_temp_cleared[2]), .B(out_mines[2]), .C(
        \dp_ALU/n306 ), .D(n227), .Y(\dp_ALU/n305 ) );
  NAND3X1 \dp_ALU/U242  ( .A(\dp_ALU/n303 ), .B(\dp_ALU/n304 ), .C(
        \dp_ALU/n305 ), .Y(\dp_ALU/n300 ) );
  AOI22X1 \dp_ALU/U241  ( .A(out_temp_cleared[10]), .B(out_mines[10]), .C(
        out_temp_cleared[11]), .D(out_mines[11]), .Y(\dp_ALU/n302 ) );
  OAI21X1 \dp_ALU/U240  ( .A(n239), .B(n148), .C(\dp_ALU/n302 ), .Y(
        \dp_ALU/n301 ) );
  NOR2X1 \dp_ALU/U239  ( .A(\dp_ALU/n300 ), .B(\dp_ALU/n301 ), .Y(
        \dp_ALU/n299 ) );
  NAND3X1 \dp_ALU/U238  ( .A(\dp_ALU/n297 ), .B(\dp_ALU/n298 ), .C(
        \dp_ALU/n299 ), .Y(\dp_ALU/n272 ) );
  AOI22X1 \dp_ALU/U237  ( .A(out_temp_decoded[12]), .B(out_mines[12]), .C(
        out_temp_decoded[13]), .D(out_mines[13]), .Y(\dp_ALU/n296 ) );
  OAI21X1 \dp_ALU/U236  ( .A(n242), .B(n186), .C(\dp_ALU/n296 ), .Y(
        \dp_ALU/n266 ) );
  OAI22X1 \dp_ALU/U235  ( .A(n240), .B(n147), .C(n250), .D(n146), .Y(
        \dp_ALU/n295 ) );
  NOR2X1 \dp_ALU/U234  ( .A(\dp_ALU/n266 ), .B(\dp_ALU/n295 ), .Y(
        \dp_ALU/n274 ) );
  NAND2X1 \dp_ALU/U233  ( .A(n146), .B(n178), .Y(\dp_ALU/n293 ) );
  NAND3X1 \dp_ALU/U232  ( .A(n145), .B(n176), .C(n248), .Y(\dp_ALU/n294 ) );
  OAI21X1 \dp_ALU/U231  ( .A(out_mines[7]), .B(\dp_ALU/n293 ), .C(
        \dp_ALU/n294 ), .Y(\dp_ALU/n290 ) );
  NAND3X1 \dp_ALU/U230  ( .A(n147), .B(n179), .C(n240), .Y(\dp_ALU/n292 ) );
  OAI21X1 \dp_ALU/U229  ( .A(n248), .B(n145), .C(\dp_ALU/n292 ), .Y(
        \dp_ALU/n291 ) );
  NOR2X1 \dp_ALU/U228  ( .A(\dp_ALU/n290 ), .B(\dp_ALU/n291 ), .Y(
        \dp_ALU/n275 ) );
  AOI22X1 \dp_ALU/U227  ( .A(out_temp_decoded[3]), .B(out_mines[3]), .C(
        out_temp_decoded[4]), .D(out_mines[4]), .Y(\dp_ALU/n289 ) );
  OAI21X1 \dp_ALU/U226  ( .A(n249), .B(n175), .C(\dp_ALU/n289 ), .Y(
        \dp_ALU/n288 ) );
  OAI22X1 \dp_ALU/U225  ( .A(n168), .B(n246), .C(n170), .D(n245), .Y(
        \dp_ALU/n287 ) );
  AOI21X1 \dp_ALU/U224  ( .A(out_mines[2]), .B(out_temp_decoded[2]), .C(
        \dp_ALU/n287 ), .Y(\dp_ALU/n264 ) );
  AOI22X1 \dp_ALU/U223  ( .A(out_temp_decoded[15]), .B(out_mines[15]), .C(
        out_temp_decoded[16]), .D(out_mines[16]), .Y(\dp_ALU/n286 ) );
  OAI21X1 \dp_ALU/U222  ( .A(n234), .B(n189), .C(\dp_ALU/n286 ), .Y(
        \dp_ALU/n267 ) );
  AOI22X1 \dp_ALU/U221  ( .A(out_temp_decoded[18]), .B(out_mines[18]), .C(
        out_temp_decoded[19]), .D(out_mines[19]), .Y(\dp_ALU/n285 ) );
  OAI21X1 \dp_ALU/U220  ( .A(n235), .B(n193), .C(\dp_ALU/n285 ), .Y(
        \dp_ALU/n268 ) );
  NOR2X1 \dp_ALU/U219  ( .A(\dp_ALU/n267 ), .B(\dp_ALU/n268 ), .Y(
        \dp_ALU/n284 ) );
  NAND3X1 \dp_ALU/U218  ( .A(n173), .B(\dp_ALU/n264 ), .C(\dp_ALU/n284 ), .Y(
        \dp_ALU/n277 ) );
  AOI22X1 \dp_ALU/U217  ( .A(out_temp_decoded[10]), .B(out_mines[10]), .C(
        out_temp_decoded[11]), .D(out_mines[11]), .Y(\dp_ALU/n283 ) );
  OAI21X1 \dp_ALU/U216  ( .A(n239), .B(n181), .C(\dp_ALU/n283 ), .Y(
        \dp_ALU/n262 ) );
  AOI22X1 \dp_ALU/U215  ( .A(out_temp_decoded[6]), .B(out_mines[6]), .C(
        out_temp_decoded[7]), .D(out_mines[7]), .Y(\dp_ALU/n282 ) );
  OAI21X1 \dp_ALU/U214  ( .A(n240), .B(n179), .C(\dp_ALU/n282 ), .Y(
        \dp_ALU/n281 ) );
  AOI22X1 \dp_ALU/U213  ( .A(out_temp_decoded[23]), .B(out_mines[23]), .C(
        out_temp_decoded[24]), .D(out_mines[24]), .Y(\dp_ALU/n279 ) );
  AOI22X1 \dp_ALU/U212  ( .A(out_temp_decoded[21]), .B(out_mines[21]), .C(
        out_temp_decoded[22]), .D(out_mines[22]), .Y(\dp_ALU/n280 ) );
  NAND2X1 \dp_ALU/U211  ( .A(\dp_ALU/n279 ), .B(\dp_ALU/n280 ), .Y(
        \dp_ALU/n263 ) );
  NAND3X1 \dp_ALU/U210  ( .A(n180), .B(n177), .C(n195), .Y(\dp_ALU/n278 ) );
  NOR2X1 \dp_ALU/U209  ( .A(\dp_ALU/n277 ), .B(\dp_ALU/n278 ), .Y(
        \dp_ALU/n276 ) );
  NAND3X1 \dp_ALU/U208  ( .A(\dp_ALU/n274 ), .B(\dp_ALU/n275 ), .C(
        \dp_ALU/n276 ), .Y(\dp_ALU/n273 ) );
  NOR2X1 \dp_ALU/U207  ( .A(\dp_ALU/n272 ), .B(\dp_ALU/n273 ), .Y(
        \dp_ALU/n271 ) );
  NAND3X1 \dp_ALU/U206  ( .A(\dp_ALU/n269 ), .B(\dp_ALU/n270 ), .C(
        \dp_ALU/n271 ), .Y(\dp_ALU/n224 ) );
  NOR2X1 \dp_ALU/U205  ( .A(\dp_ALU/n266 ), .B(\dp_ALU/n267 ), .Y(
        \dp_ALU/n265 ) );
  NAND3X1 \dp_ALU/U204  ( .A(\dp_ALU/n264 ), .B(n191), .C(\dp_ALU/n265 ), .Y(
        \dp_ALU/n259 ) );
  NOR2X1 \dp_ALU/U203  ( .A(\dp_ALU/n262 ), .B(\dp_ALU/n263 ), .Y(
        \dp_ALU/n261 ) );
  NAND3X1 \dp_ALU/U202  ( .A(n177), .B(n173), .C(\dp_ALU/n261 ), .Y(
        \dp_ALU/n260 ) );
  NOR2X1 \dp_ALU/U201  ( .A(\dp_ALU/n259 ), .B(\dp_ALU/n260 ), .Y(
        \dp_ALU/n223 ) );
  AOI21X1 \dp_ALU/U200  ( .A(\dp_ALU/n224 ), .B(\dp_ALU/n223 ), .C(
        \dp_ALU/n209 ), .Y(\dp_ALU/n258 ) );
  AOI21X1 \dp_ALU/U199  ( .A(\dp_ALU/n256 ), .B(out_gameover), .C(
        \dp_ALU/n258 ), .Y(\dp_ALU/n257 ) );
  NAND2X1 \dp_ALU/U198  ( .A(out_win), .B(\dp_ALU/n256 ), .Y(\dp_ALU/n255 ) );
  OAI21X1 \dp_ALU/U197  ( .A(\dp_ALU/n209 ), .B(\dp_ALU/n224 ), .C(
        \dp_ALU/n255 ), .Y(\dp_ALU/n566 ) );
  OAI21X1 \dp_ALU/U196  ( .A(\dp_ALU/n209 ), .B(\dp_ALU/n224 ), .C(n81), .Y(
        \dp_ALU/n254 ) );
  NOR2X1 \dp_ALU/U195  ( .A(\dp_ALU/n209 ), .B(n80), .Y(\dp_ALU/n246 ) );
  AOI22X1 \dp_ALU/U194  ( .A(n138), .B(\dp_ALU/n246 ), .C(out_global_score[0]), 
        .D(n80), .Y(\dp_ALU/n253 ) );
  AOI22X1 \dp_ALU/U193  ( .A(\dp_ALU/N1932 ), .B(\dp_ALU/n246 ), .C(
        out_global_score[1]), .D(n80), .Y(\dp_ALU/n252 ) );
  AOI22X1 \dp_ALU/U192  ( .A(\dp_ALU/N1933 ), .B(\dp_ALU/n246 ), .C(
        out_global_score[2]), .D(n80), .Y(\dp_ALU/n251 ) );
  AOI22X1 \dp_ALU/U191  ( .A(\dp_ALU/N1934 ), .B(\dp_ALU/n246 ), .C(
        out_global_score[3]), .D(n80), .Y(\dp_ALU/n250 ) );
  AOI22X1 \dp_ALU/U190  ( .A(\dp_ALU/N1935 ), .B(\dp_ALU/n246 ), .C(
        out_global_score[4]), .D(n80), .Y(\dp_ALU/n249 ) );
  AOI22X1 \dp_ALU/U189  ( .A(\dp_ALU/N1936 ), .B(\dp_ALU/n246 ), .C(
        out_global_score[5]), .D(n80), .Y(\dp_ALU/n248 ) );
  AOI22X1 \dp_ALU/U188  ( .A(\dp_ALU/N1937 ), .B(\dp_ALU/n246 ), .C(
        out_global_score[6]), .D(n80), .Y(\dp_ALU/n247 ) );
  AOI22X1 \dp_ALU/U187  ( .A(\dp_ALU/N1938 ), .B(\dp_ALU/n246 ), .C(
        out_global_score[7]), .D(n80), .Y(\dp_ALU/n245 ) );
  NAND3X1 \dp_ALU/U186  ( .A(n189), .B(n190), .C(n188), .Y(\dp_ALU/n243 ) );
  NAND3X1 \dp_ALU/U185  ( .A(n184), .B(n185), .C(n183), .Y(\dp_ALU/n244 ) );
  NOR2X1 \dp_ALU/U184  ( .A(\dp_ALU/n243 ), .B(\dp_ALU/n244 ), .Y(
        \dp_ALU/n239 ) );
  NAND3X1 \dp_ALU/U183  ( .A(n178), .B(n179), .C(n176), .Y(\dp_ALU/n241 ) );
  NAND3X1 \dp_ALU/U182  ( .A(n196), .B(n197), .C(n194), .Y(\dp_ALU/n242 ) );
  NOR2X1 \dp_ALU/U181  ( .A(\dp_ALU/n241 ), .B(\dp_ALU/n242 ), .Y(
        \dp_ALU/n240 ) );
  NAND3X1 \dp_ALU/U180  ( .A(n171), .B(n172), .C(n170), .Y(\dp_ALU/n238 ) );
  NOR2X1 \dp_ALU/U179  ( .A(out_temp_decoded[9]), .B(out_temp_decoded[24]), 
        .Y(\dp_ALU/n237 ) );
  NAND3X1 \dp_ALU/U178  ( .A(n186), .B(n192), .C(\dp_ALU/n237 ), .Y(
        \dp_ALU/n234 ) );
  NOR2X1 \dp_ALU/U177  ( .A(out_temp_decoded[4]), .B(\dp_ALU/n234 ), .Y(
        \dp_ALU/n236 ) );
  NAND3X1 \dp_ALU/U176  ( .A(\dp_ALU/n227 ), .B(n169), .C(\dp_ALU/n236 ), .Y(
        \dp_ALU/n231 ) );
  NOR2X1 \dp_ALU/U175  ( .A(out_temp_decoded[5]), .B(out_temp_decoded[20]), 
        .Y(\dp_ALU/n235 ) );
  NAND3X1 \dp_ALU/U174  ( .A(n182), .B(n187), .C(\dp_ALU/n235 ), .Y(
        \dp_ALU/n229 ) );
  NOR2X1 \dp_ALU/U173  ( .A(\dp_ALU/n229 ), .B(\dp_ALU/n234 ), .Y(
        \dp_ALU/n233 ) );
  NAND3X1 \dp_ALU/U172  ( .A(n168), .B(n174), .C(\dp_ALU/n233 ), .Y(
        \dp_ALU/n232 ) );
  NOR2X1 \dp_ALU/U171  ( .A(\dp_ALU/n231 ), .B(n166), .Y(\dp_ALU/n219 ) );
  NAND2X1 \dp_ALU/U170  ( .A(\dp_ALU/n231 ), .B(n168), .Y(\dp_ALU/n230 ) );
  NOR2X1 \dp_ALU/U169  ( .A(\dp_ALU/n229 ), .B(\dp_ALU/n230 ), .Y(
        \dp_ALU/n228 ) );
  NAND3X1 \dp_ALU/U168  ( .A(\dp_ALU/n227 ), .B(n169), .C(\dp_ALU/n228 ), .Y(
        \dp_ALU/n226 ) );
  AOI22X1 \dp_ALU/U167  ( .A(\dp_ALU/N1870 ), .B(n167), .C(n166), .D(
        \dp_ALU/N1463 ), .Y(\dp_ALU/n225 ) );
  AOI21X1 \dp_ALU/U166  ( .A(\dp_ALU/n219 ), .B(\dp_ALU/N1673 ), .C(n164), .Y(
        \dp_ALU/n221 ) );
  NAND3X1 \dp_ALU/U165  ( .A(\dp_ALU/n223 ), .B(\dp_ALU/n224 ), .C(n24), .Y(
        \dp_ALU/n216 ) );
  NAND2X1 \dp_ALU/U164  ( .A(out_n_nearby[1]), .B(\dp_ALU/n218 ), .Y(
        \dp_ALU/n222 ) );
  OAI21X1 \dp_ALU/U163  ( .A(\dp_ALU/n221 ), .B(\dp_ALU/n216 ), .C(
        \dp_ALU/n222 ), .Y(\dp_ALU/n565 ) );
  AOI22X1 \dp_ALU/U162  ( .A(\dp_ALU/N1869 ), .B(n167), .C(\dp_ALU/N1462 ), 
        .D(n166), .Y(\dp_ALU/n220 ) );
  AOI21X1 \dp_ALU/U161  ( .A(\dp_ALU/n219 ), .B(\dp_ALU/N1672 ), .C(n165), .Y(
        \dp_ALU/n215 ) );
  NAND2X1 \dp_ALU/U160  ( .A(out_n_nearby[0]), .B(\dp_ALU/n218 ), .Y(
        \dp_ALU/n217 ) );
  OAI21X1 \dp_ALU/U159  ( .A(\dp_ALU/n215 ), .B(\dp_ALU/n216 ), .C(
        \dp_ALU/n217 ), .Y(\dp_ALU/n564 ) );
  NAND2X1 \dp_ALU/U158  ( .A(n121), .B(n122), .Y(\dp_ALU/n210 ) );
  NOR2X1 \dp_ALU/U157  ( .A(out_display), .B(out_decode), .Y(\dp_ALU/n214 ) );
  NAND3X1 \dp_ALU/U156  ( .A(\dp_ALU/n213 ), .B(n121), .C(\dp_ALU/n214 ), .Y(
        \dp_ALU/n208 ) );
  NAND2X1 \dp_ALU/U155  ( .A(\dp_ALU/n213 ), .B(\dp_ALU/n208 ), .Y(
        \dp_ALU/n211 ) );
  NAND2X1 \dp_ALU/U154  ( .A(out_display_done), .B(n83), .Y(\dp_ALU/n212 ) );
  OAI21X1 \dp_ALU/U153  ( .A(\dp_ALU/n210 ), .B(\dp_ALU/n211 ), .C(
        \dp_ALU/n212 ), .Y(\dp_ALU/n563 ) );
  OAI21X1 \dp_ALU/U152  ( .A(\dp_ALU/n208 ), .B(n137), .C(\dp_ALU/n209 ), .Y(
        \dp_ALU/n562 ) );
  AND2X2 \dp_ALU/U6  ( .A(\dp_ALU/n448 ), .B(\dp_ALU/n449 ), .Y(\dp_ALU/n412 )
         );
  AND2X2 \dp_ALU/U4  ( .A(\dp_ALU/n218 ), .B(n123), .Y(\dp_ALU/n256 ) );
  AND2X2 \dp_ALU/U3  ( .A(\dp_ALU/n239 ), .B(\dp_ALU/n240 ), .Y(\dp_ALU/n227 )
         );
  DFFNEGX1 \dp_ALU/alu_done_reg  ( .D(\dp_ALU/n562 ), .CLK(n15), .Q(
        out_alu_done) );
  DFFNEGX1 \dp_ALU/display_done_reg  ( .D(\dp_ALU/n563 ), .CLK(n15), .Q(
        out_display_done) );
  DFFNEGX1 \dp_ALU/n_nearby_reg[0]  ( .D(\dp_ALU/n564 ), .CLK(n42), .Q(
        out_n_nearby[0]) );
  DFFNEGX1 \dp_ALU/n_nearby_reg[1]  ( .D(\dp_ALU/n565 ), .CLK(n42), .Q(
        out_n_nearby[1]) );
  DFFNEGX1 \dp_ALU/global_score_reg[7]  ( .D(n79), .CLK(n42), .Q(
        out_global_score[7]) );
  DFFNEGX1 \dp_ALU/global_score_reg[6]  ( .D(n78), .CLK(n42), .Q(
        out_global_score[6]) );
  DFFNEGX1 \dp_ALU/global_score_reg[5]  ( .D(n77), .CLK(n42), .Q(
        out_global_score[5]) );
  DFFNEGX1 \dp_ALU/global_score_reg[4]  ( .D(n76), .CLK(n42), .Q(
        out_global_score[4]) );
  DFFNEGX1 \dp_ALU/global_score_reg[3]  ( .D(n75), .CLK(n42), .Q(
        out_global_score[3]) );
  DFFNEGX1 \dp_ALU/global_score_reg[2]  ( .D(n74), .CLK(n42), .Q(
        out_global_score[2]) );
  DFFNEGX1 \dp_ALU/global_score_reg[1]  ( .D(n73), .CLK(n42), .Q(
        out_global_score[1]) );
  DFFNEGX1 \dp_ALU/global_score_reg[0]  ( .D(n72), .CLK(n41), .Q(
        out_global_score[0]) );
  DFFNEGX1 \dp_ALU/win_reg  ( .D(\dp_ALU/n566 ), .CLK(n41), .Q(out_win) );
  DFFNEGX1 \dp_ALU/gameover_reg  ( .D(n82), .CLK(n41), .Q(out_gameover) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[0]  ( .D(\dp_ALU/n591 ), .CLK(n41), .Q(
        out_temp_cleared[0]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[1]  ( .D(\dp_ALU/n590 ), .CLK(n41), .Q(
        out_temp_cleared[1]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[2]  ( .D(\dp_ALU/n589 ), .CLK(n41), .Q(
        out_temp_cleared[2]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[3]  ( .D(\dp_ALU/n588 ), .CLK(n41), .Q(
        out_temp_cleared[3]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[4]  ( .D(\dp_ALU/n587 ), .CLK(n41), .Q(
        out_temp_cleared[4]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[5]  ( .D(\dp_ALU/n586 ), .CLK(n41), .Q(
        out_temp_cleared[5]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[6]  ( .D(\dp_ALU/n585 ), .CLK(n41), .Q(
        out_temp_cleared[6]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[7]  ( .D(\dp_ALU/n584 ), .CLK(n41), .Q(
        out_temp_cleared[7]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[8]  ( .D(\dp_ALU/n583 ), .CLK(n41), .Q(
        out_temp_cleared[8]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[9]  ( .D(\dp_ALU/n582 ), .CLK(n41), .Q(
        out_temp_cleared[9]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[10]  ( .D(\dp_ALU/n581 ), .CLK(n40), .Q(
        out_temp_cleared[10]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[11]  ( .D(\dp_ALU/n580 ), .CLK(n40), .Q(
        out_temp_cleared[11]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[12]  ( .D(\dp_ALU/n579 ), .CLK(n40), .Q(
        out_temp_cleared[12]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[13]  ( .D(\dp_ALU/n578 ), .CLK(n40), .Q(
        out_temp_cleared[13]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[14]  ( .D(\dp_ALU/n577 ), .CLK(n40), .Q(
        out_temp_cleared[14]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[15]  ( .D(\dp_ALU/n576 ), .CLK(n40), .Q(
        out_temp_cleared[15]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[16]  ( .D(\dp_ALU/n575 ), .CLK(n40), .Q(
        out_temp_cleared[16]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[17]  ( .D(\dp_ALU/n574 ), .CLK(n40), .Q(
        out_temp_cleared[17]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[18]  ( .D(\dp_ALU/n573 ), .CLK(n40), .Q(
        out_temp_cleared[18]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[19]  ( .D(\dp_ALU/n572 ), .CLK(n40), .Q(
        out_temp_cleared[19]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[20]  ( .D(\dp_ALU/n571 ), .CLK(n40), .Q(
        out_temp_cleared[20]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[21]  ( .D(\dp_ALU/n570 ), .CLK(n40), .Q(
        out_temp_cleared[21]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[22]  ( .D(\dp_ALU/n569 ), .CLK(n40), .Q(
        out_temp_cleared[22]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[23]  ( .D(\dp_ALU/n568 ), .CLK(n39), .Q(
        out_temp_cleared[23]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[24]  ( .D(\dp_ALU/n567 ), .CLK(n39), .Q(
        out_temp_cleared[24]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[0]  ( .D(\dp_ALU/n592 ), .CLK(n39), .Q(
        out_temp_decoded[0]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[1]  ( .D(\dp_ALU/n593 ), .CLK(n39), .Q(
        out_temp_decoded[1]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[2]  ( .D(\dp_ALU/n594 ), .CLK(n39), .Q(
        out_temp_decoded[2]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[3]  ( .D(\dp_ALU/n595 ), .CLK(n39), .Q(
        out_temp_decoded[3]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[4]  ( .D(\dp_ALU/n596 ), .CLK(n39), .Q(
        out_temp_decoded[4]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[5]  ( .D(\dp_ALU/n597 ), .CLK(n39), .Q(
        out_temp_decoded[5]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[6]  ( .D(\dp_ALU/n598 ), .CLK(n39), .Q(
        out_temp_decoded[6]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[7]  ( .D(\dp_ALU/n599 ), .CLK(n39), .Q(
        out_temp_decoded[7]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[8]  ( .D(\dp_ALU/n600 ), .CLK(n39), .Q(
        out_temp_decoded[8]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[9]  ( .D(\dp_ALU/n601 ), .CLK(n39), .Q(
        out_temp_decoded[9]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[10]  ( .D(\dp_ALU/n602 ), .CLK(n39), .Q(
        out_temp_decoded[10]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[11]  ( .D(\dp_ALU/n603 ), .CLK(n38), .Q(
        out_temp_decoded[11]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[12]  ( .D(\dp_ALU/n604 ), .CLK(n38), .Q(
        out_temp_decoded[12]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[13]  ( .D(\dp_ALU/n605 ), .CLK(n38), .Q(
        out_temp_decoded[13]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[14]  ( .D(\dp_ALU/n606 ), .CLK(n38), .Q(
        out_temp_decoded[14]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[15]  ( .D(\dp_ALU/n607 ), .CLK(n38), .Q(
        out_temp_decoded[15]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[16]  ( .D(\dp_ALU/n608 ), .CLK(n38), .Q(
        out_temp_decoded[16]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[17]  ( .D(\dp_ALU/n609 ), .CLK(n38), .Q(
        out_temp_decoded[17]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[18]  ( .D(\dp_ALU/n610 ), .CLK(n38), .Q(
        out_temp_decoded[18]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[19]  ( .D(\dp_ALU/n611 ), .CLK(n38), .Q(
        out_temp_decoded[19]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[20]  ( .D(\dp_ALU/n612 ), .CLK(n38), .Q(
        out_temp_decoded[20]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[21]  ( .D(\dp_ALU/n613 ), .CLK(n38), .Q(
        out_temp_decoded[21]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[22]  ( .D(\dp_ALU/n614 ), .CLK(n38), .Q(
        out_temp_decoded[22]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[23]  ( .D(\dp_ALU/n615 ), .CLK(n38), .Q(
        out_temp_decoded[23]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[24]  ( .D(\dp_ALU/n616 ), .CLK(n37), .Q(
        out_temp_decoded[24]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[0]  ( .D(\dp_ALU/n617 ), .CLK(n37), .Q(
        \dp_ALU/N1204 ) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[1]  ( .D(\dp_ALU/n618 ), .CLK(n37), .Q(
        out_temp_data_in[1]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[2]  ( .D(\dp_ALU/n619 ), .CLK(n37), .Q(
        out_temp_data_in[2]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[3]  ( .D(\dp_ALU/n620 ), .CLK(n37), .Q(
        out_temp_data_in[3]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[4]  ( .D(\dp_ALU/n621 ), .CLK(n37), .Q(
        out_temp_data_in[4]) );
  NAND3X1 \dp_RNG/U168  ( .A(n81), .B(n123), .C(\dp_RNG/temp_gen ), .Y(
        \dp_RNG/n51 ) );
  XNOR2X1 \dp_RNG/U167  ( .A(out_temp_mine_cnt[2]), .B(in_n_mines[2]), .Y(
        \dp_RNG/n135 ) );
  XNOR2X1 \dp_RNG/U166  ( .A(out_temp_mine_cnt[0]), .B(in_n_mines[0]), .Y(
        \dp_RNG/n136 ) );
  XNOR2X1 \dp_RNG/U165  ( .A(out_temp_mine_cnt[1]), .B(in_n_mines[1]), .Y(
        \dp_RNG/n137 ) );
  NAND3X1 \dp_RNG/U164  ( .A(\dp_RNG/n135 ), .B(\dp_RNG/n136 ), .C(
        \dp_RNG/n137 ), .Y(\dp_RNG/n134 ) );
  OR2X1 \dp_RNG/U163  ( .A(n19), .B(\dp_RNG/n134 ), .Y(\dp_RNG/n50 ) );
  NAND2X1 \dp_RNG/U162  ( .A(\dp_RNG/n50 ), .B(n81), .Y(\dp_RNG/n133 ) );
  NAND2X1 \dp_RNG/U161  ( .A(out_start), .B(n81), .Y(\dp_RNG/n132 ) );
  OAI21X1 \dp_RNG/U160  ( .A(n257), .B(\dp_RNG/n133 ), .C(\dp_RNG/n132 ), .Y(
        \dp_RNG/n171 ) );
  NAND2X1 \dp_RNG/U159  ( .A(n1), .B(n19), .Y(\dp_RNG/n126 ) );
  OAI22X1 \dp_RNG/U158  ( .A(n256), .B(\dp_RNG/n126 ), .C(out_temp_mine_cnt[0]), .D(n19), .Y(\dp_RNG/n170 ) );
  OAI21X1 \dp_RNG/U157  ( .A(out_temp_mine_cnt[0]), .B(n19), .C(\dp_RNG/n126 ), 
        .Y(\dp_RNG/n130 ) );
  NAND3X1 \dp_RNG/U156  ( .A(out_temp_mine_cnt[0]), .B(n232), .C(n20), .Y(
        \dp_RNG/n131 ) );
  OAI21X1 \dp_RNG/U155  ( .A(n51), .B(n232), .C(\dp_RNG/n131 ), .Y(
        \dp_RNG/n169 ) );
  AOI21X1 \dp_RNG/U154  ( .A(n20), .B(n232), .C(\dp_RNG/n130 ), .Y(
        \dp_RNG/n127 ) );
  NOR2X1 \dp_RNG/U153  ( .A(n232), .B(n19), .Y(\dp_RNG/n129 ) );
  NAND3X1 \dp_RNG/U152  ( .A(out_temp_mine_cnt[0]), .B(n231), .C(\dp_RNG/n129 ), .Y(\dp_RNG/n128 ) );
  OAI21X1 \dp_RNG/U151  ( .A(\dp_RNG/n127 ), .B(n231), .C(\dp_RNG/n128 ), .Y(
        \dp_RNG/n168 ) );
  NAND2X1 \dp_RNG/U150  ( .A(out_temp_index[1]), .B(n50), .Y(\dp_RNG/n125 ) );
  OAI21X1 \dp_RNG/U149  ( .A(n19), .B(n277), .C(\dp_RNG/n125 ), .Y(
        \dp_RNG/n167 ) );
  NAND2X1 \dp_RNG/U148  ( .A(out_temp_index[0]), .B(n50), .Y(\dp_RNG/n124 ) );
  OAI21X1 \dp_RNG/U147  ( .A(n19), .B(n276), .C(\dp_RNG/n124 ), .Y(
        \dp_RNG/n166 ) );
  NOR2X1 \dp_RNG/U146  ( .A(n278), .B(n19), .Y(\dp_RNG/n105 ) );
  AOI21X1 \dp_RNG/U145  ( .A(n50), .B(out_temp_index[2]), .C(\dp_RNG/n105 ), 
        .Y(\dp_RNG/n123 ) );
  NAND2X1 \dp_RNG/U144  ( .A(out_temp_index[3]), .B(n50), .Y(\dp_RNG/n122 ) );
  OAI21X1 \dp_RNG/U143  ( .A(n19), .B(n279), .C(\dp_RNG/n122 ), .Y(
        \dp_RNG/n165 ) );
  NAND2X1 \dp_RNG/U142  ( .A(out_temp_index[4]), .B(n50), .Y(\dp_RNG/n121 ) );
  OAI21X1 \dp_RNG/U141  ( .A(n19), .B(n280), .C(\dp_RNG/n121 ), .Y(
        \dp_RNG/n164 ) );
  NOR2X1 \dp_RNG/U140  ( .A(n85), .B(n19), .Y(\dp_RNG/n120 ) );
  NAND3X1 \dp_RNG/U139  ( .A(n277), .B(n278), .C(\dp_RNG/n120 ), .Y(
        \dp_RNG/n56 ) );
  NOR2X1 \dp_RNG/U138  ( .A(n89), .B(n90), .Y(\dp_RNG/n112 ) );
  OAI21X1 \dp_RNG/U137  ( .A(\dp_RNG/n56 ), .B(n88), .C(n1), .Y(\dp_RNG/n119 )
         );
  NAND2X1 \dp_RNG/U136  ( .A(out_mines[0]), .B(n64), .Y(\dp_RNG/n118 ) );
  OAI21X1 \dp_RNG/U135  ( .A(n64), .B(\dp_RNG/n51 ), .C(\dp_RNG/n118 ), .Y(
        \dp_RNG/n163 ) );
  NOR2X1 \dp_RNG/U134  ( .A(n19), .B(n276), .Y(\dp_RNG/n117 ) );
  NAND3X1 \dp_RNG/U133  ( .A(n277), .B(n278), .C(\dp_RNG/n117 ), .Y(
        \dp_RNG/n77 ) );
  OAI21X1 \dp_RNG/U132  ( .A(\dp_RNG/n77 ), .B(n88), .C(n1), .Y(\dp_RNG/n116 )
         );
  NAND2X1 \dp_RNG/U131  ( .A(out_mines[1]), .B(n68), .Y(\dp_RNG/n115 ) );
  OAI21X1 \dp_RNG/U130  ( .A(n68), .B(\dp_RNG/n51 ), .C(\dp_RNG/n115 ), .Y(
        \dp_RNG/n162 ) );
  NAND3X1 \dp_RNG/U129  ( .A(n20), .B(n278), .C(n84), .Y(\dp_RNG/n71 ) );
  NAND2X1 \dp_RNG/U128  ( .A(\dp_RNG/n112 ), .B(n276), .Y(\dp_RNG/n104 ) );
  OAI21X1 \dp_RNG/U127  ( .A(\dp_RNG/n71 ), .B(\dp_RNG/n104 ), .C(n1), .Y(
        \dp_RNG/n114 ) );
  NAND2X1 \dp_RNG/U126  ( .A(out_mines[2]), .B(n43), .Y(\dp_RNG/n113 ) );
  OAI21X1 \dp_RNG/U125  ( .A(n43), .B(\dp_RNG/n51 ), .C(\dp_RNG/n113 ), .Y(
        \dp_RNG/n161 ) );
  NAND2X1 \dp_RNG/U124  ( .A(\dp_RNG/n112 ), .B(n85), .Y(\dp_RNG/n101 ) );
  OAI21X1 \dp_RNG/U123  ( .A(\dp_RNG/n71 ), .B(\dp_RNG/n101 ), .C(n1), .Y(
        \dp_RNG/n111 ) );
  NAND2X1 \dp_RNG/U122  ( .A(out_mines[3]), .B(n44), .Y(\dp_RNG/n110 ) );
  OAI21X1 \dp_RNG/U121  ( .A(n44), .B(\dp_RNG/n51 ), .C(\dp_RNG/n110 ), .Y(
        \dp_RNG/n160 ) );
  NAND2X1 \dp_RNG/U120  ( .A(\dp_RNG/n105 ), .B(n277), .Y(\dp_RNG/n66 ) );
  OAI21X1 \dp_RNG/U119  ( .A(\dp_RNG/n66 ), .B(\dp_RNG/n104 ), .C(n1), .Y(
        \dp_RNG/n109 ) );
  NAND2X1 \dp_RNG/U118  ( .A(out_mines[4]), .B(n52), .Y(\dp_RNG/n108 ) );
  OAI21X1 \dp_RNG/U117  ( .A(n52), .B(\dp_RNG/n51 ), .C(\dp_RNG/n108 ), .Y(
        \dp_RNG/n159 ) );
  OAI21X1 \dp_RNG/U116  ( .A(\dp_RNG/n66 ), .B(\dp_RNG/n101 ), .C(n1), .Y(
        \dp_RNG/n107 ) );
  NAND2X1 \dp_RNG/U115  ( .A(out_mines[5]), .B(n53), .Y(\dp_RNG/n106 ) );
  OAI21X1 \dp_RNG/U114  ( .A(n53), .B(\dp_RNG/n51 ), .C(\dp_RNG/n106 ), .Y(
        \dp_RNG/n158 ) );
  NAND2X1 \dp_RNG/U113  ( .A(n84), .B(\dp_RNG/n105 ), .Y(\dp_RNG/n60 ) );
  OAI21X1 \dp_RNG/U112  ( .A(\dp_RNG/n60 ), .B(\dp_RNG/n104 ), .C(n1), .Y(
        \dp_RNG/n103 ) );
  NAND2X1 \dp_RNG/U111  ( .A(out_mines[6]), .B(n58), .Y(\dp_RNG/n102 ) );
  OAI21X1 \dp_RNG/U110  ( .A(n58), .B(\dp_RNG/n51 ), .C(\dp_RNG/n102 ), .Y(
        \dp_RNG/n157 ) );
  OAI21X1 \dp_RNG/U109  ( .A(\dp_RNG/n60 ), .B(\dp_RNG/n101 ), .C(n1), .Y(
        \dp_RNG/n100 ) );
  NAND2X1 \dp_RNG/U108  ( .A(out_mines[7]), .B(n59), .Y(\dp_RNG/n99 ) );
  OAI21X1 \dp_RNG/U107  ( .A(n59), .B(\dp_RNG/n51 ), .C(\dp_RNG/n99 ), .Y(
        \dp_RNG/n156 ) );
  NOR2X1 \dp_RNG/U106  ( .A(n279), .B(n90), .Y(\dp_RNG/n92 ) );
  OAI21X1 \dp_RNG/U105  ( .A(\dp_RNG/n56 ), .B(n86), .C(n1), .Y(\dp_RNG/n98 )
         );
  NAND2X1 \dp_RNG/U104  ( .A(out_mines[8]), .B(n65), .Y(\dp_RNG/n97 ) );
  OAI21X1 \dp_RNG/U103  ( .A(n65), .B(n19), .C(\dp_RNG/n97 ), .Y(\dp_RNG/n155 ) );
  OAI21X1 \dp_RNG/U102  ( .A(\dp_RNG/n77 ), .B(n86), .C(n1), .Y(\dp_RNG/n96 )
         );
  NAND2X1 \dp_RNG/U101  ( .A(out_mines[9]), .B(n69), .Y(\dp_RNG/n95 ) );
  OAI21X1 \dp_RNG/U100  ( .A(n69), .B(\dp_RNG/n51 ), .C(\dp_RNG/n95 ), .Y(
        \dp_RNG/n154 ) );
  NAND2X1 \dp_RNG/U99  ( .A(\dp_RNG/n92 ), .B(n276), .Y(\dp_RNG/n85 ) );
  OAI21X1 \dp_RNG/U98  ( .A(\dp_RNG/n71 ), .B(\dp_RNG/n85 ), .C(n1), .Y(
        \dp_RNG/n94 ) );
  NAND2X1 \dp_RNG/U97  ( .A(out_mines[10]), .B(n45), .Y(\dp_RNG/n93 ) );
  OAI21X1 \dp_RNG/U96  ( .A(n45), .B(n19), .C(\dp_RNG/n93 ), .Y(\dp_RNG/n153 )
         );
  NAND2X1 \dp_RNG/U95  ( .A(\dp_RNG/n92 ), .B(n85), .Y(\dp_RNG/n82 ) );
  OAI21X1 \dp_RNG/U94  ( .A(\dp_RNG/n71 ), .B(\dp_RNG/n82 ), .C(n1), .Y(
        \dp_RNG/n91 ) );
  NAND2X1 \dp_RNG/U93  ( .A(out_mines[11]), .B(n46), .Y(\dp_RNG/n90 ) );
  OAI21X1 \dp_RNG/U92  ( .A(n46), .B(\dp_RNG/n51 ), .C(\dp_RNG/n90 ), .Y(
        \dp_RNG/n152 ) );
  OAI21X1 \dp_RNG/U91  ( .A(\dp_RNG/n66 ), .B(\dp_RNG/n85 ), .C(n1), .Y(
        \dp_RNG/n89 ) );
  NAND2X1 \dp_RNG/U90  ( .A(out_mines[12]), .B(n54), .Y(\dp_RNG/n88 ) );
  OAI21X1 \dp_RNG/U89  ( .A(n54), .B(n19), .C(\dp_RNG/n88 ), .Y(\dp_RNG/n151 )
         );
  OAI21X1 \dp_RNG/U88  ( .A(\dp_RNG/n66 ), .B(\dp_RNG/n82 ), .C(n1), .Y(
        \dp_RNG/n87 ) );
  NAND2X1 \dp_RNG/U87  ( .A(out_mines[13]), .B(n55), .Y(\dp_RNG/n86 ) );
  OAI21X1 \dp_RNG/U86  ( .A(n55), .B(n19), .C(\dp_RNG/n86 ), .Y(\dp_RNG/n150 )
         );
  OAI21X1 \dp_RNG/U85  ( .A(\dp_RNG/n60 ), .B(\dp_RNG/n85 ), .C(n1), .Y(
        \dp_RNG/n84 ) );
  NAND2X1 \dp_RNG/U84  ( .A(out_mines[14]), .B(n60), .Y(\dp_RNG/n83 ) );
  OAI21X1 \dp_RNG/U83  ( .A(n60), .B(n19), .C(\dp_RNG/n83 ), .Y(\dp_RNG/n149 )
         );
  OAI21X1 \dp_RNG/U82  ( .A(\dp_RNG/n60 ), .B(\dp_RNG/n82 ), .C(n1), .Y(
        \dp_RNG/n81 ) );
  NAND2X1 \dp_RNG/U81  ( .A(out_mines[15]), .B(n61), .Y(\dp_RNG/n80 ) );
  OAI21X1 \dp_RNG/U80  ( .A(n61), .B(n19), .C(\dp_RNG/n80 ), .Y(\dp_RNG/n148 )
         );
  NOR2X1 \dp_RNG/U79  ( .A(n280), .B(n89), .Y(\dp_RNG/n72 ) );
  OAI21X1 \dp_RNG/U78  ( .A(\dp_RNG/n56 ), .B(n87), .C(n1), .Y(\dp_RNG/n79 )
         );
  NAND2X1 \dp_RNG/U77  ( .A(out_mines[16]), .B(n66), .Y(\dp_RNG/n78 ) );
  OAI21X1 \dp_RNG/U76  ( .A(n66), .B(n19), .C(\dp_RNG/n78 ), .Y(\dp_RNG/n147 )
         );
  OAI21X1 \dp_RNG/U75  ( .A(n87), .B(\dp_RNG/n77 ), .C(n1), .Y(\dp_RNG/n76 )
         );
  NAND2X1 \dp_RNG/U74  ( .A(out_mines[17]), .B(n70), .Y(\dp_RNG/n75 ) );
  OAI21X1 \dp_RNG/U73  ( .A(n70), .B(n19), .C(\dp_RNG/n75 ), .Y(\dp_RNG/n146 )
         );
  NAND2X1 \dp_RNG/U72  ( .A(\dp_RNG/n72 ), .B(n276), .Y(\dp_RNG/n63 ) );
  OAI21X1 \dp_RNG/U71  ( .A(\dp_RNG/n63 ), .B(\dp_RNG/n71 ), .C(n1), .Y(
        \dp_RNG/n74 ) );
  NAND2X1 \dp_RNG/U70  ( .A(out_mines[18]), .B(n47), .Y(\dp_RNG/n73 ) );
  OAI21X1 \dp_RNG/U69  ( .A(n47), .B(n19), .C(\dp_RNG/n73 ), .Y(\dp_RNG/n145 )
         );
  NAND2X1 \dp_RNG/U68  ( .A(n85), .B(\dp_RNG/n72 ), .Y(\dp_RNG/n59 ) );
  OAI21X1 \dp_RNG/U67  ( .A(\dp_RNG/n59 ), .B(\dp_RNG/n71 ), .C(n1), .Y(
        \dp_RNG/n70 ) );
  NAND2X1 \dp_RNG/U66  ( .A(out_mines[19]), .B(n48), .Y(\dp_RNG/n69 ) );
  OAI21X1 \dp_RNG/U65  ( .A(n48), .B(n19), .C(\dp_RNG/n69 ), .Y(\dp_RNG/n144 )
         );
  OAI21X1 \dp_RNG/U64  ( .A(\dp_RNG/n63 ), .B(\dp_RNG/n66 ), .C(n1), .Y(
        \dp_RNG/n68 ) );
  NAND2X1 \dp_RNG/U63  ( .A(out_mines[20]), .B(n56), .Y(\dp_RNG/n67 ) );
  OAI21X1 \dp_RNG/U62  ( .A(n56), .B(n19), .C(\dp_RNG/n67 ), .Y(\dp_RNG/n143 )
         );
  OAI21X1 \dp_RNG/U61  ( .A(\dp_RNG/n59 ), .B(\dp_RNG/n66 ), .C(n1), .Y(
        \dp_RNG/n65 ) );
  NAND2X1 \dp_RNG/U60  ( .A(out_mines[21]), .B(n57), .Y(\dp_RNG/n64 ) );
  OAI21X1 \dp_RNG/U59  ( .A(n57), .B(n19), .C(\dp_RNG/n64 ), .Y(\dp_RNG/n142 )
         );
  OAI21X1 \dp_RNG/U58  ( .A(\dp_RNG/n60 ), .B(\dp_RNG/n63 ), .C(n1), .Y(
        \dp_RNG/n62 ) );
  NAND2X1 \dp_RNG/U57  ( .A(out_mines[22]), .B(n62), .Y(\dp_RNG/n61 ) );
  OAI21X1 \dp_RNG/U56  ( .A(n62), .B(n19), .C(\dp_RNG/n61 ), .Y(\dp_RNG/n141 )
         );
  OAI21X1 \dp_RNG/U55  ( .A(\dp_RNG/n59 ), .B(\dp_RNG/n60 ), .C(n1), .Y(
        \dp_RNG/n58 ) );
  NAND2X1 \dp_RNG/U54  ( .A(out_mines[23]), .B(n63), .Y(\dp_RNG/n57 ) );
  OAI21X1 \dp_RNG/U53  ( .A(n63), .B(n19), .C(\dp_RNG/n57 ), .Y(\dp_RNG/n140 )
         );
  OR2X1 \dp_RNG/U52  ( .A(n279), .B(\dp_RNG/n56 ), .Y(\dp_RNG/n54 ) );
  OAI21X1 \dp_RNG/U51  ( .A(n280), .B(\dp_RNG/n54 ), .C(n1), .Y(\dp_RNG/n53 )
         );
  NAND2X1 \dp_RNG/U50  ( .A(out_mines[24]), .B(n67), .Y(\dp_RNG/n52 ) );
  OAI21X1 \dp_RNG/U49  ( .A(n67), .B(\dp_RNG/n51 ), .C(\dp_RNG/n52 ), .Y(
        \dp_RNG/n139 ) );
  NAND3X1 \dp_RNG/U48  ( .A(out_start), .B(n81), .C(out_place_done), .Y(
        \dp_RNG/n49 ) );
  NAND2X1 \dp_RNG/U47  ( .A(\dp_RNG/n49 ), .B(\dp_RNG/n50 ), .Y(\dp_RNG/n138 )
         );
  DFFNEGX1 \dp_RNG/place_done_reg  ( .D(\dp_RNG/n138 ), .CLK(n15), .Q(
        out_place_done) );
  DFFNEGX1 \dp_RNG/mines_reg[2]  ( .D(\dp_RNG/n161 ), .CLK(n37), .Q(
        out_mines[2]) );
  DFFNEGX1 \dp_RNG/mines_reg[3]  ( .D(\dp_RNG/n160 ), .CLK(n37), .Q(
        out_mines[3]) );
  DFFNEGX1 \dp_RNG/mines_reg[10]  ( .D(\dp_RNG/n153 ), .CLK(n37), .Q(
        out_mines[10]) );
  DFFNEGX1 \dp_RNG/mines_reg[11]  ( .D(\dp_RNG/n152 ), .CLK(n37), .Q(
        out_mines[11]) );
  DFFNEGX1 \dp_RNG/mines_reg[18]  ( .D(\dp_RNG/n145 ), .CLK(n37), .Q(
        out_mines[18]) );
  DFFNEGX1 \dp_RNG/mines_reg[19]  ( .D(\dp_RNG/n144 ), .CLK(n37), .Q(
        out_mines[19]) );
  DFFNEGX1 \dp_RNG/temp_mine_cnt_reg[2]  ( .D(\dp_RNG/n168 ), .CLK(n37), .Q(
        out_temp_mine_cnt[2]) );
  DFFNEGX1 \dp_RNG/temp_mine_cnt_reg[1]  ( .D(\dp_RNG/n169 ), .CLK(n36), .Q(
        out_temp_mine_cnt[1]) );
  DFFNEGX1 \dp_RNG/mines_reg[24]  ( .D(\dp_RNG/n139 ), .CLK(n36), .Q(
        out_mines[24]) );
  DFFNEGX1 \dp_RNG/mines_reg[17]  ( .D(\dp_RNG/n146 ), .CLK(n36), .Q(
        out_mines[17]) );
  DFFNEGX1 \dp_RNG/mines_reg[16]  ( .D(\dp_RNG/n147 ), .CLK(n36), .Q(
        out_mines[16]) );
  DFFNEGX1 \dp_RNG/mines_reg[20]  ( .D(\dp_RNG/n143 ), .CLK(n36), .Q(
        out_mines[20]) );
  DFFNEGX1 \dp_RNG/mines_reg[22]  ( .D(\dp_RNG/n141 ), .CLK(n36), .Q(
        out_mines[22]) );
  DFFNEGX1 \dp_RNG/mines_reg[21]  ( .D(\dp_RNG/n142 ), .CLK(n36), .Q(
        out_mines[21]) );
  DFFNEGX1 \dp_RNG/mines_reg[23]  ( .D(\dp_RNG/n140 ), .CLK(n36), .Q(
        out_mines[23]) );
  DFFNEGX1 \dp_RNG/mines_reg[9]  ( .D(\dp_RNG/n154 ), .CLK(n36), .Q(
        out_mines[9]) );
  DFFNEGX1 \dp_RNG/mines_reg[8]  ( .D(\dp_RNG/n155 ), .CLK(n36), .Q(
        out_mines[8]) );
  DFFNEGX1 \dp_RNG/mines_reg[12]  ( .D(\dp_RNG/n151 ), .CLK(n36), .Q(
        out_mines[12]) );
  DFFNEGX1 \dp_RNG/mines_reg[14]  ( .D(\dp_RNG/n149 ), .CLK(n36), .Q(
        out_mines[14]) );
  DFFNEGX1 \dp_RNG/mines_reg[13]  ( .D(\dp_RNG/n150 ), .CLK(n36), .Q(
        out_mines[13]) );
  DFFNEGX1 \dp_RNG/mines_reg[15]  ( .D(\dp_RNG/n148 ), .CLK(n35), .Q(
        out_mines[15]) );
  DFFNEGX1 \dp_RNG/mines_reg[1]  ( .D(\dp_RNG/n162 ), .CLK(n35), .Q(
        out_mines[1]) );
  DFFNEGX1 \dp_RNG/mines_reg[0]  ( .D(\dp_RNG/n163 ), .CLK(n35), .Q(
        out_mines[0]) );
  DFFNEGX1 \dp_RNG/mines_reg[4]  ( .D(\dp_RNG/n159 ), .CLK(n35), .Q(
        out_mines[4]) );
  DFFNEGX1 \dp_RNG/mines_reg[6]  ( .D(\dp_RNG/n157 ), .CLK(n35), .Q(
        out_mines[6]) );
  DFFNEGX1 \dp_RNG/mines_reg[5]  ( .D(\dp_RNG/n158 ), .CLK(n35), .Q(
        out_mines[5]) );
  DFFNEGX1 \dp_RNG/mines_reg[7]  ( .D(\dp_RNG/n156 ), .CLK(n35), .Q(
        out_mines[7]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[3]  ( .D(\dp_RNG/n165 ), .CLK(n35), .Q(
        out_temp_index[3]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[2]  ( .D(n49), .CLK(n35), .Q(
        out_temp_index[2]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[1]  ( .D(\dp_RNG/n167 ), .CLK(n35), .Q(
        out_temp_index[1]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[0]  ( .D(\dp_RNG/n166 ), .CLK(n35), .Q(
        out_temp_index[0]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[4]  ( .D(\dp_RNG/n164 ), .CLK(n35), .Q(
        out_temp_index[4]) );
  DFFNEGX1 \dp_RNG/temp_mine_cnt_reg[0]  ( .D(\dp_RNG/n170 ), .CLK(n35), .Q(
        out_temp_mine_cnt[0]) );
  DFFNEGX1 \dp_RNG/temp_gen_reg  ( .D(\dp_RNG/n171 ), .CLK(n15), .Q(
        \dp_RNG/temp_gen ) );
  HAX1 \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/U4  ( .A(n94), .B(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n3 ), .YC(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n2 ), .YS(
        \dp_RNG/rem_49/u_div/SumTmp[0][4] ) );
  HAX1 \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/U5  ( .A(n93), .B(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n4 ), .YC(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n3 ), .YS(
        \dp_RNG/rem_49/u_div/SumTmp[0][3] ) );
  HAX1 \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/U4  ( .A(n99), .B(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n3 ), .YC(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n2 ), .YS(
        \dp_RNG/rem_49/u_div/SumTmp[1][4] ) );
  HAX1 \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/U5  ( .A(n96), .B(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n4 ), .YC(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n3 ), .YS(
        \dp_RNG/rem_49/u_div/SumTmp[1][3] ) );
  HAX1 \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/U4  ( .A(n104), .B(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n3 ), .YC(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n2 ), .YS(
        \dp_RNG/rem_49/u_div/SumTmp[2][4] ) );
  HAX1 \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/U5  ( .A(n102), .B(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n4 ), .YC(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n3 ), .YS(
        \dp_RNG/rem_49/u_div/SumTmp[2][3] ) );
  HAX1 \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/U4  ( .A(n109), .B(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n3 ), .YC(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n2 ), .YS(
        \dp_RNG/rem_49/u_div/SumTmp[3][4] ) );
  HAX1 \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/U5  ( .A(n108), .B(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n4 ), .YC(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n3 ), .YS(
        \dp_RNG/rem_49/u_div/SumTmp[3][3] ) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_0_0  ( .B(\dp_RNG/N27 ), .A(n118), 
        .S(\dp_RNG/rem_49/quotient [0]), .Y(n276) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_0_1  ( .B(n91), .A(
        \dp_RNG/rem_49/u_div/SumTmp[0][1] ), .S(\dp_RNG/rem_49/quotient [0]), 
        .Y(n277) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_0_2  ( .B(n92), .A(
        \dp_RNG/rem_49/u_div/SumTmp[0][2] ), .S(\dp_RNG/rem_49/quotient [0]), 
        .Y(n278) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_0_3  ( .B(n93), .A(
        \dp_RNG/rem_49/u_div/SumTmp[0][3] ), .S(\dp_RNG/rem_49/quotient [0]), 
        .Y(n279) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_0_4  ( .B(n94), .A(
        \dp_RNG/rem_49/u_div/SumTmp[0][4] ), .S(\dp_RNG/rem_49/quotient [0]), 
        .Y(n280) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_1_0  ( .B(\dp_RNG/N28 ), .A(n116), 
        .S(\dp_RNG/rem_49/quotient [1]), .Y(n281) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_1_1  ( .B(n97), .A(
        \dp_RNG/rem_49/u_div/SumTmp[1][1] ), .S(\dp_RNG/rem_49/quotient [1]), 
        .Y(n282) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_1_2  ( .B(n98), .A(
        \dp_RNG/rem_49/u_div/SumTmp[1][2] ), .S(\dp_RNG/rem_49/quotient [1]), 
        .Y(n283) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_1_3  ( .B(n96), .A(
        \dp_RNG/rem_49/u_div/SumTmp[1][3] ), .S(\dp_RNG/rem_49/quotient [1]), 
        .Y(n284) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_1_4  ( .B(n99), .A(
        \dp_RNG/rem_49/u_div/SumTmp[1][4] ), .S(\dp_RNG/rem_49/quotient [1]), 
        .Y(n285) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_2_0  ( .B(\dp_RNG/N29 ), .A(n114), 
        .S(\dp_RNG/rem_49/quotient [2]), .Y(n286) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_2_1  ( .B(n103), .A(
        \dp_RNG/rem_49/u_div/SumTmp[2][1] ), .S(\dp_RNG/rem_49/quotient [2]), 
        .Y(n287) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_2_2  ( .B(n101), .A(
        \dp_RNG/rem_49/u_div/SumTmp[2][2] ), .S(\dp_RNG/rem_49/quotient [2]), 
        .Y(n288) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_2_3  ( .B(n102), .A(
        \dp_RNG/rem_49/u_div/SumTmp[2][3] ), .S(\dp_RNG/rem_49/quotient [2]), 
        .Y(n289) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_2_4  ( .B(n104), .A(
        \dp_RNG/rem_49/u_div/SumTmp[2][4] ), .S(\dp_RNG/rem_49/quotient [2]), 
        .Y(n290) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_3_0  ( .B(\dp_RNG/N30 ), .A(n113), 
        .S(\dp_RNG/rem_49/quotient [3]), .Y(n291) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_3_1  ( .B(n106), .A(
        \dp_RNG/rem_49/u_div/SumTmp[3][1] ), .S(\dp_RNG/rem_49/quotient [3]), 
        .Y(n292) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_3_2  ( .B(n107), .A(
        \dp_RNG/rem_49/u_div/SumTmp[3][2] ), .S(\dp_RNG/rem_49/quotient [3]), 
        .Y(n293) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_3_3  ( .B(n108), .A(
        \dp_RNG/rem_49/u_div/SumTmp[3][3] ), .S(\dp_RNG/rem_49/quotient [3]), 
        .Y(n294) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_3_4  ( .B(n109), .A(
        \dp_RNG/rem_49/u_div/SumTmp[3][4] ), .S(\dp_RNG/rem_49/quotient [3]), 
        .Y(n295) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_4_0  ( .B(\dp_RNG/N31 ), .A(n112), 
        .S(\dp_RNG/rem_49/quotient [4]), .Y(n296) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_4_1  ( .B(\dp_RNG/N32 ), .A(
        \dp_RNG/rem_49/u_div/SumTmp[4][1] ), .S(\dp_RNG/rem_49/quotient [4]), 
        .Y(n297) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_4_2  ( .B(\dp_RNG/N33 ), .A(
        \dp_RNG/rem_49/u_div/SumTmp[4][2] ), .S(\dp_RNG/rem_49/quotient [4]), 
        .Y(n298) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_4_3  ( .B(\dp_RNG/N34 ), .A(
        \dp_RNG/rem_49/u_div/SumTmp[4][3] ), .S(\dp_RNG/rem_49/quotient [4]), 
        .Y(n299) );
  MUX2X1 \dp_RNG/rem_49/u_div/u_mx_PartRem_0_4_4  ( .B(\dp_RNG/N35 ), .A(
        \dp_RNG/rem_49/u_div/SumTmp[4][4] ), .S(\dp_RNG/rem_49/quotient [4]), 
        .Y(n300) );
  HAX1 \dp_RNG/dp_cluster_0/mult_49/U11  ( .A(
        \dp_RNG/dp_cluster_0/mult_49/n27 ), .B(
        \dp_RNG/dp_cluster_0/mult_49/n23 ), .YC(
        \dp_RNG/dp_cluster_0/mult_49/n13 ), .YS(
        \dp_RNG/dp_cluster_0/mult_49/n14 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_49/U10  ( .A(
        \dp_RNG/dp_cluster_0/mult_49/n26 ), .B(
        \dp_RNG/dp_cluster_0/mult_49/n18 ), .C(
        \dp_RNG/dp_cluster_0/mult_49/n22 ), .YC(
        \dp_RNG/dp_cluster_0/mult_49/n11 ), .YS(
        \dp_RNG/dp_cluster_0/mult_49/n12 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_49/U9  ( .A(\dp_RNG/dp_cluster_0/mult_49/n25 ), .B(\dp_RNG/dp_cluster_0/mult_49/n17 ), .C(\dp_RNG/dp_cluster_0/mult_49/n21 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_49/n9 ), .YS(
        \dp_RNG/dp_cluster_0/mult_49/n10 ) );
  HAX1 \dp_RNG/dp_cluster_0/mult_49/U8  ( .A(\dp_RNG/dp_cluster_0/mult_49/n20 ), .B(\dp_RNG/dp_cluster_0/mult_49/n16 ), .YC(\dp_RNG/dp_cluster_0/mult_49/n7 ), 
        .YS(\dp_RNG/dp_cluster_0/mult_49/n8 ) );
  HAX1 \dp_RNG/dp_cluster_0/mult_49/U7  ( .A(\dp_RNG/dp_cluster_0/mult_49/n24 ), .B(\dp_RNG/dp_cluster_0/mult_49/n28 ), .YC(\dp_RNG/dp_cluster_0/mult_49/n6 ), 
        .YS(\dp_RNG/dp_cluster_0/N20 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_49/U6  ( .A(\dp_RNG/dp_cluster_0/mult_49/n19 ), .B(\dp_RNG/dp_cluster_0/mult_49/n6 ), .C(\dp_RNG/dp_cluster_0/mult_49/n14 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_49/n5 ), .YS(\dp_RNG/dp_cluster_0/N21 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_49/U5  ( .A(\dp_RNG/dp_cluster_0/mult_49/n13 ), .B(\dp_RNG/dp_cluster_0/mult_49/n12 ), .C(\dp_RNG/dp_cluster_0/mult_49/n5 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_49/n4 ), .YS(\dp_RNG/dp_cluster_0/N22 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_49/U4  ( .A(\dp_RNG/dp_cluster_0/mult_49/n11 ), .B(\dp_RNG/dp_cluster_0/mult_49/n10 ), .C(\dp_RNG/dp_cluster_0/mult_49/n4 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_49/n3 ), .YS(\dp_RNG/dp_cluster_0/N23 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_49/U3  ( .A(\dp_RNG/dp_cluster_0/mult_49/n8 ), 
        .B(\dp_RNG/dp_cluster_0/mult_49/n9 ), .C(
        \dp_RNG/dp_cluster_0/mult_49/n3 ), .YC(
        \dp_RNG/dp_cluster_0/mult_49/n2 ), .YS(\dp_RNG/dp_cluster_0/N24 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_49/U2  ( .A(\dp_RNG/dp_cluster_0/mult_49/n15 ), .B(\dp_RNG/dp_cluster_0/mult_49/n7 ), .C(\dp_RNG/dp_cluster_0/mult_49/n2 ), 
        .YC(\dp_RNG/dp_cluster_0/N26 ), .YS(\dp_RNG/dp_cluster_0/N25 ) );
  FAX1 \dp_RNG/dp_cluster_0/add_49/U1_1  ( .A(\dp_RNG/dp_cluster_0/N20 ), .B(
        in_incr[1]), .C(n6), .YC(\dp_RNG/dp_cluster_0/add_49/carry [2]), .YS(
        \dp_RNG/N28 ) );
  FAX1 \dp_RNG/dp_cluster_0/add_49/U1_2  ( .A(\dp_RNG/dp_cluster_0/N21 ), .B(
        in_incr[2]), .C(\dp_RNG/dp_cluster_0/add_49/carry [2]), .YC(
        \dp_RNG/dp_cluster_0/add_49/carry [3]), .YS(\dp_RNG/N29 ) );
  HAX1 \dp_ALU/add_113/U1_1_1  ( .A(out_global_score[1]), .B(
        out_global_score[0]), .YC(\dp_ALU/add_113/carry [2]), .YS(
        \dp_ALU/N1932 ) );
  HAX1 \dp_ALU/add_113/U1_1_2  ( .A(out_global_score[2]), .B(
        \dp_ALU/add_113/carry [2]), .YC(\dp_ALU/add_113/carry [3]), .YS(
        \dp_ALU/N1933 ) );
  HAX1 \dp_ALU/add_113/U1_1_3  ( .A(out_global_score[3]), .B(
        \dp_ALU/add_113/carry [3]), .YC(\dp_ALU/add_113/carry [4]), .YS(
        \dp_ALU/N1934 ) );
  HAX1 \dp_ALU/add_113/U1_1_4  ( .A(out_global_score[4]), .B(
        \dp_ALU/add_113/carry [4]), .YC(\dp_ALU/add_113/carry [5]), .YS(
        \dp_ALU/N1935 ) );
  HAX1 \dp_ALU/add_113/U1_1_5  ( .A(out_global_score[5]), .B(
        \dp_ALU/add_113/carry [5]), .YC(\dp_ALU/add_113/carry [6]), .YS(
        \dp_ALU/N1936 ) );
  HAX1 \dp_ALU/add_113/U1_1_6  ( .A(out_global_score[6]), .B(
        \dp_ALU/add_113/carry [6]), .YC(\dp_ALU/add_113/carry [7]), .YS(
        \dp_ALU/N1937 ) );
  AND2X2 U1 ( .A(n81), .B(\dp_RNG/n132 ), .Y(n1) );
  AND2X2 U2 ( .A(n9), .B(\dp_RNG/dp_cluster_0/N25 ), .Y(n2) );
  AND2X2 U3 ( .A(out_temp_data_in[4]), .B(n271), .Y(n3) );
  AND2X2 U4 ( .A(out_temp_data_in[1]), .B(out_temp_data_in[2]), .Y(n4) );
  AND2X2 U5 ( .A(\dp_ALU/r495/carry[2] ), .B(out_temp_data_in[2]), .Y(n5) );
  AND2X2 U6 ( .A(in_incr[0]), .B(\dp_RNG/dp_cluster_0/N19 ), .Y(n6) );
  AND2X2 U7 ( .A(\dp_RNG/dp_cluster_0/add_49/carry [3]), .B(
        \dp_RNG/dp_cluster_0/N22 ), .Y(n7) );
  AND2X2 U8 ( .A(n7), .B(\dp_RNG/dp_cluster_0/N23 ), .Y(n8) );
  AND2X2 U9 ( .A(n8), .B(\dp_RNG/dp_cluster_0/N24 ), .Y(n9) );
  XNOR2X1 U10 ( .A(out_temp_data_in[4]), .B(n275), .Y(n10) );
  XOR2X1 U11 ( .A(out_temp_data_in[4]), .B(\dp_ALU/r497/carry[4] ), .Y(n11) );
  XOR2X1 U12 ( .A(out_temp_data_in[4]), .B(\dp_ALU/r494/carry[4] ), .Y(n12) );
  XOR2X1 U13 ( .A(out_temp_data_in[4]), .B(\dp_ALU/r495/carry[4] ), .Y(n13) );
  INVX1 U14 ( .A(in_clkb), .Y(n14) );
  INVX2 U15 ( .A(n14), .Y(n15) );
  BUFX2 U16 ( .A(\dp_ALU/n351 ), .Y(n27) );
  BUFX2 U17 ( .A(\dp_ALU/n351 ), .Y(n26) );
  BUFX2 U18 ( .A(\dp_ALU/n352 ), .Y(n28) );
  BUFX2 U19 ( .A(\dp_ALU/n352 ), .Y(n29) );
  INVX2 U20 ( .A(\dp_ALU/n254 ), .Y(n80) );
  BUFX2 U21 ( .A(\dp_ALU/n354 ), .Y(n30) );
  BUFX2 U22 ( .A(\dp_ALU/n354 ), .Y(n31) );
  INVX2 U23 ( .A(out_temp_data_in[2]), .Y(n221) );
  INVX2 U24 ( .A(n24), .Y(n23) );
  INVX2 U25 ( .A(out_temp_data_in[1]), .Y(n219) );
  BUFX2 U26 ( .A(n34), .Y(n41) );
  BUFX2 U27 ( .A(n34), .Y(n42) );
  BUFX2 U28 ( .A(n32), .Y(n35) );
  BUFX2 U29 ( .A(n32), .Y(n36) );
  BUFX2 U30 ( .A(n32), .Y(n37) );
  BUFX2 U31 ( .A(n33), .Y(n38) );
  BUFX2 U32 ( .A(n33), .Y(n39) );
  BUFX2 U33 ( .A(n33), .Y(n40) );
  BUFX2 U34 ( .A(n21), .Y(n20) );
  BUFX2 U35 ( .A(n25), .Y(n24) );
  INVX2 U36 ( .A(n17), .Y(n81) );
  INVX2 U37 ( .A(\dp_ALU/N1204 ), .Y(n22) );
  INVX2 U38 ( .A(n21), .Y(n19) );
  BUFX2 U39 ( .A(in_restart), .Y(n17) );
  INVX2 U40 ( .A(\dp_ALU/n209 ), .Y(n25) );
  INVX2 U41 ( .A(\dp_RNG/n51 ), .Y(n21) );
  INVX2 U42 ( .A(out_temp_data_in[3]), .Y(n18) );
  BUFX2 U43 ( .A(in_clka), .Y(n32) );
  BUFX2 U44 ( .A(in_clka), .Y(n33) );
  BUFX2 U45 ( .A(in_clka), .Y(n34) );
  OR2X1 U46 ( .A(out_temp_data_in[3]), .B(n4), .Y(\dp_ALU/r494/carry[4] ) );
  XNOR2X1 U47 ( .A(n4), .B(out_temp_data_in[3]), .Y(\dp_ALU/N1139 ) );
  OR2X1 U48 ( .A(out_temp_data_in[1]), .B(\dp_ALU/N1204 ), .Y(
        \dp_ALU/r495/carry[2] ) );
  XNOR2X1 U49 ( .A(\dp_ALU/N1204 ), .B(out_temp_data_in[1]), .Y(\dp_ALU/N1169 ) );
  OR2X1 U50 ( .A(out_temp_data_in[3]), .B(n5), .Y(\dp_ALU/r495/carry[4] ) );
  XNOR2X1 U51 ( .A(n5), .B(out_temp_data_in[3]), .Y(\dp_ALU/N1171 ) );
  OR2X1 U52 ( .A(out_temp_data_in[3]), .B(out_temp_data_in[2]), .Y(
        \dp_ALU/r497/carry[4] ) );
  XNOR2X1 U53 ( .A(out_temp_data_in[2]), .B(out_temp_data_in[3]), .Y(
        \dp_ALU/N1207 ) );
  XOR2X1 U54 ( .A(in_incr[0]), .B(\dp_RNG/dp_cluster_0/N19 ), .Y(\dp_RNG/N27 )
         );
  XOR2X1 U55 ( .A(\dp_RNG/dp_cluster_0/add_49/carry [3]), .B(
        \dp_RNG/dp_cluster_0/N22 ), .Y(\dp_RNG/N30 ) );
  XOR2X1 U56 ( .A(n7), .B(\dp_RNG/dp_cluster_0/N23 ), .Y(\dp_RNG/N31 ) );
  XOR2X1 U57 ( .A(n8), .B(\dp_RNG/dp_cluster_0/N24 ), .Y(\dp_RNG/N32 ) );
  XOR2X1 U58 ( .A(n9), .B(\dp_RNG/dp_cluster_0/N25 ), .Y(\dp_RNG/N33 ) );
  XOR2X1 U59 ( .A(n2), .B(\dp_RNG/dp_cluster_0/N26 ), .Y(\dp_RNG/N34 ) );
  NAND2X1 U60 ( .A(n2), .B(\dp_RNG/dp_cluster_0/N26 ), .Y(n16) );
  INVX2 U61 ( .A(n16), .Y(\dp_RNG/N35 ) );
  XOR2X1 U62 ( .A(out_temp_data_in[1]), .B(out_temp_data_in[2]), .Y(
        \dp_ALU/N1138 ) );
  XOR2X1 U63 ( .A(\dp_ALU/r495/carry[2] ), .B(out_temp_data_in[2]), .Y(
        \dp_ALU/N1170 ) );
  INVX2 U64 ( .A(\dp_RNG/n114 ), .Y(n43) );
  INVX2 U65 ( .A(\dp_RNG/n111 ), .Y(n44) );
  INVX2 U66 ( .A(\dp_RNG/n94 ), .Y(n45) );
  INVX2 U67 ( .A(\dp_RNG/n91 ), .Y(n46) );
  INVX2 U68 ( .A(\dp_RNG/n74 ), .Y(n47) );
  INVX2 U69 ( .A(\dp_RNG/n70 ), .Y(n48) );
  INVX2 U70 ( .A(\dp_RNG/n123 ), .Y(n49) );
  INVX2 U71 ( .A(\dp_RNG/n126 ), .Y(n50) );
  INVX2 U72 ( .A(\dp_RNG/n130 ), .Y(n51) );
  INVX2 U73 ( .A(\dp_RNG/n109 ), .Y(n52) );
  INVX2 U74 ( .A(\dp_RNG/n107 ), .Y(n53) );
  INVX2 U75 ( .A(\dp_RNG/n89 ), .Y(n54) );
  INVX2 U76 ( .A(\dp_RNG/n87 ), .Y(n55) );
  INVX2 U77 ( .A(\dp_RNG/n68 ), .Y(n56) );
  INVX2 U78 ( .A(\dp_RNG/n65 ), .Y(n57) );
  INVX2 U79 ( .A(\dp_RNG/n103 ), .Y(n58) );
  INVX2 U80 ( .A(\dp_RNG/n100 ), .Y(n59) );
  INVX2 U81 ( .A(\dp_RNG/n84 ), .Y(n60) );
  INVX2 U82 ( .A(\dp_RNG/n81 ), .Y(n61) );
  INVX2 U83 ( .A(\dp_RNG/n62 ), .Y(n62) );
  INVX2 U84 ( .A(\dp_RNG/n58 ), .Y(n63) );
  INVX2 U85 ( .A(\dp_RNG/n119 ), .Y(n64) );
  INVX2 U86 ( .A(\dp_RNG/n98 ), .Y(n65) );
  INVX2 U87 ( .A(\dp_RNG/n79 ), .Y(n66) );
  INVX2 U88 ( .A(\dp_RNG/n53 ), .Y(n67) );
  INVX2 U89 ( .A(\dp_RNG/n116 ), .Y(n68) );
  INVX2 U90 ( .A(\dp_RNG/n96 ), .Y(n69) );
  INVX2 U91 ( .A(\dp_RNG/n76 ), .Y(n70) );
  INVX2 U92 ( .A(\dp_ALU/n386 ), .Y(n71) );
  INVX2 U93 ( .A(\dp_ALU/n253 ), .Y(n72) );
  INVX2 U94 ( .A(\dp_ALU/n252 ), .Y(n73) );
  INVX2 U95 ( .A(\dp_ALU/n251 ), .Y(n74) );
  INVX2 U96 ( .A(\dp_ALU/n250 ), .Y(n75) );
  INVX2 U97 ( .A(\dp_ALU/n249 ), .Y(n76) );
  INVX2 U98 ( .A(\dp_ALU/n248 ), .Y(n77) );
  INVX2 U99 ( .A(\dp_ALU/n247 ), .Y(n78) );
  INVX2 U100 ( .A(\dp_ALU/n245 ), .Y(n79) );
  INVX2 U101 ( .A(\dp_ALU/n257 ), .Y(n82) );
  INVX2 U102 ( .A(\dp_ALU/n208 ), .Y(n83) );
  INVX2 U103 ( .A(n277), .Y(n84) );
  INVX2 U104 ( .A(n276), .Y(n85) );
  INVX2 U105 ( .A(\dp_RNG/n92 ), .Y(n86) );
  INVX2 U106 ( .A(\dp_RNG/n72 ), .Y(n87) );
  INVX2 U107 ( .A(\dp_RNG/n112 ), .Y(n88) );
  INVX2 U108 ( .A(n279), .Y(n89) );
  INVX2 U109 ( .A(n280), .Y(n90) );
  INVX2 U110 ( .A(n281), .Y(n91) );
  INVX2 U111 ( .A(n282), .Y(n92) );
  INVX2 U112 ( .A(n283), .Y(n93) );
  INVX2 U113 ( .A(n284), .Y(n94) );
  INVX2 U114 ( .A(n285), .Y(n95) );
  INVX2 U115 ( .A(n288), .Y(n96) );
  INVX2 U116 ( .A(n286), .Y(n97) );
  INVX2 U117 ( .A(n287), .Y(n98) );
  INVX2 U118 ( .A(n289), .Y(n99) );
  INVX2 U119 ( .A(n290), .Y(n100) );
  INVX2 U120 ( .A(n292), .Y(n101) );
  INVX2 U121 ( .A(n293), .Y(n102) );
  INVX2 U122 ( .A(n291), .Y(n103) );
  INVX2 U123 ( .A(n294), .Y(n104) );
  INVX2 U124 ( .A(n295), .Y(n105) );
  INVX2 U125 ( .A(n296), .Y(n106) );
  INVX2 U126 ( .A(n297), .Y(n107) );
  INVX2 U127 ( .A(n298), .Y(n108) );
  INVX2 U128 ( .A(n299), .Y(n109) );
  INVX2 U129 ( .A(n300), .Y(n110) );
  INVX2 U130 ( .A(\dp_RNG/N33 ), .Y(n111) );
  INVX2 U131 ( .A(\dp_RNG/N31 ), .Y(n112) );
  INVX2 U132 ( .A(\dp_RNG/N30 ), .Y(n113) );
  INVX2 U133 ( .A(\dp_RNG/N29 ), .Y(n114) );
  INVX2 U134 ( .A(in_mult[2]), .Y(n115) );
  INVX2 U135 ( .A(\dp_RNG/N28 ), .Y(n116) );
  INVX2 U136 ( .A(in_mult[1]), .Y(n117) );
  INVX2 U137 ( .A(\dp_RNG/N27 ), .Y(n118) );
  INVX2 U138 ( .A(in_mult[0]), .Y(n119) );
  INVX2 U139 ( .A(\main/n34 ), .Y(n120) );
  INVX2 U140 ( .A(out_alu), .Y(n121) );
  INVX2 U141 ( .A(out_decode), .Y(n122) );
  INVX2 U142 ( .A(out_start), .Y(n123) );
  INVX2 U143 ( .A(\main/n32 ), .Y(n124) );
  INVX2 U144 ( .A(\main/next_state [0]), .Y(n125) );
  INVX2 U145 ( .A(\main/n41 ), .Y(n126) );
  INVX2 U146 ( .A(out_state_main[1]), .Y(n127) );
  INVX2 U147 ( .A(\main/n38 ), .Y(n128) );
  INVX2 U148 ( .A(\main/n55 ), .Y(n129) );
  INVX2 U149 ( .A(\main/n35 ), .Y(n130) );
  INVX2 U150 ( .A(\main/n20 ), .Y(n131) );
  INVX2 U151 ( .A(\main/next_state [1]), .Y(n132) );
  INVX2 U152 ( .A(\main/next_state [2]), .Y(n133) );
  INVX2 U153 ( .A(out_state_main[3]), .Y(n134) );
  INVX2 U154 ( .A(\main/next_state [3]), .Y(n135) );
  INVX2 U155 ( .A(out_state_main[0]), .Y(n136) );
  INVX2 U156 ( .A(out_alu_done), .Y(n137) );
  INVX2 U157 ( .A(out_global_score[0]), .Y(n138) );
  INVX2 U158 ( .A(out_temp_cleared[0]), .Y(n139) );
  INVX2 U159 ( .A(out_temp_cleared[1]), .Y(n140) );
  INVX2 U160 ( .A(out_temp_cleared[2]), .Y(n141) );
  INVX2 U161 ( .A(out_temp_cleared[3]), .Y(n142) );
  INVX2 U162 ( .A(out_temp_cleared[4]), .Y(n143) );
  INVX2 U163 ( .A(out_temp_cleared[5]), .Y(n144) );
  INVX2 U164 ( .A(out_temp_cleared[6]), .Y(n145) );
  INVX2 U165 ( .A(out_temp_cleared[7]), .Y(n146) );
  INVX2 U166 ( .A(out_temp_cleared[8]), .Y(n147) );
  INVX2 U167 ( .A(out_temp_cleared[9]), .Y(n148) );
  INVX2 U168 ( .A(out_temp_cleared[10]), .Y(n149) );
  INVX2 U169 ( .A(out_temp_cleared[11]), .Y(n150) );
  INVX2 U170 ( .A(out_temp_cleared[12]), .Y(n151) );
  INVX2 U171 ( .A(out_temp_cleared[13]), .Y(n152) );
  INVX2 U172 ( .A(out_temp_cleared[14]), .Y(n153) );
  INVX2 U173 ( .A(out_temp_cleared[15]), .Y(n154) );
  INVX2 U174 ( .A(out_temp_cleared[16]), .Y(n155) );
  INVX2 U175 ( .A(out_temp_cleared[17]), .Y(n156) );
  INVX2 U176 ( .A(out_temp_cleared[18]), .Y(n157) );
  INVX2 U177 ( .A(out_temp_cleared[19]), .Y(n158) );
  INVX2 U178 ( .A(out_temp_cleared[20]), .Y(n159) );
  INVX2 U179 ( .A(out_temp_cleared[21]), .Y(n160) );
  INVX2 U180 ( .A(out_temp_cleared[22]), .Y(n161) );
  INVX2 U181 ( .A(out_temp_cleared[23]), .Y(n162) );
  INVX2 U182 ( .A(out_temp_cleared[24]), .Y(n163) );
  INVX2 U183 ( .A(\dp_ALU/n225 ), .Y(n164) );
  INVX2 U184 ( .A(\dp_ALU/n220 ), .Y(n165) );
  INVX2 U185 ( .A(\dp_ALU/n232 ), .Y(n166) );
  INVX2 U186 ( .A(\dp_ALU/n226 ), .Y(n167) );
  INVX2 U187 ( .A(out_temp_decoded[0]), .Y(n168) );
  INVX2 U188 ( .A(\dp_ALU/n238 ), .Y(n169) );
  INVX2 U189 ( .A(out_temp_decoded[1]), .Y(n170) );
  INVX2 U190 ( .A(out_temp_decoded[2]), .Y(n171) );
  INVX2 U191 ( .A(out_temp_decoded[3]), .Y(n172) );
  INVX2 U192 ( .A(\dp_ALU/n288 ), .Y(n173) );
  INVX2 U193 ( .A(out_temp_decoded[4]), .Y(n174) );
  INVX2 U194 ( .A(out_temp_decoded[5]), .Y(n175) );
  INVX2 U195 ( .A(out_temp_decoded[6]), .Y(n176) );
  INVX2 U196 ( .A(\dp_ALU/n281 ), .Y(n177) );
  INVX2 U197 ( .A(out_temp_decoded[7]), .Y(n178) );
  INVX2 U198 ( .A(out_temp_decoded[8]), .Y(n179) );
  INVX2 U199 ( .A(\dp_ALU/n262 ), .Y(n180) );
  INVX2 U200 ( .A(out_temp_decoded[9]), .Y(n181) );
  INVX2 U201 ( .A(out_temp_decoded[10]), .Y(n182) );
  INVX2 U202 ( .A(out_temp_decoded[11]), .Y(n183) );
  INVX2 U203 ( .A(out_temp_decoded[12]), .Y(n184) );
  INVX2 U204 ( .A(out_temp_decoded[13]), .Y(n185) );
  INVX2 U205 ( .A(out_temp_decoded[14]), .Y(n186) );
  INVX2 U206 ( .A(out_temp_decoded[15]), .Y(n187) );
  INVX2 U207 ( .A(out_temp_decoded[16]), .Y(n188) );
  INVX2 U208 ( .A(out_temp_decoded[17]), .Y(n189) );
  INVX2 U209 ( .A(out_temp_decoded[18]), .Y(n190) );
  INVX2 U210 ( .A(\dp_ALU/n268 ), .Y(n191) );
  INVX2 U211 ( .A(out_temp_decoded[19]), .Y(n192) );
  INVX2 U212 ( .A(out_temp_decoded[20]), .Y(n193) );
  INVX2 U213 ( .A(out_temp_decoded[21]), .Y(n194) );
  INVX2 U214 ( .A(\dp_ALU/n263 ), .Y(n195) );
  INVX2 U215 ( .A(out_temp_decoded[22]), .Y(n196) );
  INVX2 U216 ( .A(out_temp_decoded[23]), .Y(n197) );
  INVX2 U217 ( .A(out_temp_decoded[24]), .Y(n198) );
  INVX2 U218 ( .A(n261), .Y(n199) );
  INVX2 U219 ( .A(n272), .Y(n200) );
  INVX2 U220 ( .A(\dp_ALU/N1242 ), .Y(n201) );
  INVX2 U221 ( .A(\dp_ALU/N1243 ), .Y(n202) );
  INVX2 U222 ( .A(\dp_ALU/N1324 ), .Y(n203) );
  INVX2 U223 ( .A(\dp_ALU/n396 ), .Y(n204) );
  INVX2 U224 ( .A(\dp_ALU/N1416 ), .Y(n205) );
  INVX2 U225 ( .A(\dp_ALU/n415 ), .Y(n206) );
  INVX2 U226 ( .A(\dp_ALU/n436 ), .Y(n207) );
  INVX2 U227 ( .A(\dp_ALU/N1371 ), .Y(n208) );
  INVX2 U228 ( .A(\dp_ALU/N1459 ), .Y(n209) );
  INVX2 U229 ( .A(\dp_ALU/n426 ), .Y(n210) );
  INVX2 U230 ( .A(\dp_ALU/n418 ), .Y(n211) );
  INVX2 U231 ( .A(\dp_ALU/n409 ), .Y(n212) );
  INVX2 U232 ( .A(\dp_ALU/n392 ), .Y(n213) );
  INVX2 U233 ( .A(\dp_ALU/N1171 ), .Y(n214) );
  INVX2 U234 ( .A(\dp_ALU/N1170 ), .Y(n215) );
  INVX2 U235 ( .A(\dp_ALU/N1169 ), .Y(n216) );
  INVX2 U236 ( .A(\dp_ALU/N1139 ), .Y(n217) );
  INVX2 U237 ( .A(\dp_ALU/N1138 ), .Y(n218) );
  INVX2 U238 ( .A(\dp_ALU/N1207 ), .Y(n220) );
  INVX2 U239 ( .A(\dp_ALU/n425 ), .Y(n222) );
  INVX2 U240 ( .A(\dp_ALU/n411 ), .Y(n223) );
  INVX2 U241 ( .A(\dp_ALU/n410 ), .Y(n224) );
  INVX2 U242 ( .A(out_temp_data_in[4]), .Y(n225) );
  INVX2 U243 ( .A(out_mines[3]), .Y(n226) );
  INVX2 U244 ( .A(out_mines[10]), .Y(n227) );
  INVX2 U245 ( .A(out_mines[11]), .Y(n228) );
  INVX2 U246 ( .A(out_mines[18]), .Y(n229) );
  INVX2 U247 ( .A(out_mines[19]), .Y(n230) );
  INVX2 U248 ( .A(out_temp_mine_cnt[2]), .Y(n231) );
  INVX2 U249 ( .A(out_temp_mine_cnt[1]), .Y(n232) );
  INVX2 U250 ( .A(out_mines[24]), .Y(n233) );
  INVX2 U251 ( .A(out_mines[17]), .Y(n234) );
  INVX2 U252 ( .A(out_mines[20]), .Y(n235) );
  INVX2 U253 ( .A(out_mines[22]), .Y(n236) );
  INVX2 U254 ( .A(out_mines[21]), .Y(n237) );
  INVX2 U255 ( .A(out_mines[23]), .Y(n238) );
  INVX2 U256 ( .A(out_mines[9]), .Y(n239) );
  INVX2 U257 ( .A(out_mines[8]), .Y(n240) );
  INVX2 U258 ( .A(out_mines[12]), .Y(n241) );
  INVX2 U259 ( .A(out_mines[14]), .Y(n242) );
  INVX2 U260 ( .A(out_mines[13]), .Y(n243) );
  INVX2 U261 ( .A(out_mines[15]), .Y(n244) );
  INVX2 U262 ( .A(out_mines[1]), .Y(n245) );
  INVX2 U263 ( .A(out_mines[0]), .Y(n246) );
  INVX2 U264 ( .A(out_mines[4]), .Y(n247) );
  INVX2 U265 ( .A(out_mines[6]), .Y(n248) );
  INVX2 U266 ( .A(out_mines[5]), .Y(n249) );
  INVX2 U267 ( .A(out_mines[7]), .Y(n250) );
  INVX2 U268 ( .A(out_temp_index[3]), .Y(n251) );
  INVX2 U269 ( .A(out_temp_index[2]), .Y(n252) );
  INVX2 U270 ( .A(out_temp_index[1]), .Y(n253) );
  INVX2 U271 ( .A(out_temp_index[0]), .Y(n254) );
  INVX2 U272 ( .A(out_temp_index[4]), .Y(n255) );
  INVX2 U273 ( .A(out_temp_mine_cnt[0]), .Y(n256) );
  INVX2 U274 ( .A(\dp_RNG/temp_gen ), .Y(n257) );
  XOR2X1 U275 ( .A(\dp_ALU/add_113/carry [7]), .B(out_global_score[7]), .Y(
        \dp_ALU/N1938 ) );
  NOR2X1 U276 ( .A(\dp_ALU/N1204 ), .B(out_temp_data_in[1]), .Y(n261) );
  NAND3X1 U277 ( .A(n18), .B(n225), .C(n221), .Y(n264) );
  NOR2X1 U278 ( .A(n199), .B(n264), .Y(\dp_ALU/N1037 ) );
  NAND3X1 U279 ( .A(n221), .B(n225), .C(out_temp_data_in[3]), .Y(n268) );
  OR2X1 U280 ( .A(n219), .B(\dp_ALU/N1204 ), .Y(n265) );
  NOR2X1 U281 ( .A(n268), .B(n265), .Y(\dp_ALU/N1047 ) );
  NAND2X1 U282 ( .A(out_temp_data_in[1]), .B(\dp_ALU/N1204 ), .Y(n266) );
  NOR2X1 U283 ( .A(n268), .B(n266), .Y(\dp_ALU/N1048 ) );
  NAND3X1 U284 ( .A(out_temp_data_in[3]), .B(n225), .C(out_temp_data_in[2]), 
        .Y(n258) );
  NOR2X1 U285 ( .A(n199), .B(n258), .Y(\dp_ALU/N1049 ) );
  NAND2X1 U286 ( .A(\dp_ALU/N1204 ), .B(n219), .Y(n269) );
  NOR2X1 U287 ( .A(n269), .B(n258), .Y(\dp_ALU/N1050 ) );
  NOR2X1 U288 ( .A(n265), .B(n258), .Y(\dp_ALU/N1051 ) );
  NOR2X1 U289 ( .A(n266), .B(n258), .Y(\dp_ALU/N1052 ) );
  NAND3X1 U290 ( .A(n221), .B(n18), .C(out_temp_data_in[4]), .Y(n259) );
  NOR2X1 U291 ( .A(n199), .B(n259), .Y(\dp_ALU/N1053 ) );
  NOR2X1 U292 ( .A(n269), .B(n259), .Y(\dp_ALU/N1054 ) );
  NOR2X1 U293 ( .A(n265), .B(n259), .Y(\dp_ALU/N1055 ) );
  NOR2X1 U294 ( .A(n266), .B(n259), .Y(\dp_ALU/N1056 ) );
  NOR2X1 U295 ( .A(n269), .B(n264), .Y(\dp_ALU/N1038 ) );
  NAND3X1 U296 ( .A(out_temp_data_in[2]), .B(n18), .C(out_temp_data_in[4]), 
        .Y(n260) );
  NOR2X1 U297 ( .A(n199), .B(n260), .Y(\dp_ALU/N1057 ) );
  NOR2X1 U298 ( .A(n269), .B(n260), .Y(\dp_ALU/N1058 ) );
  NOR2X1 U299 ( .A(n265), .B(n260), .Y(\dp_ALU/N1059 ) );
  NOR2X1 U300 ( .A(n266), .B(n260), .Y(\dp_ALU/N1060 ) );
  NAND2X1 U301 ( .A(out_temp_data_in[3]), .B(n221), .Y(n263) );
  NAND2X1 U302 ( .A(out_temp_data_in[4]), .B(n261), .Y(n262) );
  NOR2X1 U303 ( .A(n263), .B(n262), .Y(\dp_ALU/N1061 ) );
  NOR2X1 U304 ( .A(n265), .B(n264), .Y(\dp_ALU/N1039 ) );
  NOR2X1 U305 ( .A(n266), .B(n264), .Y(\dp_ALU/N1040 ) );
  NAND3X1 U306 ( .A(n18), .B(n225), .C(out_temp_data_in[2]), .Y(n267) );
  NOR2X1 U307 ( .A(n199), .B(n267), .Y(\dp_ALU/N1041 ) );
  NOR2X1 U308 ( .A(n269), .B(n267), .Y(\dp_ALU/N1042 ) );
  NOR2X1 U309 ( .A(n267), .B(n265), .Y(\dp_ALU/N1043 ) );
  NOR2X1 U310 ( .A(n267), .B(n266), .Y(\dp_ALU/N1044 ) );
  NOR2X1 U311 ( .A(n268), .B(n199), .Y(\dp_ALU/N1045 ) );
  NOR2X1 U312 ( .A(n269), .B(n268), .Y(\dp_ALU/N1046 ) );
  OAI21X1 U313 ( .A(\dp_ALU/N1204 ), .B(out_temp_data_in[1]), .C(
        out_temp_data_in[3]), .Y(n270) );
  OAI21X1 U314 ( .A(n18), .B(n221), .C(n270), .Y(n271) );
  NOR2X1 U315 ( .A(out_temp_data_in[1]), .B(\dp_ALU/N1204 ), .Y(n273) );
  AOI21X1 U316 ( .A(\dp_ALU/N1204 ), .B(out_temp_data_in[1]), .C(n273), .Y(
        n272) );
  NAND2X1 U317 ( .A(n273), .B(n221), .Y(n274) );
  OAI21X1 U318 ( .A(n273), .B(n221), .C(n274), .Y(\dp_ALU/N1242 ) );
  XNOR2X1 U319 ( .A(out_temp_data_in[3]), .B(n274), .Y(\dp_ALU/N1243 ) );
  NOR2X1 U320 ( .A(out_temp_data_in[3]), .B(n274), .Y(n275) );
  NOR2X1 U321 ( .A(n255), .B(n115), .Y(\dp_RNG/dp_cluster_0/mult_49/n15 ) );
  NOR2X1 U322 ( .A(n251), .B(n115), .Y(\dp_RNG/dp_cluster_0/mult_49/n16 ) );
  NOR2X1 U323 ( .A(n252), .B(n115), .Y(\dp_RNG/dp_cluster_0/mult_49/n17 ) );
  NOR2X1 U324 ( .A(n253), .B(n115), .Y(\dp_RNG/dp_cluster_0/mult_49/n18 ) );
  NOR2X1 U325 ( .A(n254), .B(n115), .Y(\dp_RNG/dp_cluster_0/mult_49/n19 ) );
  NOR2X1 U326 ( .A(n255), .B(n117), .Y(\dp_RNG/dp_cluster_0/mult_49/n20 ) );
  NOR2X1 U327 ( .A(n251), .B(n117), .Y(\dp_RNG/dp_cluster_0/mult_49/n21 ) );
  NOR2X1 U328 ( .A(n252), .B(n117), .Y(\dp_RNG/dp_cluster_0/mult_49/n22 ) );
  NOR2X1 U329 ( .A(n253), .B(n117), .Y(\dp_RNG/dp_cluster_0/mult_49/n23 ) );
  NOR2X1 U330 ( .A(n254), .B(n117), .Y(\dp_RNG/dp_cluster_0/mult_49/n24 ) );
  NOR2X1 U331 ( .A(n119), .B(n255), .Y(\dp_RNG/dp_cluster_0/mult_49/n25 ) );
  NOR2X1 U332 ( .A(n119), .B(n251), .Y(\dp_RNG/dp_cluster_0/mult_49/n26 ) );
  NOR2X1 U333 ( .A(n119), .B(n252), .Y(\dp_RNG/dp_cluster_0/mult_49/n27 ) );
  NOR2X1 U334 ( .A(n119), .B(n253), .Y(\dp_RNG/dp_cluster_0/mult_49/n28 ) );
  NOR2X1 U335 ( .A(n119), .B(n254), .Y(\dp_RNG/dp_cluster_0/N19 ) );
  XNOR2X1 U336 ( .A(\dp_RNG/N35 ), .B(n301), .Y(
        \dp_RNG/rem_49/u_div/SumTmp[4][4] ) );
  XOR2X1 U337 ( .A(n302), .B(\dp_RNG/N34 ), .Y(
        \dp_RNG/rem_49/u_div/SumTmp[4][3] ) );
  XNOR2X1 U338 ( .A(n111), .B(n303), .Y(\dp_RNG/rem_49/u_div/SumTmp[4][2] ) );
  XNOR2X1 U339 ( .A(\dp_RNG/N32 ), .B(\dp_RNG/N31 ), .Y(
        \dp_RNG/rem_49/u_div/SumTmp[4][1] ) );
  NOR2X1 U340 ( .A(n16), .B(n301), .Y(\dp_RNG/rem_49/quotient [4]) );
  NAND2X1 U341 ( .A(\dp_RNG/N34 ), .B(n302), .Y(n301) );
  NAND2X1 U342 ( .A(n303), .B(n111), .Y(n302) );
  NOR2X1 U343 ( .A(\dp_RNG/N31 ), .B(\dp_RNG/N32 ), .Y(n303) );
  NAND2X1 U344 ( .A(n304), .B(n297), .Y(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n4 ) );
  XNOR2X1 U345 ( .A(n297), .B(n304), .Y(\dp_RNG/rem_49/u_div/SumTmp[3][2] ) );
  NOR2X1 U346 ( .A(n106), .B(\dp_RNG/N30 ), .Y(n304) );
  XNOR2X1 U347 ( .A(n106), .B(\dp_RNG/N30 ), .Y(
        \dp_RNG/rem_49/u_div/SumTmp[3][1] ) );
  OR2X1 U348 ( .A(n110), .B(\dp_RNG/rem_49/u_div/u_add_PartRem_0_3/n2 ), .Y(
        \dp_RNG/rem_49/quotient [3]) );
  NAND2X1 U349 ( .A(n305), .B(n292), .Y(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n4 ) );
  XNOR2X1 U350 ( .A(n292), .B(n305), .Y(\dp_RNG/rem_49/u_div/SumTmp[2][2] ) );
  NOR2X1 U351 ( .A(n103), .B(\dp_RNG/N29 ), .Y(n305) );
  XNOR2X1 U352 ( .A(n103), .B(\dp_RNG/N29 ), .Y(
        \dp_RNG/rem_49/u_div/SumTmp[2][1] ) );
  OR2X1 U353 ( .A(n105), .B(\dp_RNG/rem_49/u_div/u_add_PartRem_0_2/n2 ), .Y(
        \dp_RNG/rem_49/quotient [2]) );
  NAND2X1 U354 ( .A(n306), .B(n287), .Y(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n4 ) );
  XNOR2X1 U355 ( .A(n287), .B(n306), .Y(\dp_RNG/rem_49/u_div/SumTmp[1][2] ) );
  NOR2X1 U356 ( .A(n97), .B(\dp_RNG/N28 ), .Y(n306) );
  XNOR2X1 U357 ( .A(n97), .B(\dp_RNG/N28 ), .Y(
        \dp_RNG/rem_49/u_div/SumTmp[1][1] ) );
  OR2X1 U358 ( .A(n100), .B(\dp_RNG/rem_49/u_div/u_add_PartRem_0_1/n2 ), .Y(
        \dp_RNG/rem_49/quotient [1]) );
  NAND2X1 U359 ( .A(n307), .B(n282), .Y(
        \dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n4 ) );
  XNOR2X1 U360 ( .A(n282), .B(n307), .Y(\dp_RNG/rem_49/u_div/SumTmp[0][2] ) );
  NOR2X1 U361 ( .A(n91), .B(\dp_RNG/N27 ), .Y(n307) );
  XNOR2X1 U362 ( .A(n91), .B(\dp_RNG/N27 ), .Y(
        \dp_RNG/rem_49/u_div/SumTmp[0][1] ) );
  OR2X1 U363 ( .A(n95), .B(\dp_RNG/rem_49/u_div/u_add_PartRem_0_0/n2 ), .Y(
        \dp_RNG/rem_49/quotient [0]) );
endmodule

