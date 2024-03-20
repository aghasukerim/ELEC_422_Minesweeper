/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Mar 19 20:32:00 2024
/////////////////////////////////////////////////////////////


module top_module ( in_clka, in_clkb, in_restart, in_mult, in_incr, in_n_mines, 
        out_state_main, in_place, in_data_in, in_data, out_start, 
        out_place_done, out_mines, out_load, out_temp_data_in, out_decode, 
        out_alu, out_alu_done, out_gameover, out_win, out_global_score, 
        out_n_nearby, out_temp_decoded, out_temp_cleared, out_display, 
        out_display_done, out_temp_index, out_temp_mine_cnt );
  input [4:0] in_mult;
  input [4:0] in_incr;
  input [4:0] in_n_mines;
  output [3:0] out_state_main;
  input [4:0] in_data;
  output [24:0] out_mines;
  output [4:0] out_temp_data_in;
  output [31:0] out_global_score;
  output [1:0] out_n_nearby;
  output [24:0] out_temp_decoded;
  output [24:0] out_temp_cleared;
  output [4:0] out_temp_index;
  output [4:0] out_temp_mine_cnt;
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
         \dp_ALU/n672 , \dp_ALU/n671 , \dp_ALU/n670 , \dp_ALU/n669 ,
         \dp_ALU/n668 , \dp_ALU/n667 , \dp_ALU/n666 , \dp_ALU/n665 ,
         \dp_ALU/n664 , \dp_ALU/n663 , \dp_ALU/n662 , \dp_ALU/n661 ,
         \dp_ALU/n660 , \dp_ALU/n659 , \dp_ALU/n658 , \dp_ALU/n657 ,
         \dp_ALU/n656 , \dp_ALU/n655 , \dp_ALU/n654 , \dp_ALU/n653 ,
         \dp_ALU/n652 , \dp_ALU/n651 , \dp_ALU/n650 , \dp_ALU/n649 ,
         \dp_ALU/n648 , \dp_ALU/n647 , \dp_ALU/n646 , \dp_ALU/n645 ,
         \dp_ALU/n644 , \dp_ALU/n643 , \dp_ALU/n642 , \dp_ALU/n641 ,
         \dp_ALU/n640 , \dp_ALU/n639 , \dp_ALU/n638 , \dp_ALU/n637 ,
         \dp_ALU/n636 , \dp_ALU/n635 , \dp_ALU/n634 , \dp_ALU/n633 ,
         \dp_ALU/n632 , \dp_ALU/n631 , \dp_ALU/n630 , \dp_ALU/n629 ,
         \dp_ALU/n628 , \dp_ALU/n627 , \dp_ALU/n626 , \dp_ALU/n625 ,
         \dp_ALU/n624 , \dp_ALU/n623 , \dp_ALU/n622 , \dp_ALU/n621 ,
         \dp_ALU/n620 , \dp_ALU/n619 , \dp_ALU/n618 , \dp_ALU/n617 ,
         \dp_ALU/n616 , \dp_ALU/n615 , \dp_ALU/n614 , \dp_ALU/n613 ,
         \dp_ALU/n612 , \dp_ALU/n611 , \dp_ALU/n610 , \dp_ALU/n609 ,
         \dp_ALU/n608 , \dp_ALU/n607 , \dp_ALU/n606 , \dp_ALU/n605 ,
         \dp_ALU/n604 , \dp_ALU/n603 , \dp_ALU/n602 , \dp_ALU/n601 ,
         \dp_ALU/n600 , \dp_ALU/n599 , \dp_ALU/n598 , \dp_ALU/n597 ,
         \dp_ALU/n596 , \dp_ALU/n595 , \dp_ALU/n594 , \dp_ALU/n593 ,
         \dp_ALU/n592 , \dp_ALU/n591 , \dp_ALU/n590 , \dp_ALU/n589 ,
         \dp_ALU/n588 , \dp_ALU/n587 , \dp_ALU/n586 , \dp_ALU/n585 ,
         \dp_ALU/n584 , \dp_ALU/n583 , \dp_ALU/n582 , \dp_ALU/n581 ,
         \dp_ALU/n580 , \dp_ALU/n579 , \dp_ALU/n578 , \dp_ALU/n577 ,
         \dp_ALU/n576 , \dp_ALU/n575 , \dp_ALU/n574 , \dp_ALU/n573 ,
         \dp_ALU/n572 , \dp_ALU/n571 , \dp_ALU/n570 , \dp_ALU/n569 ,
         \dp_ALU/n568 , \dp_ALU/n567 , \dp_ALU/n566 , \dp_ALU/n565 ,
         \dp_ALU/n564 , \dp_ALU/n563 , \dp_ALU/n562 , \dp_ALU/n561 ,
         \dp_ALU/n560 , \dp_ALU/n559 , \dp_ALU/n558 , \dp_ALU/n557 ,
         \dp_ALU/n556 , \dp_ALU/n555 , \dp_ALU/n554 , \dp_ALU/n553 ,
         \dp_ALU/n552 , \dp_ALU/n551 , \dp_ALU/n550 , \dp_ALU/n549 ,
         \dp_ALU/n548 , \dp_ALU/n547 , \dp_ALU/n546 , \dp_ALU/n545 ,
         \dp_ALU/n544 , \dp_ALU/n543 , \dp_ALU/n542 , \dp_ALU/n541 ,
         \dp_ALU/n540 , \dp_ALU/n539 , \dp_ALU/n538 , \dp_ALU/n537 ,
         \dp_ALU/n536 , \dp_ALU/n535 , \dp_ALU/n534 , \dp_ALU/n533 ,
         \dp_ALU/n532 , \dp_ALU/n531 , \dp_ALU/n530 , \dp_ALU/n529 ,
         \dp_ALU/n528 , \dp_ALU/n527 , \dp_ALU/n526 , \dp_ALU/n525 ,
         \dp_ALU/n524 , \dp_ALU/n523 , \dp_ALU/n522 , \dp_ALU/n521 ,
         \dp_ALU/n520 , \dp_ALU/n519 , \dp_ALU/n518 , \dp_ALU/n517 ,
         \dp_ALU/n516 , \dp_ALU/n515 , \dp_ALU/n514 , \dp_ALU/n513 ,
         \dp_ALU/n512 , \dp_ALU/n511 , \dp_ALU/n510 , \dp_ALU/n509 ,
         \dp_ALU/n508 , \dp_ALU/n507 , \dp_ALU/n506 , \dp_ALU/n505 ,
         \dp_ALU/n504 , \dp_ALU/n503 , \dp_ALU/n502 , \dp_ALU/n501 ,
         \dp_ALU/n500 , \dp_ALU/n499 , \dp_ALU/n498 , \dp_ALU/n497 ,
         \dp_ALU/n496 , \dp_ALU/n495 , \dp_ALU/n494 , \dp_ALU/n493 ,
         \dp_ALU/n492 , \dp_ALU/n491 , \dp_ALU/n490 , \dp_ALU/n489 ,
         \dp_ALU/n488 , \dp_ALU/n487 , \dp_ALU/n486 , \dp_ALU/n485 ,
         \dp_ALU/n484 , \dp_ALU/n483 , \dp_ALU/n482 , \dp_ALU/n481 ,
         \dp_ALU/n480 , \dp_ALU/n479 , \dp_ALU/n478 , \dp_ALU/n477 ,
         \dp_ALU/n476 , \dp_ALU/n475 , \dp_ALU/n474 , \dp_ALU/n473 ,
         \dp_ALU/n472 , \dp_ALU/n471 , \dp_ALU/n470 , \dp_ALU/n469 ,
         \dp_ALU/n468 , \dp_ALU/n467 , \dp_ALU/n466 , \dp_ALU/n465 ,
         \dp_ALU/n464 , \dp_ALU/n463 , \dp_ALU/n462 , \dp_ALU/n461 ,
         \dp_ALU/n460 , \dp_ALU/n459 , \dp_ALU/n458 , \dp_ALU/n457 ,
         \dp_ALU/n456 , \dp_ALU/n455 , \dp_ALU/n454 , \dp_ALU/n453 ,
         \dp_ALU/n452 , \dp_ALU/n451 , \dp_ALU/n450 , \dp_ALU/n449 ,
         \dp_ALU/n448 , \dp_ALU/n447 , \dp_ALU/n446 , \dp_ALU/n445 ,
         \dp_ALU/n444 , \dp_ALU/n443 , \dp_ALU/n442 , \dp_ALU/n441 ,
         \dp_ALU/n440 , \dp_ALU/n439 , \dp_ALU/n438 , \dp_ALU/n437 ,
         \dp_ALU/n436 , \dp_ALU/n435 , \dp_ALU/n434 , \dp_ALU/n433 ,
         \dp_ALU/n432 , \dp_ALU/n431 , \dp_ALU/n430 , \dp_ALU/n429 ,
         \dp_ALU/n428 , \dp_ALU/n427 , \dp_ALU/n426 , \dp_ALU/n425 ,
         \dp_ALU/n424 , \dp_ALU/n423 , \dp_ALU/n422 , \dp_ALU/n421 ,
         \dp_ALU/n420 , \dp_ALU/n419 , \dp_ALU/n418 , \dp_ALU/n417 ,
         \dp_ALU/n416 , \dp_ALU/n415 , \dp_ALU/n414 , \dp_ALU/n413 ,
         \dp_ALU/n412 , \dp_ALU/n411 , \dp_ALU/n410 , \dp_ALU/n409 ,
         \dp_ALU/n408 , \dp_ALU/n407 , \dp_ALU/n406 , \dp_ALU/n405 ,
         \dp_ALU/n404 , \dp_ALU/n403 , \dp_ALU/n402 , \dp_ALU/n401 ,
         \dp_ALU/n400 , \dp_ALU/n399 , \dp_ALU/n398 , \dp_ALU/n397 ,
         \dp_ALU/n396 , \dp_ALU/n395 , \dp_ALU/n394 , \dp_ALU/n393 ,
         \dp_ALU/n392 , \dp_ALU/n391 , \dp_ALU/n390 , \dp_ALU/n389 ,
         \dp_ALU/n388 , \dp_ALU/n387 , \dp_ALU/n386 , \dp_ALU/n385 ,
         \dp_ALU/n384 , \dp_ALU/n383 , \dp_ALU/n382 , \dp_ALU/n381 ,
         \dp_ALU/n380 , \dp_ALU/n379 , \dp_ALU/n378 , \dp_ALU/n377 ,
         \dp_ALU/n376 , \dp_ALU/n375 , \dp_ALU/n374 , \dp_ALU/n373 ,
         \dp_ALU/n372 , \dp_ALU/n371 , \dp_ALU/n370 , \dp_ALU/n369 ,
         \dp_ALU/n368 , \dp_ALU/n367 , \dp_ALU/n366 , \dp_ALU/n365 ,
         \dp_ALU/n364 , \dp_ALU/n363 , \dp_ALU/n362 , \dp_ALU/n361 ,
         \dp_ALU/n360 , \dp_ALU/n359 , \dp_ALU/n358 , \dp_ALU/n357 ,
         \dp_ALU/n356 , \dp_ALU/n355 , \dp_ALU/n354 , \dp_ALU/n353 ,
         \dp_ALU/n352 , \dp_ALU/n351 , \dp_ALU/n350 , \dp_ALU/n349 ,
         \dp_ALU/n348 , \dp_ALU/n347 , \dp_ALU/n346 , \dp_ALU/n345 ,
         \dp_ALU/n344 , \dp_ALU/n343 , \dp_ALU/n342 , \dp_ALU/n341 ,
         \dp_ALU/n340 , \dp_ALU/n339 , \dp_ALU/n338 , \dp_ALU/n337 ,
         \dp_ALU/n336 , \dp_ALU/n335 , \dp_ALU/n334 , \dp_ALU/n333 ,
         \dp_ALU/n332 , \dp_ALU/n331 , \dp_ALU/n330 , \dp_ALU/n329 ,
         \dp_ALU/n328 , \dp_ALU/n327 , \dp_ALU/n326 , \dp_ALU/n325 ,
         \dp_ALU/n324 , \dp_ALU/n323 , \dp_ALU/n322 , \dp_ALU/n321 ,
         \dp_ALU/n320 , \dp_ALU/n319 , \dp_ALU/n318 , \dp_ALU/n317 ,
         \dp_ALU/n316 , \dp_ALU/n315 , \dp_ALU/n314 , \dp_ALU/n313 ,
         \dp_ALU/n312 , \dp_ALU/n311 , \dp_ALU/n310 , \dp_ALU/n309 ,
         \dp_ALU/n308 , \dp_ALU/n307 , \dp_ALU/n306 , \dp_ALU/n305 ,
         \dp_ALU/n304 , \dp_ALU/n303 , \dp_ALU/n302 , \dp_ALU/n301 ,
         \dp_ALU/n300 , \dp_ALU/n299 , \dp_ALU/n298 , \dp_ALU/n297 ,
         \dp_ALU/n296 , \dp_ALU/n295 , \dp_ALU/n294 , \dp_ALU/n293 ,
         \dp_ALU/n292 , \dp_ALU/n291 , \dp_ALU/n290 , \dp_ALU/n289 ,
         \dp_ALU/n288 , \dp_ALU/n287 , \dp_ALU/n286 , \dp_ALU/n285 ,
         \dp_ALU/n284 , \dp_ALU/n283 , \dp_ALU/n282 , \dp_ALU/n281 ,
         \dp_ALU/n280 , \dp_ALU/n279 , \dp_ALU/n278 , \dp_ALU/n277 ,
         \dp_ALU/n276 , \dp_ALU/n275 , \dp_ALU/n273 , \dp_ALU/n272 ,
         \dp_ALU/n271 , \dp_ALU/n270 , \dp_ALU/n269 , \dp_ALU/n268 ,
         \dp_ALU/n267 , \dp_ALU/n266 , \dp_ALU/n265 , \dp_ALU/n264 ,
         \dp_ALU/n263 , \dp_ALU/n262 , \dp_ALU/n261 , \dp_ALU/n260 ,
         \dp_ALU/n259 , \dp_ALU/n258 , \dp_ALU/n257 , \dp_ALU/n256 ,
         \dp_ALU/n255 , \dp_ALU/n254 , \dp_ALU/n253 , \dp_ALU/n252 ,
         \dp_ALU/n251 , \dp_ALU/n250 , \dp_ALU/n249 , \dp_ALU/n248 ,
         \dp_ALU/n247 , \dp_ALU/n246 , \dp_ALU/n245 , \dp_ALU/n244 ,
         \dp_ALU/n243 , \dp_ALU/n242 , \dp_ALU/n241 , \dp_ALU/n240 ,
         \dp_ALU/n239 , \dp_ALU/n238 , \dp_ALU/n237 , \dp_ALU/n236 ,
         \dp_ALU/n235 , \dp_ALU/n234 , \dp_ALU/n233 , \dp_ALU/n232 ,
         \dp_ALU/n231 , \dp_ALU/dp_cluster_2/N1201 ,
         \dp_ALU/dp_cluster_2/N1202 , \dp_ALU/dp_cluster_2/N1237 ,
         \dp_ALU/dp_cluster_2/N1238 , \dp_ALU/dp_cluster_2/N1273 ,
         \dp_ALU/dp_cluster_2/N1274 , \dp_ALU/dp_cluster_1/N1531 ,
         \dp_ALU/dp_cluster_0/N1740 , \dp_ALU/dp_cluster_0/N1741 ,
         \dp_ALU/N1961 , \dp_ALU/N1960 , \dp_ALU/N1959 , \dp_ALU/N1958 ,
         \dp_ALU/N1957 , \dp_ALU/N1956 , \dp_ALU/N1955 , \dp_ALU/N1954 ,
         \dp_ALU/N1953 , \dp_ALU/N1952 , \dp_ALU/N1951 , \dp_ALU/N1950 ,
         \dp_ALU/N1949 , \dp_ALU/N1948 , \dp_ALU/N1947 , \dp_ALU/N1946 ,
         \dp_ALU/N1945 , \dp_ALU/N1944 , \dp_ALU/N1943 , \dp_ALU/N1942 ,
         \dp_ALU/N1941 , \dp_ALU/N1940 , \dp_ALU/N1939 , \dp_ALU/N1938 ,
         \dp_ALU/N1937 , \dp_ALU/N1936 , \dp_ALU/N1935 , \dp_ALU/N1934 ,
         \dp_ALU/N1933 , \dp_ALU/N1932 , \dp_ALU/N1931 , \dp_ALU/N1869 ,
         \dp_ALU/N1868 , \dp_ALU/N1462 , \dp_ALU/N1461 , \dp_ALU/N1458 ,
         \dp_ALU/N1415 , \dp_ALU/N1370 , \dp_ALU/N1323 , \dp_ALU/N1242 ,
         \dp_ALU/N1241 , \dp_ALU/N1206 , \dp_ALU/N1203 , \dp_ALU/N1170 ,
         \dp_ALU/N1169 , \dp_ALU/N1168 , \dp_ALU/N1138 , \dp_ALU/N1137 ,
         \dp_ALU/N1060 , \dp_ALU/N1059 , \dp_ALU/N1058 , \dp_ALU/N1057 ,
         \dp_ALU/N1056 , \dp_ALU/N1055 , \dp_ALU/N1054 , \dp_ALU/N1053 ,
         \dp_ALU/N1052 , \dp_ALU/N1051 , \dp_ALU/N1050 , \dp_ALU/N1049 ,
         \dp_ALU/N1048 , \dp_ALU/N1047 , \dp_ALU/N1046 , \dp_ALU/N1045 ,
         \dp_ALU/N1044 , \dp_ALU/N1043 , \dp_ALU/N1042 , \dp_ALU/N1041 ,
         \dp_ALU/N1040 , \dp_ALU/N1039 , \dp_ALU/N1038 , \dp_ALU/N1037 ,
         \dp_ALU/N1036 , \dp_RNG/n163 , \dp_RNG/n162 , \dp_RNG/n161 ,
         \dp_RNG/n160 , \dp_RNG/n159 , \dp_RNG/n158 , \dp_RNG/n157 ,
         \dp_RNG/n156 , \dp_RNG/n155 , \dp_RNG/n154 , \dp_RNG/n153 ,
         \dp_RNG/n152 , \dp_RNG/n151 , \dp_RNG/n150 , \dp_RNG/n149 ,
         \dp_RNG/n148 , \dp_RNG/n147 , \dp_RNG/n146 , \dp_RNG/n145 ,
         \dp_RNG/n144 , \dp_RNG/n143 , \dp_RNG/n142 , \dp_RNG/n141 ,
         \dp_RNG/n140 , \dp_RNG/n139 , \dp_RNG/n138 , \dp_RNG/n137 ,
         \dp_RNG/n136 , \dp_RNG/n135 , \dp_RNG/n134 , \dp_RNG/n133 ,
         \dp_RNG/n132 , \dp_RNG/n131 , \dp_RNG/n130 , \dp_RNG/n129 ,
         \dp_RNG/n128 , \dp_RNG/n127 , \dp_RNG/n126 , \dp_RNG/n125 ,
         \dp_RNG/n124 , \dp_RNG/n123 , \dp_RNG/n122 , \dp_RNG/n121 ,
         \dp_RNG/n120 , \dp_RNG/n119 , \dp_RNG/n118 , \dp_RNG/n117 ,
         \dp_RNG/n116 , \dp_RNG/n115 , \dp_RNG/n114 , \dp_RNG/n113 ,
         \dp_RNG/n112 , \dp_RNG/n111 , \dp_RNG/n110 , \dp_RNG/n109 ,
         \dp_RNG/n108 , \dp_RNG/n107 , \dp_RNG/n106 , \dp_RNG/n105 ,
         \dp_RNG/n104 , \dp_RNG/n103 , \dp_RNG/n102 , \dp_RNG/n101 ,
         \dp_RNG/n100 , \dp_RNG/n99 , \dp_RNG/n98 , \dp_RNG/n97 , \dp_RNG/n96 ,
         \dp_RNG/n95 , \dp_RNG/n94 , \dp_RNG/n93 , \dp_RNG/n92 , \dp_RNG/n91 ,
         \dp_RNG/n90 , \dp_RNG/n89 , \dp_RNG/n88 , \dp_RNG/n87 , \dp_RNG/n86 ,
         \dp_RNG/n85 , \dp_RNG/n84 , \dp_RNG/n83 , \dp_RNG/n82 , \dp_RNG/n81 ,
         \dp_RNG/n80 , \dp_RNG/n79 , \dp_RNG/n78 , \dp_RNG/n77 , \dp_RNG/n76 ,
         \dp_RNG/n75 , \dp_RNG/n74 , \dp_RNG/n73 , \dp_RNG/n72 , \dp_RNG/n71 ,
         \dp_RNG/n70 , \dp_RNG/n69 , \dp_RNG/n68 , \dp_RNG/n67 , \dp_RNG/n66 ,
         \dp_RNG/n65 , \dp_RNG/n64 , \dp_RNG/n63 , \dp_RNG/n62 , \dp_RNG/n61 ,
         \dp_RNG/n60 , \dp_RNG/n59 , \dp_RNG/n58 , \dp_RNG/n57 , \dp_RNG/n56 ,
         \dp_RNG/n55 , \dp_RNG/n54 , \dp_RNG/n53 , \dp_RNG/n52 , \dp_RNG/n51 ,
         \dp_RNG/n50 , \dp_RNG/n49 , \dp_RNG/n48 , \dp_RNG/n47 , \dp_RNG/n46 ,
         \dp_RNG/n45 , \dp_RNG/n44 , \dp_RNG/dp_cluster_0/N19 ,
         \dp_RNG/dp_cluster_0/N20 , \dp_RNG/dp_cluster_0/N21 ,
         \dp_RNG/dp_cluster_0/N22 , \dp_RNG/dp_cluster_0/N23 ,
         \dp_RNG/dp_cluster_0/N24 , \dp_RNG/dp_cluster_0/N25 ,
         \dp_RNG/dp_cluster_0/N26 , \dp_RNG/dp_cluster_0/N27 ,
         \dp_RNG/dp_cluster_0/N28 , \dp_RNG/N106 , \dp_RNG/N105 ,
         \dp_RNG/N104 , \dp_RNG/N103 , \dp_RNG/N102 , \dp_RNG/N69 ,
         \dp_RNG/N68 , \dp_RNG/N67 , \dp_RNG/N66 , \dp_RNG/N39 , \dp_RNG/N38 ,
         \dp_RNG/N37 , \dp_RNG/N36 , \dp_RNG/N35 , \dp_RNG/N34 , \dp_RNG/N33 ,
         \dp_RNG/N32 , \dp_RNG/N31 , \dp_RNG/N30 , \dp_RNG/N29 ,
         \dp_RNG/temp_gen , \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n2 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n3 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n4 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n2 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n3 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n4 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n2 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n3 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n4 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n2 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n3 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n4 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n2 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n3 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n4 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n2 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n3 ,
         \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n4 ,
         \dp_RNG/rem_48/u_div/SumTmp[6][4] ,
         \dp_RNG/rem_48/u_div/SumTmp[6][3] ,
         \dp_RNG/rem_48/u_div/SumTmp[6][2] ,
         \dp_RNG/rem_48/u_div/SumTmp[6][1] ,
         \dp_RNG/rem_48/u_div/SumTmp[5][4] ,
         \dp_RNG/rem_48/u_div/SumTmp[5][3] ,
         \dp_RNG/rem_48/u_div/SumTmp[5][2] ,
         \dp_RNG/rem_48/u_div/SumTmp[5][1] ,
         \dp_RNG/rem_48/u_div/SumTmp[4][4] ,
         \dp_RNG/rem_48/u_div/SumTmp[4][3] ,
         \dp_RNG/rem_48/u_div/SumTmp[4][2] ,
         \dp_RNG/rem_48/u_div/SumTmp[4][1] ,
         \dp_RNG/rem_48/u_div/SumTmp[3][4] ,
         \dp_RNG/rem_48/u_div/SumTmp[3][3] ,
         \dp_RNG/rem_48/u_div/SumTmp[3][2] ,
         \dp_RNG/rem_48/u_div/SumTmp[3][1] ,
         \dp_RNG/rem_48/u_div/SumTmp[2][4] ,
         \dp_RNG/rem_48/u_div/SumTmp[2][3] ,
         \dp_RNG/rem_48/u_div/SumTmp[2][2] ,
         \dp_RNG/rem_48/u_div/SumTmp[2][1] ,
         \dp_RNG/rem_48/u_div/SumTmp[1][4] ,
         \dp_RNG/rem_48/u_div/SumTmp[1][3] ,
         \dp_RNG/rem_48/u_div/SumTmp[1][2] ,
         \dp_RNG/rem_48/u_div/SumTmp[1][1] ,
         \dp_RNG/rem_48/u_div/SumTmp[0][4] ,
         \dp_RNG/rem_48/u_div/SumTmp[0][3] ,
         \dp_RNG/rem_48/u_div/SumTmp[0][2] ,
         \dp_RNG/rem_48/u_div/SumTmp[0][1] , \dp_RNG/dp_cluster_0/mult_48/n56 ,
         \dp_RNG/dp_cluster_0/mult_48/n55 , \dp_RNG/dp_cluster_0/mult_48/n54 ,
         \dp_RNG/dp_cluster_0/mult_48/n53 , \dp_RNG/dp_cluster_0/mult_48/n52 ,
         \dp_RNG/dp_cluster_0/mult_48/n51 , \dp_RNG/dp_cluster_0/mult_48/n50 ,
         \dp_RNG/dp_cluster_0/mult_48/n49 , \dp_RNG/dp_cluster_0/mult_48/n48 ,
         \dp_RNG/dp_cluster_0/mult_48/n47 , \dp_RNG/dp_cluster_0/mult_48/n46 ,
         \dp_RNG/dp_cluster_0/mult_48/n45 , \dp_RNG/dp_cluster_0/mult_48/n44 ,
         \dp_RNG/dp_cluster_0/mult_48/n43 , \dp_RNG/dp_cluster_0/mult_48/n42 ,
         \dp_RNG/dp_cluster_0/mult_48/n41 , \dp_RNG/dp_cluster_0/mult_48/n40 ,
         \dp_RNG/dp_cluster_0/mult_48/n39 , \dp_RNG/dp_cluster_0/mult_48/n38 ,
         \dp_RNG/dp_cluster_0/mult_48/n37 , \dp_RNG/dp_cluster_0/mult_48/n36 ,
         \dp_RNG/dp_cluster_0/mult_48/n35 , \dp_RNG/dp_cluster_0/mult_48/n34 ,
         \dp_RNG/dp_cluster_0/mult_48/n33 , \dp_RNG/dp_cluster_0/mult_48/n32 ,
         \dp_RNG/dp_cluster_0/mult_48/n31 , \dp_RNG/dp_cluster_0/mult_48/n30 ,
         \dp_RNG/dp_cluster_0/mult_48/n29 , \dp_RNG/dp_cluster_0/mult_48/n28 ,
         \dp_RNG/dp_cluster_0/mult_48/n27 , \dp_RNG/dp_cluster_0/mult_48/n26 ,
         \dp_RNG/dp_cluster_0/mult_48/n25 , \dp_RNG/dp_cluster_0/mult_48/n24 ,
         \dp_RNG/dp_cluster_0/mult_48/n23 , \dp_RNG/dp_cluster_0/mult_48/n22 ,
         \dp_RNG/dp_cluster_0/mult_48/n21 , \dp_RNG/dp_cluster_0/mult_48/n20 ,
         \dp_RNG/dp_cluster_0/mult_48/n19 , \dp_RNG/dp_cluster_0/mult_48/n18 ,
         \dp_RNG/dp_cluster_0/mult_48/n17 , \dp_RNG/dp_cluster_0/mult_48/n16 ,
         \dp_RNG/dp_cluster_0/mult_48/n15 , \dp_RNG/dp_cluster_0/mult_48/n14 ,
         \dp_RNG/dp_cluster_0/mult_48/n13 , \dp_RNG/dp_cluster_0/mult_48/n12 ,
         \dp_RNG/dp_cluster_0/mult_48/n11 , \dp_RNG/dp_cluster_0/mult_48/n10 ,
         \dp_RNG/dp_cluster_0/mult_48/n9 , \dp_RNG/dp_cluster_0/mult_48/n8 ,
         \dp_RNG/dp_cluster_0/mult_48/n7 , \dp_RNG/dp_cluster_0/mult_48/n6 ,
         \dp_RNG/dp_cluster_0/mult_48/n5 , \dp_RNG/dp_cluster_0/mult_48/n4 ,
         \dp_RNG/dp_cluster_0/mult_48/n3 , \dp_RNG/dp_cluster_0/mult_48/n2 ,
         \dp_ALU/r493/carry[4] , \dp_ALU/r494/carry[2] ,
         \dp_ALU/r494/carry[4] , \dp_ALU/r496/carry[4] , n1, n2, n3, n4, n5,
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
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363;
  wire   [3:0] \main/next_state ;
  wire   [10:0] \dp_RNG/rem_48/quotient ;
  wire   [4:2] \dp_RNG/add_50/carry ;
  wire   [10:1] \dp_RNG/dp_cluster_0/add_48/carry ;
  wire   [31:2] \dp_ALU/add_115/carry ;
  assign out_temp_data_in[0] = \dp_ALU/N1203 ;

  NOR2X1 \main/U68  ( .A(n179), .B(\main/next_state [3]), .Y(\main/n19 ) );
  NAND2X1 \main/U67  ( .A(\main/n19 ), .B(n180), .Y(\main/n57 ) );
  NOR2X1 \main/U66  ( .A(n172), .B(\main/n57 ), .Y(\main/N138 ) );
  NOR2X1 \main/U65  ( .A(n184), .B(out_gameover), .Y(\main/n47 ) );
  NOR2X1 \main/U64  ( .A(out_state_main[3]), .B(out_state_main[0]), .Y(
        \main/n56 ) );
  NAND3X1 \main/U63  ( .A(out_state_main[2]), .B(out_state_main[1]), .C(
        \main/n56 ), .Y(\main/n55 ) );
  OAI21X1 \main/U62  ( .A(in_place), .B(out_state_main[2]), .C(n174), .Y(
        \main/n52 ) );
  NOR2X1 \main/U61  ( .A(n174), .B(out_state_main[2]), .Y(\main/n42 ) );
  NAND3X1 \main/U60  ( .A(\main/n42 ), .B(in_data_in), .C(out_place_done), .Y(
        \main/n53 ) );
  NAND2X1 \main/U59  ( .A(n183), .B(n181), .Y(\main/n54 ) );
  AOI21X1 \main/U58  ( .A(\main/n52 ), .B(\main/n53 ), .C(\main/n54 ), .Y(
        \main/n51 ) );
  AOI21X1 \main/U57  ( .A(\main/n47 ), .B(n176), .C(\main/n51 ), .Y(\main/n48 ) );
  NAND3X1 \main/U56  ( .A(out_alu_done), .B(n176), .C(out_gameover), .Y(
        \main/n38 ) );
  NOR2X1 \main/U55  ( .A(out_state_main[2]), .B(out_state_main[1]), .Y(
        \main/n50 ) );
  NAND3X1 \main/U54  ( .A(out_state_main[3]), .B(n183), .C(\main/n50 ), .Y(
        \main/n35 ) );
  NAND3X1 \main/U53  ( .A(out_display_done), .B(in_data_in), .C(n177), .Y(
        \main/n46 ) );
  AOI21X1 \main/U52  ( .A(\main/n48 ), .B(\main/n49 ), .C(n18), .Y(\main/N85 )
         );
  OR2X1 \main/U51  ( .A(n184), .B(\main/n47 ), .Y(\main/n40 ) );
  AOI22X1 \main/U50  ( .A(\main/n42 ), .B(n183), .C(out_state_main[0]), .D(
        n174), .Y(\main/n45 ) );
  OAI21X1 \main/U49  ( .A(out_state_main[3]), .B(\main/n45 ), .C(\main/n46 ), 
        .Y(\main/n44 ) );
  AOI21X1 \main/U48  ( .A(n176), .B(\main/n40 ), .C(\main/n44 ), .Y(\main/n43 ) );
  NOR2X1 \main/U47  ( .A(n18), .B(\main/n43 ), .Y(\main/N86 ) );
  AOI22X1 \main/U46  ( .A(n174), .B(out_state_main[2]), .C(out_state_main[0]), 
        .D(\main/n42 ), .Y(\main/n41 ) );
  AOI22X1 \main/U45  ( .A(n173), .B(n181), .C(n176), .D(\main/n40 ), .Y(
        \main/n39 ) );
  NOR2X1 \main/U44  ( .A(n18), .B(\main/n39 ), .Y(\main/N87 ) );
  NOR2X1 \main/U43  ( .A(out_state_main[3]), .B(n174), .Y(\main/n37 ) );
  AOI21X1 \main/U42  ( .A(\main/n36 ), .B(\main/n37 ), .C(n175), .Y(\main/n33 ) );
  AOI21X1 \main/U41  ( .A(in_data_in), .B(out_display_done), .C(\main/n35 ), 
        .Y(\main/n34 ) );
  AOI21X1 \main/U40  ( .A(\main/n33 ), .B(n166), .C(n18), .Y(\main/N88 ) );
  NOR2X1 \main/U39  ( .A(\main/next_state [2]), .B(\main/next_state [1]), .Y(
        \main/n28 ) );
  NAND3X1 \main/U38  ( .A(n172), .B(n180), .C(\main/n19 ), .Y(\main/n32 ) );
  AOI21X1 \main/U37  ( .A(n182), .B(\main/n28 ), .C(n171), .Y(\main/n29 ) );
  OAI21X1 \main/U36  ( .A(\main/n28 ), .B(n182), .C(\main/n29 ), .Y(\main/n30 ) );
  NAND3X1 \main/U35  ( .A(\main/next_state [0]), .B(n182), .C(\main/n28 ), .Y(
        \main/n31 ) );
  OAI21X1 \main/U34  ( .A(n169), .B(\main/n30 ), .C(\main/n31 ), .Y(\main/n61 ) );
  NAND3X1 \main/U33  ( .A(n179), .B(n182), .C(\main/next_state [2]), .Y(
        \main/n25 ) );
  OR2X1 \main/U32  ( .A(\main/n25 ), .B(n172), .Y(\main/n23 ) );
  NOR2X1 \main/U31  ( .A(\main/n19 ), .B(\main/n28 ), .Y(\main/n27 ) );
  NAND3X1 \main/U30  ( .A(out_decode), .B(\main/n24 ), .C(\main/n27 ), .Y(
        \main/n26 ) );
  OAI21X1 \main/U29  ( .A(\main/next_state [0]), .B(\main/n25 ), .C(\main/n26 ), .Y(\main/n60 ) );
  NAND2X1 \main/U28  ( .A(n180), .B(n182), .Y(\main/n21 ) );
  NAND2X1 \main/U27  ( .A(out_alu), .B(\main/n24 ), .Y(\main/n22 ) );
  OAI21X1 \main/U26  ( .A(\main/n21 ), .B(\main/n22 ), .C(\main/n23 ), .Y(
        \main/n59 ) );
  XNOR2X1 \main/U25  ( .A(n179), .B(\main/next_state [2]), .Y(\main/n20 ) );
  OAI21X1 \main/U24  ( .A(\main/next_state [1]), .B(\main/n20 ), .C(
        out_display), .Y(\main/n17 ) );
  NAND3X1 \main/U23  ( .A(n178), .B(\main/n19 ), .C(\main/next_state [0]), .Y(
        \main/n18 ) );
  OAI21X1 \main/U22  ( .A(n182), .B(\main/n17 ), .C(\main/n18 ), .Y(\main/n58 ) );
  AND2X2 \main/U5  ( .A(\main/n38 ), .B(\main/n46 ), .Y(\main/n49 ) );
  AND2X2 \main/U4  ( .A(out_state_main[2]), .B(out_state_main[0]), .Y(
        \main/n36 ) );
  AND2X2 \main/U3  ( .A(\main/n29 ), .B(\main/n23 ), .Y(\main/n24 ) );
  DFFNEGX1 \main/display_reg  ( .D(\main/n58 ), .CLK(n15), .Q(out_display) );
  DFFNEGX1 \main/alu_reg  ( .D(\main/n59 ), .CLK(n15), .Q(out_alu) );
  DFFNEGX1 \main/decode_reg  ( .D(\main/n60 ), .CLK(n15), .Q(out_decode) );
  DFFNEGX1 \main/start_reg  ( .D(\main/n61 ), .CLK(n15), .Q(out_start) );
  DFFNEGX1 \main/load_reg  ( .D(\main/N138 ), .CLK(n15), .Q(out_load) );
  DFFNEGX1 \main/next_state_reg[0]  ( .D(\main/N85 ), .CLK(n53), .Q(
        \main/next_state [0]) );
  DFFNEGX1 \main/state_reg[1]  ( .D(\main/next_state [1]), .CLK(n15), .Q(
        out_state_main[1]) );
  DFFNEGX1 \main/next_state_reg[1]  ( .D(\main/N86 ), .CLK(n53), .Q(
        \main/next_state [1]) );
  DFFNEGX1 \main/state_reg[2]  ( .D(\main/next_state [2]), .CLK(n15), .Q(
        out_state_main[2]) );
  DFFNEGX1 \main/next_state_reg[2]  ( .D(\main/N87 ), .CLK(n53), .Q(
        \main/next_state [2]) );
  DFFNEGX1 \main/state_reg[3]  ( .D(\main/next_state [3]), .CLK(n15), .Q(
        out_state_main[3]) );
  DFFNEGX1 \main/next_state_reg[3]  ( .D(\main/N88 ), .CLK(n53), .Q(
        \main/next_state [3]) );
  DFFNEGX1 \main/state_reg[0]  ( .D(\main/next_state [0]), .CLK(n15), .Q(
        out_state_main[0]) );
  NAND2X1 \dp_ALU/U631  ( .A(\dp_ALU/N1203 ), .B(out_temp_data_in[1]), .Y(
        \dp_ALU/n596 ) );
  NAND2X1 \dp_ALU/U630  ( .A(n28), .B(out_temp_data_in[1]), .Y(\dp_ALU/n597 )
         );
  OAI22X1 \dp_ALU/U629  ( .A(out_mines[21]), .B(\dp_ALU/n596 ), .C(
        out_mines[20]), .D(\dp_ALU/n597 ), .Y(\dp_ALU/n611 ) );
  NAND2X1 \dp_ALU/U628  ( .A(n265), .B(\dp_ALU/N1203 ), .Y(\dp_ALU/n594 ) );
  NAND2X1 \dp_ALU/U627  ( .A(n265), .B(n28), .Y(\dp_ALU/n595 ) );
  OAI22X1 \dp_ALU/U626  ( .A(out_mines[23]), .B(\dp_ALU/n594 ), .C(
        out_mines[22]), .D(\dp_ALU/n595 ), .Y(\dp_ALU/n612 ) );
  OAI21X1 \dp_ALU/U625  ( .A(\dp_ALU/n611 ), .B(\dp_ALU/n612 ), .C(
        \dp_ALU/N1137 ), .Y(\dp_ALU/n607 ) );
  OAI22X1 \dp_ALU/U624  ( .A(out_mines[17]), .B(\dp_ALU/n596 ), .C(
        out_mines[16]), .D(\dp_ALU/n597 ), .Y(\dp_ALU/n609 ) );
  OAI22X1 \dp_ALU/U623  ( .A(out_mines[19]), .B(\dp_ALU/n594 ), .C(
        out_mines[18]), .D(\dp_ALU/n595 ), .Y(\dp_ALU/n610 ) );
  OAI21X1 \dp_ALU/U622  ( .A(\dp_ALU/n609 ), .B(\dp_ALU/n610 ), .C(n264), .Y(
        \dp_ALU/n608 ) );
  NAND2X1 \dp_ALU/U621  ( .A(\dp_ALU/n607 ), .B(\dp_ALU/n608 ), .Y(
        \dp_ALU/n606 ) );
  AOI22X1 \dp_ALU/U620  ( .A(\dp_ALU/n606 ), .B(n263), .C(\dp_ALU/N1138 ), .D(
        n278), .Y(\dp_ALU/n586 ) );
  OAI22X1 \dp_ALU/U619  ( .A(out_mines[13]), .B(\dp_ALU/n596 ), .C(
        out_mines[12]), .D(\dp_ALU/n597 ), .Y(\dp_ALU/n604 ) );
  OAI22X1 \dp_ALU/U618  ( .A(out_mines[15]), .B(\dp_ALU/n594 ), .C(
        out_mines[14]), .D(\dp_ALU/n595 ), .Y(\dp_ALU/n605 ) );
  OAI21X1 \dp_ALU/U617  ( .A(\dp_ALU/n604 ), .B(\dp_ALU/n605 ), .C(
        \dp_ALU/N1137 ), .Y(\dp_ALU/n600 ) );
  OAI22X1 \dp_ALU/U616  ( .A(out_mines[9]), .B(\dp_ALU/n596 ), .C(out_mines[8]), .D(\dp_ALU/n597 ), .Y(\dp_ALU/n602 ) );
  OAI22X1 \dp_ALU/U615  ( .A(out_mines[11]), .B(\dp_ALU/n594 ), .C(
        out_mines[10]), .D(\dp_ALU/n595 ), .Y(\dp_ALU/n603 ) );
  OAI21X1 \dp_ALU/U614  ( .A(\dp_ALU/n602 ), .B(\dp_ALU/n603 ), .C(n264), .Y(
        \dp_ALU/n601 ) );
  AOI21X1 \dp_ALU/U613  ( .A(\dp_ALU/n600 ), .B(\dp_ALU/n601 ), .C(n263), .Y(
        \dp_ALU/n588 ) );
  OAI22X1 \dp_ALU/U612  ( .A(out_mines[5]), .B(\dp_ALU/n596 ), .C(out_mines[4]), .D(\dp_ALU/n597 ), .Y(\dp_ALU/n598 ) );
  OAI22X1 \dp_ALU/U611  ( .A(out_mines[7]), .B(\dp_ALU/n594 ), .C(out_mines[6]), .D(\dp_ALU/n595 ), .Y(\dp_ALU/n599 ) );
  OAI21X1 \dp_ALU/U610  ( .A(\dp_ALU/n598 ), .B(\dp_ALU/n599 ), .C(
        \dp_ALU/N1137 ), .Y(\dp_ALU/n590 ) );
  OAI22X1 \dp_ALU/U609  ( .A(out_mines[1]), .B(\dp_ALU/n596 ), .C(out_mines[0]), .D(\dp_ALU/n597 ), .Y(\dp_ALU/n592 ) );
  OAI22X1 \dp_ALU/U608  ( .A(out_mines[3]), .B(\dp_ALU/n594 ), .C(out_mines[2]), .D(\dp_ALU/n595 ), .Y(\dp_ALU/n593 ) );
  OAI21X1 \dp_ALU/U607  ( .A(\dp_ALU/n592 ), .B(\dp_ALU/n593 ), .C(n264), .Y(
        \dp_ALU/n591 ) );
  AOI21X1 \dp_ALU/U606  ( .A(\dp_ALU/n590 ), .B(\dp_ALU/n591 ), .C(
        \dp_ALU/N1138 ), .Y(\dp_ALU/n589 ) );
  OAI21X1 \dp_ALU/U605  ( .A(\dp_ALU/n588 ), .B(\dp_ALU/n589 ), .C(n11), .Y(
        \dp_ALU/n587 ) );
  OAI21X1 \dp_ALU/U604  ( .A(\dp_ALU/n586 ), .B(n11), .C(\dp_ALU/n587 ), .Y(
        \dp_ALU/n441 ) );
  NAND2X1 \dp_ALU/U603  ( .A(n28), .B(n262), .Y(\dp_ALU/n569 ) );
  NAND2X1 \dp_ALU/U602  ( .A(\dp_ALU/N1203 ), .B(n262), .Y(\dp_ALU/n570 ) );
  OAI22X1 \dp_ALU/U601  ( .A(out_mines[21]), .B(\dp_ALU/n569 ), .C(
        out_mines[20]), .D(\dp_ALU/n570 ), .Y(\dp_ALU/n584 ) );
  NAND2X1 \dp_ALU/U600  ( .A(\dp_ALU/N1168 ), .B(n28), .Y(\dp_ALU/n567 ) );
  NAND2X1 \dp_ALU/U599  ( .A(\dp_ALU/N1168 ), .B(\dp_ALU/N1203 ), .Y(
        \dp_ALU/n568 ) );
  OAI22X1 \dp_ALU/U598  ( .A(out_mines[23]), .B(\dp_ALU/n567 ), .C(
        out_mines[22]), .D(\dp_ALU/n568 ), .Y(\dp_ALU/n585 ) );
  OAI21X1 \dp_ALU/U597  ( .A(\dp_ALU/n584 ), .B(\dp_ALU/n585 ), .C(
        \dp_ALU/N1169 ), .Y(\dp_ALU/n580 ) );
  OAI22X1 \dp_ALU/U596  ( .A(out_mines[17]), .B(\dp_ALU/n569 ), .C(
        out_mines[16]), .D(\dp_ALU/n570 ), .Y(\dp_ALU/n582 ) );
  OAI22X1 \dp_ALU/U595  ( .A(out_mines[19]), .B(\dp_ALU/n567 ), .C(
        out_mines[18]), .D(\dp_ALU/n568 ), .Y(\dp_ALU/n583 ) );
  OAI21X1 \dp_ALU/U594  ( .A(\dp_ALU/n582 ), .B(\dp_ALU/n583 ), .C(n261), .Y(
        \dp_ALU/n581 ) );
  NAND2X1 \dp_ALU/U593  ( .A(\dp_ALU/n580 ), .B(\dp_ALU/n581 ), .Y(
        \dp_ALU/n579 ) );
  AOI22X1 \dp_ALU/U592  ( .A(\dp_ALU/n579 ), .B(n260), .C(\dp_ALU/N1170 ), .D(
        n278), .Y(\dp_ALU/n559 ) );
  OAI22X1 \dp_ALU/U591  ( .A(out_mines[13]), .B(\dp_ALU/n569 ), .C(
        out_mines[12]), .D(\dp_ALU/n570 ), .Y(\dp_ALU/n577 ) );
  OAI22X1 \dp_ALU/U590  ( .A(out_mines[15]), .B(\dp_ALU/n567 ), .C(
        out_mines[14]), .D(\dp_ALU/n568 ), .Y(\dp_ALU/n578 ) );
  OAI21X1 \dp_ALU/U589  ( .A(\dp_ALU/n577 ), .B(\dp_ALU/n578 ), .C(
        \dp_ALU/N1169 ), .Y(\dp_ALU/n573 ) );
  OAI22X1 \dp_ALU/U588  ( .A(out_mines[9]), .B(\dp_ALU/n569 ), .C(out_mines[8]), .D(\dp_ALU/n570 ), .Y(\dp_ALU/n575 ) );
  OAI22X1 \dp_ALU/U587  ( .A(out_mines[11]), .B(\dp_ALU/n567 ), .C(
        out_mines[10]), .D(\dp_ALU/n568 ), .Y(\dp_ALU/n576 ) );
  OAI21X1 \dp_ALU/U586  ( .A(\dp_ALU/n575 ), .B(\dp_ALU/n576 ), .C(n261), .Y(
        \dp_ALU/n574 ) );
  AOI21X1 \dp_ALU/U585  ( .A(\dp_ALU/n573 ), .B(\dp_ALU/n574 ), .C(n260), .Y(
        \dp_ALU/n561 ) );
  OAI22X1 \dp_ALU/U584  ( .A(out_mines[5]), .B(\dp_ALU/n569 ), .C(out_mines[4]), .D(\dp_ALU/n570 ), .Y(\dp_ALU/n571 ) );
  OAI22X1 \dp_ALU/U583  ( .A(out_mines[7]), .B(\dp_ALU/n567 ), .C(out_mines[6]), .D(\dp_ALU/n568 ), .Y(\dp_ALU/n572 ) );
  OAI21X1 \dp_ALU/U582  ( .A(\dp_ALU/n571 ), .B(\dp_ALU/n572 ), .C(
        \dp_ALU/N1169 ), .Y(\dp_ALU/n563 ) );
  OAI22X1 \dp_ALU/U581  ( .A(out_mines[1]), .B(\dp_ALU/n569 ), .C(out_mines[0]), .D(\dp_ALU/n570 ), .Y(\dp_ALU/n565 ) );
  OAI22X1 \dp_ALU/U580  ( .A(out_mines[3]), .B(\dp_ALU/n567 ), .C(out_mines[2]), .D(\dp_ALU/n568 ), .Y(\dp_ALU/n566 ) );
  OAI21X1 \dp_ALU/U579  ( .A(\dp_ALU/n565 ), .B(\dp_ALU/n566 ), .C(n261), .Y(
        \dp_ALU/n564 ) );
  AOI21X1 \dp_ALU/U578  ( .A(\dp_ALU/n563 ), .B(\dp_ALU/n564 ), .C(
        \dp_ALU/N1170 ), .Y(\dp_ALU/n562 ) );
  OAI21X1 \dp_ALU/U577  ( .A(\dp_ALU/n561 ), .B(\dp_ALU/n562 ), .C(n12), .Y(
        \dp_ALU/n560 ) );
  OAI21X1 \dp_ALU/U576  ( .A(\dp_ALU/n559 ), .B(n12), .C(\dp_ALU/n560 ), .Y(
        \dp_ALU/n443 ) );
  NAND2X1 \dp_ALU/U575  ( .A(\dp_ALU/N1203 ), .B(n265), .Y(\dp_ALU/n542 ) );
  NAND2X1 \dp_ALU/U574  ( .A(n28), .B(n265), .Y(\dp_ALU/n543 ) );
  OAI22X1 \dp_ALU/U573  ( .A(out_mines[21]), .B(\dp_ALU/n542 ), .C(
        out_mines[20]), .D(\dp_ALU/n543 ), .Y(\dp_ALU/n557 ) );
  NAND2X1 \dp_ALU/U572  ( .A(out_temp_data_in[1]), .B(\dp_ALU/N1203 ), .Y(
        \dp_ALU/n540 ) );
  NAND2X1 \dp_ALU/U571  ( .A(out_temp_data_in[1]), .B(n28), .Y(\dp_ALU/n541 )
         );
  OAI22X1 \dp_ALU/U570  ( .A(out_mines[23]), .B(\dp_ALU/n540 ), .C(
        out_mines[22]), .D(\dp_ALU/n541 ), .Y(\dp_ALU/n558 ) );
  OAI21X1 \dp_ALU/U569  ( .A(\dp_ALU/n557 ), .B(\dp_ALU/n558 ), .C(n267), .Y(
        \dp_ALU/n553 ) );
  OAI22X1 \dp_ALU/U568  ( .A(out_mines[17]), .B(\dp_ALU/n542 ), .C(
        out_mines[16]), .D(\dp_ALU/n543 ), .Y(\dp_ALU/n555 ) );
  OAI22X1 \dp_ALU/U567  ( .A(out_mines[19]), .B(\dp_ALU/n540 ), .C(
        out_mines[18]), .D(\dp_ALU/n541 ), .Y(\dp_ALU/n556 ) );
  OAI21X1 \dp_ALU/U566  ( .A(\dp_ALU/n555 ), .B(\dp_ALU/n556 ), .C(
        out_temp_data_in[2]), .Y(\dp_ALU/n554 ) );
  NAND2X1 \dp_ALU/U565  ( .A(\dp_ALU/n553 ), .B(\dp_ALU/n554 ), .Y(
        \dp_ALU/n552 ) );
  AOI22X1 \dp_ALU/U564  ( .A(\dp_ALU/n552 ), .B(n266), .C(\dp_ALU/N1206 ), .D(
        n278), .Y(\dp_ALU/n532 ) );
  OAI22X1 \dp_ALU/U563  ( .A(out_mines[13]), .B(\dp_ALU/n542 ), .C(
        out_mines[12]), .D(\dp_ALU/n543 ), .Y(\dp_ALU/n550 ) );
  OAI22X1 \dp_ALU/U562  ( .A(out_mines[15]), .B(\dp_ALU/n540 ), .C(
        out_mines[14]), .D(\dp_ALU/n541 ), .Y(\dp_ALU/n551 ) );
  OAI21X1 \dp_ALU/U561  ( .A(\dp_ALU/n550 ), .B(\dp_ALU/n551 ), .C(n267), .Y(
        \dp_ALU/n546 ) );
  OAI22X1 \dp_ALU/U560  ( .A(out_mines[9]), .B(\dp_ALU/n542 ), .C(out_mines[8]), .D(\dp_ALU/n543 ), .Y(\dp_ALU/n548 ) );
  OAI22X1 \dp_ALU/U559  ( .A(out_mines[11]), .B(\dp_ALU/n540 ), .C(
        out_mines[10]), .D(\dp_ALU/n541 ), .Y(\dp_ALU/n549 ) );
  OAI21X1 \dp_ALU/U558  ( .A(\dp_ALU/n548 ), .B(\dp_ALU/n549 ), .C(
        out_temp_data_in[2]), .Y(\dp_ALU/n547 ) );
  AOI21X1 \dp_ALU/U557  ( .A(\dp_ALU/n546 ), .B(\dp_ALU/n547 ), .C(n266), .Y(
        \dp_ALU/n534 ) );
  OAI22X1 \dp_ALU/U556  ( .A(out_mines[5]), .B(\dp_ALU/n542 ), .C(out_mines[4]), .D(\dp_ALU/n543 ), .Y(\dp_ALU/n544 ) );
  OAI22X1 \dp_ALU/U555  ( .A(out_mines[7]), .B(\dp_ALU/n540 ), .C(out_mines[6]), .D(\dp_ALU/n541 ), .Y(\dp_ALU/n545 ) );
  OAI21X1 \dp_ALU/U554  ( .A(\dp_ALU/n544 ), .B(\dp_ALU/n545 ), .C(n267), .Y(
        \dp_ALU/n536 ) );
  OAI22X1 \dp_ALU/U553  ( .A(out_mines[1]), .B(\dp_ALU/n542 ), .C(out_mines[0]), .D(\dp_ALU/n543 ), .Y(\dp_ALU/n538 ) );
  OAI22X1 \dp_ALU/U552  ( .A(out_mines[3]), .B(\dp_ALU/n540 ), .C(out_mines[2]), .D(\dp_ALU/n541 ), .Y(\dp_ALU/n539 ) );
  OAI21X1 \dp_ALU/U551  ( .A(\dp_ALU/n538 ), .B(\dp_ALU/n539 ), .C(
        out_temp_data_in[2]), .Y(\dp_ALU/n537 ) );
  AOI21X1 \dp_ALU/U550  ( .A(\dp_ALU/n536 ), .B(\dp_ALU/n537 ), .C(
        \dp_ALU/N1206 ), .Y(\dp_ALU/n535 ) );
  OAI21X1 \dp_ALU/U549  ( .A(\dp_ALU/n534 ), .B(\dp_ALU/n535 ), .C(n10), .Y(
        \dp_ALU/n533 ) );
  OAI21X1 \dp_ALU/U548  ( .A(\dp_ALU/n532 ), .B(n10), .C(\dp_ALU/n533 ), .Y(
        \dp_ALU/n445 ) );
  NAND2X1 \dp_ALU/U547  ( .A(n28), .B(n316), .Y(\dp_ALU/n515 ) );
  NAND2X1 \dp_ALU/U546  ( .A(\dp_ALU/N1203 ), .B(n316), .Y(\dp_ALU/n516 ) );
  OAI22X1 \dp_ALU/U545  ( .A(out_mines[21]), .B(\dp_ALU/n515 ), .C(
        out_mines[20]), .D(\dp_ALU/n516 ), .Y(\dp_ALU/n530 ) );
  NAND2X1 \dp_ALU/U544  ( .A(n246), .B(n28), .Y(\dp_ALU/n513 ) );
  NAND2X1 \dp_ALU/U543  ( .A(n246), .B(\dp_ALU/N1203 ), .Y(\dp_ALU/n514 ) );
  OAI22X1 \dp_ALU/U542  ( .A(out_mines[23]), .B(\dp_ALU/n513 ), .C(
        out_mines[22]), .D(\dp_ALU/n514 ), .Y(\dp_ALU/n531 ) );
  OAI21X1 \dp_ALU/U541  ( .A(\dp_ALU/n530 ), .B(\dp_ALU/n531 ), .C(
        \dp_ALU/N1241 ), .Y(\dp_ALU/n526 ) );
  OAI22X1 \dp_ALU/U540  ( .A(out_mines[17]), .B(\dp_ALU/n515 ), .C(
        out_mines[16]), .D(\dp_ALU/n516 ), .Y(\dp_ALU/n528 ) );
  OAI22X1 \dp_ALU/U539  ( .A(out_mines[19]), .B(\dp_ALU/n513 ), .C(
        out_mines[18]), .D(\dp_ALU/n514 ), .Y(\dp_ALU/n529 ) );
  OAI21X1 \dp_ALU/U538  ( .A(\dp_ALU/n528 ), .B(\dp_ALU/n529 ), .C(n247), .Y(
        \dp_ALU/n527 ) );
  NAND2X1 \dp_ALU/U537  ( .A(\dp_ALU/n526 ), .B(\dp_ALU/n527 ), .Y(
        \dp_ALU/n525 ) );
  AOI22X1 \dp_ALU/U536  ( .A(\dp_ALU/n525 ), .B(n248), .C(\dp_ALU/N1242 ), .D(
        n278), .Y(\dp_ALU/n505 ) );
  OAI22X1 \dp_ALU/U535  ( .A(out_mines[13]), .B(\dp_ALU/n515 ), .C(
        out_mines[12]), .D(\dp_ALU/n516 ), .Y(\dp_ALU/n523 ) );
  OAI22X1 \dp_ALU/U534  ( .A(out_mines[15]), .B(\dp_ALU/n513 ), .C(
        out_mines[14]), .D(\dp_ALU/n514 ), .Y(\dp_ALU/n524 ) );
  OAI21X1 \dp_ALU/U533  ( .A(\dp_ALU/n523 ), .B(\dp_ALU/n524 ), .C(
        \dp_ALU/N1241 ), .Y(\dp_ALU/n519 ) );
  OAI22X1 \dp_ALU/U532  ( .A(out_mines[9]), .B(\dp_ALU/n515 ), .C(out_mines[8]), .D(\dp_ALU/n516 ), .Y(\dp_ALU/n521 ) );
  OAI22X1 \dp_ALU/U531  ( .A(out_mines[11]), .B(\dp_ALU/n513 ), .C(
        out_mines[10]), .D(\dp_ALU/n514 ), .Y(\dp_ALU/n522 ) );
  OAI21X1 \dp_ALU/U530  ( .A(\dp_ALU/n521 ), .B(\dp_ALU/n522 ), .C(n247), .Y(
        \dp_ALU/n520 ) );
  AOI21X1 \dp_ALU/U529  ( .A(\dp_ALU/n519 ), .B(\dp_ALU/n520 ), .C(n248), .Y(
        \dp_ALU/n507 ) );
  OAI22X1 \dp_ALU/U528  ( .A(out_mines[5]), .B(\dp_ALU/n515 ), .C(out_mines[4]), .D(\dp_ALU/n516 ), .Y(\dp_ALU/n517 ) );
  OAI22X1 \dp_ALU/U527  ( .A(out_mines[7]), .B(\dp_ALU/n513 ), .C(out_mines[6]), .D(\dp_ALU/n514 ), .Y(\dp_ALU/n518 ) );
  OAI21X1 \dp_ALU/U526  ( .A(\dp_ALU/n517 ), .B(\dp_ALU/n518 ), .C(
        \dp_ALU/N1241 ), .Y(\dp_ALU/n509 ) );
  OAI22X1 \dp_ALU/U525  ( .A(out_mines[1]), .B(\dp_ALU/n515 ), .C(out_mines[0]), .D(\dp_ALU/n516 ), .Y(\dp_ALU/n511 ) );
  OAI22X1 \dp_ALU/U524  ( .A(out_mines[3]), .B(\dp_ALU/n513 ), .C(out_mines[2]), .D(\dp_ALU/n514 ), .Y(\dp_ALU/n512 ) );
  OAI21X1 \dp_ALU/U523  ( .A(\dp_ALU/n511 ), .B(\dp_ALU/n512 ), .C(n247), .Y(
        \dp_ALU/n510 ) );
  AOI21X1 \dp_ALU/U522  ( .A(\dp_ALU/n509 ), .B(\dp_ALU/n510 ), .C(
        \dp_ALU/N1242 ), .Y(\dp_ALU/n508 ) );
  OAI21X1 \dp_ALU/U521  ( .A(\dp_ALU/n507 ), .B(\dp_ALU/n508 ), .C(n9), .Y(
        \dp_ALU/n506 ) );
  OAI21X1 \dp_ALU/U520  ( .A(\dp_ALU/n505 ), .B(n9), .C(\dp_ALU/n506 ), .Y(
        \dp_ALU/n442 ) );
  NOR2X1 \dp_ALU/U519  ( .A(n265), .B(\dp_ALU/N1203 ), .Y(\dp_ALU/n492 ) );
  NAND2X1 \dp_ALU/U518  ( .A(out_temp_data_in[4]), .B(n19), .Y(\dp_ALU/n475 )
         );
  NAND2X1 \dp_ALU/U517  ( .A(n19), .B(n271), .Y(\dp_ALU/n462 ) );
  NAND2X1 \dp_ALU/U516  ( .A(out_temp_data_in[3]), .B(n271), .Y(\dp_ALU/n461 )
         );
  AOI22X1 \dp_ALU/U515  ( .A(n269), .B(out_mines[7]), .C(n270), .D(
        out_mines[15]), .Y(\dp_ALU/n504 ) );
  OAI21X1 \dp_ALU/U514  ( .A(n283), .B(\dp_ALU/n475 ), .C(\dp_ALU/n504 ), .Y(
        \dp_ALU/n484 ) );
  NOR2X1 \dp_ALU/U513  ( .A(n265), .B(n28), .Y(\dp_ALU/n491 ) );
  AOI22X1 \dp_ALU/U512  ( .A(n269), .B(out_mines[8]), .C(n270), .D(
        out_mines[16]), .Y(\dp_ALU/n503 ) );
  OAI21X1 \dp_ALU/U511  ( .A(n278), .B(\dp_ALU/n475 ), .C(\dp_ALU/n503 ), .Y(
        \dp_ALU/n470 ) );
  AOI22X1 \dp_ALU/U510  ( .A(\dp_ALU/n492 ), .B(\dp_ALU/n484 ), .C(
        \dp_ALU/n491 ), .D(\dp_ALU/n470 ), .Y(\dp_ALU/n499 ) );
  NOR2X1 \dp_ALU/U509  ( .A(\dp_ALU/N1203 ), .B(out_temp_data_in[1]), .Y(
        \dp_ALU/n494 ) );
  AOI22X1 \dp_ALU/U508  ( .A(n269), .B(out_mines[5]), .C(n270), .D(
        out_mines[13]), .Y(\dp_ALU/n502 ) );
  OAI21X1 \dp_ALU/U507  ( .A(n282), .B(\dp_ALU/n475 ), .C(\dp_ALU/n502 ), .Y(
        \dp_ALU/n476 ) );
  NOR2X1 \dp_ALU/U506  ( .A(n28), .B(out_temp_data_in[1]), .Y(\dp_ALU/n493 )
         );
  AOI22X1 \dp_ALU/U505  ( .A(n269), .B(out_mines[6]), .C(n270), .D(
        out_mines[14]), .Y(\dp_ALU/n501 ) );
  OAI21X1 \dp_ALU/U504  ( .A(n281), .B(\dp_ALU/n475 ), .C(\dp_ALU/n501 ), .Y(
        \dp_ALU/n483 ) );
  AOI22X1 \dp_ALU/U503  ( .A(\dp_ALU/n494 ), .B(\dp_ALU/n476 ), .C(
        \dp_ALU/n493 ), .D(\dp_ALU/n483 ), .Y(\dp_ALU/n500 ) );
  AOI22X1 \dp_ALU/U502  ( .A(\dp_ALU/n492 ), .B(out_mines[19]), .C(
        \dp_ALU/n491 ), .D(out_mines[20]), .Y(\dp_ALU/n497 ) );
  AOI22X1 \dp_ALU/U501  ( .A(\dp_ALU/n494 ), .B(out_mines[17]), .C(
        \dp_ALU/n493 ), .D(out_mines[18]), .Y(\dp_ALU/n498 ) );
  NAND2X1 \dp_ALU/U500  ( .A(\dp_ALU/n497 ), .B(\dp_ALU/n498 ), .Y(
        \dp_ALU/n466 ) );
  NOR2X1 \dp_ALU/U499  ( .A(n252), .B(\dp_ALU/n475 ), .Y(\dp_ALU/n486 ) );
  AOI22X1 \dp_ALU/U498  ( .A(\dp_ALU/n492 ), .B(out_mines[11]), .C(
        \dp_ALU/n491 ), .D(out_mines[12]), .Y(\dp_ALU/n495 ) );
  AOI22X1 \dp_ALU/U497  ( .A(\dp_ALU/n494 ), .B(out_mines[9]), .C(
        \dp_ALU/n493 ), .D(out_mines[10]), .Y(\dp_ALU/n496 ) );
  NAND2X1 \dp_ALU/U496  ( .A(\dp_ALU/n495 ), .B(\dp_ALU/n496 ), .Y(
        \dp_ALU/n465 ) );
  AOI22X1 \dp_ALU/U495  ( .A(out_mines[2]), .B(\dp_ALU/n493 ), .C(out_mines[1]), .D(\dp_ALU/n494 ), .Y(\dp_ALU/n489 ) );
  AOI22X1 \dp_ALU/U494  ( .A(out_mines[4]), .B(\dp_ALU/n491 ), .C(out_mines[3]), .D(\dp_ALU/n492 ), .Y(\dp_ALU/n490 ) );
  AOI21X1 \dp_ALU/U493  ( .A(\dp_ALU/n489 ), .B(\dp_ALU/n490 ), .C(
        \dp_ALU/n462 ), .Y(\dp_ALU/n488 ) );
  AOI21X1 \dp_ALU/U492  ( .A(\dp_ALU/n465 ), .B(n270), .C(\dp_ALU/n488 ), .Y(
        \dp_ALU/n487 ) );
  OAI21X1 \dp_ALU/U491  ( .A(\dp_ALU/n486 ), .B(n253), .C(n267), .Y(
        \dp_ALU/n485 ) );
  OAI21X1 \dp_ALU/U490  ( .A(\dp_ALU/n463 ), .B(n267), .C(\dp_ALU/n485 ), .Y(
        \dp_ALU/N1323 ) );
  AOI22X1 \dp_ALU/U489  ( .A(\dp_ALU/n483 ), .B(n28), .C(\dp_ALU/N1203 ), .D(
        \dp_ALU/n484 ), .Y(\dp_ALU/n478 ) );
  NAND2X1 \dp_ALU/U488  ( .A(\dp_ALU/N1203 ), .B(n270), .Y(\dp_ALU/n457 ) );
  NOR2X1 \dp_ALU/U487  ( .A(n277), .B(\dp_ALU/n457 ), .Y(\dp_ALU/n480 ) );
  NAND2X1 \dp_ALU/U486  ( .A(\dp_ALU/N1203 ), .B(n269), .Y(\dp_ALU/n460 ) );
  AOI22X1 \dp_ALU/U485  ( .A(n269), .B(out_mines[10]), .C(n270), .D(
        out_mines[18]), .Y(\dp_ALU/n482 ) );
  OAI22X1 \dp_ALU/U484  ( .A(n275), .B(\dp_ALU/n460 ), .C(\dp_ALU/N1203 ), .D(
        \dp_ALU/n482 ), .Y(\dp_ALU/n481 ) );
  OAI21X1 \dp_ALU/U483  ( .A(\dp_ALU/n480 ), .B(\dp_ALU/n481 ), .C(
        out_temp_data_in[2]), .Y(\dp_ALU/n479 ) );
  OAI21X1 \dp_ALU/U482  ( .A(out_temp_data_in[2]), .B(\dp_ALU/n478 ), .C(
        \dp_ALU/n479 ), .Y(\dp_ALU/n477 ) );
  NOR2X1 \dp_ALU/U481  ( .A(n280), .B(\dp_ALU/n475 ), .Y(\dp_ALU/n473 ) );
  OAI22X1 \dp_ALU/U480  ( .A(n287), .B(\dp_ALU/n461 ), .C(n293), .D(
        \dp_ALU/n462 ), .Y(\dp_ALU/n474 ) );
  OAI21X1 \dp_ALU/U479  ( .A(\dp_ALU/n473 ), .B(\dp_ALU/n474 ), .C(n28), .Y(
        \dp_ALU/n472 ) );
  OAI21X1 \dp_ALU/U478  ( .A(n268), .B(n28), .C(\dp_ALU/n472 ), .Y(
        \dp_ALU/n468 ) );
  OAI22X1 \dp_ALU/U477  ( .A(\dp_ALU/n460 ), .B(n285), .C(\dp_ALU/n457 ), .D(
        n279), .Y(\dp_ALU/n471 ) );
  AOI21X1 \dp_ALU/U476  ( .A(n28), .B(\dp_ALU/n470 ), .C(\dp_ALU/n471 ), .Y(
        \dp_ALU/n469 ) );
  AOI22X1 \dp_ALU/U475  ( .A(\dp_ALU/n468 ), .B(n267), .C(out_temp_data_in[2]), 
        .D(n257), .Y(\dp_ALU/n467 ) );
  OAI22X1 \dp_ALU/U474  ( .A(n256), .B(n265), .C(out_temp_data_in[1]), .D(
        \dp_ALU/n467 ), .Y(\dp_ALU/N1370 ) );
  AOI22X1 \dp_ALU/U473  ( .A(n269), .B(\dp_ALU/n465 ), .C(n270), .D(
        \dp_ALU/n466 ), .Y(\dp_ALU/n464 ) );
  OAI22X1 \dp_ALU/U472  ( .A(out_temp_data_in[2]), .B(\dp_ALU/n463 ), .C(
        \dp_ALU/n464 ), .D(n267), .Y(\dp_ALU/N1415 ) );
  OAI22X1 \dp_ALU/U471  ( .A(n280), .B(\dp_ALU/n461 ), .C(n287), .D(
        \dp_ALU/n462 ), .Y(\dp_ALU/n459 ) );
  AOI22X1 \dp_ALU/U470  ( .A(\dp_ALU/n459 ), .B(n28), .C(n258), .D(
        out_mines[13]), .Y(\dp_ALU/n458 ) );
  OAI21X1 \dp_ALU/U469  ( .A(n282), .B(\dp_ALU/n457 ), .C(\dp_ALU/n458 ), .Y(
        \dp_ALU/n456 ) );
  AOI22X1 \dp_ALU/U468  ( .A(out_temp_data_in[2]), .B(\dp_ALU/n456 ), .C(n257), 
        .D(n267), .Y(\dp_ALU/n455 ) );
  OAI22X1 \dp_ALU/U467  ( .A(out_temp_data_in[1]), .B(n256), .C(\dp_ALU/n455 ), 
        .D(n265), .Y(\dp_ALU/N1458 ) );
  XOR2X1 \dp_ALU/U466  ( .A(n259), .B(\dp_ALU/n445 ), .Y(\dp_ALU/n452 ) );
  XOR2X1 \dp_ALU/U465  ( .A(\dp_ALU/n441 ), .B(\dp_ALU/n452 ), .Y(
        \dp_ALU/dp_cluster_2/N1201 ) );
  XOR2X1 \dp_ALU/U464  ( .A(\dp_ALU/dp_cluster_2/N1201 ), .B(\dp_ALU/N1458 ), 
        .Y(\dp_ALU/n451 ) );
  XNOR2X1 \dp_ALU/U463  ( .A(\dp_ALU/n451 ), .B(n251), .Y(
        \dp_ALU/dp_cluster_2/N1273 ) );
  XOR2X1 \dp_ALU/U462  ( .A(\dp_ALU/N1370 ), .B(n249), .Y(\dp_ALU/n454 ) );
  XOR2X1 \dp_ALU/U461  ( .A(\dp_ALU/n454 ), .B(\dp_ALU/n442 ), .Y(
        \dp_ALU/dp_cluster_2/N1237 ) );
  XOR2X1 \dp_ALU/U460  ( .A(\dp_ALU/dp_cluster_2/N1273 ), .B(
        \dp_ALU/dp_cluster_2/N1237 ), .Y(\dp_ALU/N1461 ) );
  NAND2X1 \dp_ALU/U459  ( .A(\dp_ALU/dp_cluster_2/N1273 ), .B(
        \dp_ALU/dp_cluster_2/N1237 ), .Y(\dp_ALU/n453 ) );
  OAI22X1 \dp_ALU/U458  ( .A(n249), .B(n254), .C(\dp_ALU/n454 ), .D(
        \dp_ALU/n442 ), .Y(\dp_ALU/dp_cluster_2/N1238 ) );
  XNOR2X1 \dp_ALU/U457  ( .A(\dp_ALU/n453 ), .B(\dp_ALU/dp_cluster_2/N1238 ), 
        .Y(\dp_ALU/n449 ) );
  OAI22X1 \dp_ALU/U456  ( .A(\dp_ALU/n452 ), .B(\dp_ALU/n441 ), .C(
        \dp_ALU/n443 ), .D(\dp_ALU/n445 ), .Y(\dp_ALU/dp_cluster_2/N1202 ) );
  AOI22X1 \dp_ALU/U455  ( .A(\dp_ALU/n451 ), .B(\dp_ALU/N1415 ), .C(
        \dp_ALU/dp_cluster_2/N1201 ), .D(\dp_ALU/N1458 ), .Y(\dp_ALU/n450 ) );
  XNOR2X1 \dp_ALU/U454  ( .A(\dp_ALU/dp_cluster_2/N1202 ), .B(\dp_ALU/n450 ), 
        .Y(\dp_ALU/dp_cluster_2/N1274 ) );
  XOR2X1 \dp_ALU/U453  ( .A(\dp_ALU/n449 ), .B(\dp_ALU/dp_cluster_2/N1274 ), 
        .Y(\dp_ALU/N1462 ) );
  XOR2X1 \dp_ALU/U452  ( .A(\dp_ALU/n445 ), .B(\dp_ALU/N1323 ), .Y(
        \dp_ALU/n446 ) );
  XOR2X1 \dp_ALU/U451  ( .A(\dp_ALU/n446 ), .B(n259), .Y(\dp_ALU/n447 ) );
  XOR2X1 \dp_ALU/U450  ( .A(n250), .B(n255), .Y(\dp_ALU/n448 ) );
  OAI22X1 \dp_ALU/U448  ( .A(n255), .B(\dp_ALU/n447 ), .C(n251), .D(
        \dp_ALU/n448 ), .Y(\dp_ALU/n444 ) );
  OAI22X1 \dp_ALU/U447  ( .A(n249), .B(\dp_ALU/n445 ), .C(\dp_ALU/n443 ), .D(
        \dp_ALU/n446 ), .Y(\dp_ALU/dp_cluster_1/N1531 ) );
  XNOR2X1 \dp_ALU/U446  ( .A(\dp_ALU/n444 ), .B(\dp_ALU/dp_cluster_1/N1531 ), 
        .Y(\dp_ALU/n259 ) );
  XOR2X1 \dp_ALU/U445  ( .A(n259), .B(\dp_ALU/n442 ), .Y(\dp_ALU/n440 ) );
  XOR2X1 \dp_ALU/U444  ( .A(\dp_ALU/n441 ), .B(\dp_ALU/n440 ), .Y(
        \dp_ALU/dp_cluster_0/N1740 ) );
  XOR2X1 \dp_ALU/U443  ( .A(\dp_ALU/dp_cluster_0/N1740 ), .B(\dp_ALU/N1415 ), 
        .Y(\dp_ALU/n439 ) );
  XOR2X1 \dp_ALU/U442  ( .A(\dp_ALU/n439 ), .B(\dp_ALU/N1370 ), .Y(
        \dp_ALU/N1868 ) );
  OAI22X1 \dp_ALU/U441  ( .A(\dp_ALU/n440 ), .B(\dp_ALU/n441 ), .C(
        \dp_ALU/n442 ), .D(\dp_ALU/n443 ), .Y(\dp_ALU/dp_cluster_0/N1741 ) );
  AOI22X1 \dp_ALU/U440  ( .A(\dp_ALU/n439 ), .B(\dp_ALU/N1370 ), .C(
        \dp_ALU/dp_cluster_0/N1740 ), .D(\dp_ALU/N1415 ), .Y(\dp_ALU/n438 ) );
  XNOR2X1 \dp_ALU/U439  ( .A(\dp_ALU/dp_cluster_0/N1741 ), .B(\dp_ALU/n438 ), 
        .Y(\dp_ALU/N1869 ) );
  NOR2X1 \dp_ALU/U438  ( .A(n170), .B(n18), .Y(\dp_ALU/n433 ) );
  NOR2X1 \dp_ALU/U437  ( .A(n18), .B(\dp_ALU/n433 ), .Y(\dp_ALU/n307 ) );
  NAND2X1 \dp_ALU/U436  ( .A(in_data[4]), .B(\dp_ALU/n433 ), .Y(\dp_ALU/n437 )
         );
  OAI21X1 \dp_ALU/U435  ( .A(n271), .B(n82), .C(\dp_ALU/n437 ), .Y(
        \dp_ALU/n672 ) );
  NAND2X1 \dp_ALU/U434  ( .A(in_data[3]), .B(\dp_ALU/n433 ), .Y(\dp_ALU/n436 )
         );
  OAI21X1 \dp_ALU/U433  ( .A(n19), .B(n82), .C(\dp_ALU/n436 ), .Y(
        \dp_ALU/n671 ) );
  NAND2X1 \dp_ALU/U432  ( .A(in_data[2]), .B(\dp_ALU/n433 ), .Y(\dp_ALU/n435 )
         );
  OAI21X1 \dp_ALU/U431  ( .A(n267), .B(n82), .C(\dp_ALU/n435 ), .Y(
        \dp_ALU/n670 ) );
  NAND2X1 \dp_ALU/U430  ( .A(in_data[1]), .B(\dp_ALU/n433 ), .Y(\dp_ALU/n434 )
         );
  OAI21X1 \dp_ALU/U429  ( .A(n265), .B(n82), .C(\dp_ALU/n434 ), .Y(
        \dp_ALU/n669 ) );
  NAND2X1 \dp_ALU/U428  ( .A(in_data[0]), .B(\dp_ALU/n433 ), .Y(\dp_ALU/n432 )
         );
  OAI21X1 \dp_ALU/U427  ( .A(n28), .B(n82), .C(\dp_ALU/n432 ), .Y(
        \dp_ALU/n668 ) );
  NOR2X1 \dp_ALU/U426  ( .A(out_load), .B(n18), .Y(\dp_ALU/n237 ) );
  NAND2X1 \dp_ALU/U425  ( .A(out_decode), .B(\dp_ALU/n237 ), .Y(\dp_ALU/n431 )
         );
  NAND2X1 \dp_ALU/U424  ( .A(\dp_ALU/n307 ), .B(\dp_ALU/n431 ), .Y(
        \dp_ALU/n404 ) );
  NOR2X1 \dp_ALU/U423  ( .A(n2), .B(\dp_ALU/n431 ), .Y(\dp_ALU/n406 ) );
  NAND2X1 \dp_ALU/U422  ( .A(\dp_ALU/N1060 ), .B(n38), .Y(\dp_ALU/n430 ) );
  OAI21X1 \dp_ALU/U421  ( .A(n244), .B(n36), .C(\dp_ALU/n430 ), .Y(
        \dp_ALU/n667 ) );
  NAND2X1 \dp_ALU/U420  ( .A(\dp_ALU/N1059 ), .B(n38), .Y(\dp_ALU/n429 ) );
  OAI21X1 \dp_ALU/U419  ( .A(n243), .B(n36), .C(\dp_ALU/n429 ), .Y(
        \dp_ALU/n666 ) );
  NAND2X1 \dp_ALU/U418  ( .A(\dp_ALU/N1058 ), .B(n38), .Y(\dp_ALU/n428 ) );
  OAI21X1 \dp_ALU/U417  ( .A(n242), .B(n36), .C(\dp_ALU/n428 ), .Y(
        \dp_ALU/n665 ) );
  NAND2X1 \dp_ALU/U416  ( .A(\dp_ALU/N1057 ), .B(n38), .Y(\dp_ALU/n427 ) );
  OAI21X1 \dp_ALU/U415  ( .A(n240), .B(n36), .C(\dp_ALU/n427 ), .Y(
        \dp_ALU/n664 ) );
  NAND2X1 \dp_ALU/U414  ( .A(\dp_ALU/N1056 ), .B(n38), .Y(\dp_ALU/n426 ) );
  OAI21X1 \dp_ALU/U413  ( .A(n239), .B(n36), .C(\dp_ALU/n426 ), .Y(
        \dp_ALU/n663 ) );
  NAND2X1 \dp_ALU/U412  ( .A(\dp_ALU/N1055 ), .B(n38), .Y(\dp_ALU/n425 ) );
  OAI21X1 \dp_ALU/U411  ( .A(n238), .B(n36), .C(\dp_ALU/n425 ), .Y(
        \dp_ALU/n662 ) );
  NAND2X1 \dp_ALU/U410  ( .A(\dp_ALU/N1054 ), .B(n38), .Y(\dp_ALU/n424 ) );
  OAI21X1 \dp_ALU/U409  ( .A(n236), .B(n36), .C(\dp_ALU/n424 ), .Y(
        \dp_ALU/n661 ) );
  NAND2X1 \dp_ALU/U408  ( .A(\dp_ALU/N1053 ), .B(n38), .Y(\dp_ALU/n423 ) );
  OAI21X1 \dp_ALU/U407  ( .A(n235), .B(n36), .C(\dp_ALU/n423 ), .Y(
        \dp_ALU/n660 ) );
  NAND2X1 \dp_ALU/U406  ( .A(\dp_ALU/N1052 ), .B(n38), .Y(\dp_ALU/n422 ) );
  OAI21X1 \dp_ALU/U405  ( .A(n234), .B(n36), .C(\dp_ALU/n422 ), .Y(
        \dp_ALU/n659 ) );
  NAND2X1 \dp_ALU/U404  ( .A(\dp_ALU/N1051 ), .B(n38), .Y(\dp_ALU/n421 ) );
  OAI21X1 \dp_ALU/U403  ( .A(n233), .B(n36), .C(\dp_ALU/n421 ), .Y(
        \dp_ALU/n658 ) );
  NAND2X1 \dp_ALU/U402  ( .A(\dp_ALU/N1050 ), .B(n38), .Y(\dp_ALU/n420 ) );
  OAI21X1 \dp_ALU/U401  ( .A(n232), .B(n36), .C(\dp_ALU/n420 ), .Y(
        \dp_ALU/n657 ) );
  NAND2X1 \dp_ALU/U400  ( .A(\dp_ALU/N1049 ), .B(n38), .Y(\dp_ALU/n419 ) );
  OAI21X1 \dp_ALU/U399  ( .A(n231), .B(n36), .C(\dp_ALU/n419 ), .Y(
        \dp_ALU/n656 ) );
  NAND2X1 \dp_ALU/U398  ( .A(\dp_ALU/N1048 ), .B(n39), .Y(\dp_ALU/n418 ) );
  OAI21X1 \dp_ALU/U397  ( .A(n230), .B(n37), .C(\dp_ALU/n418 ), .Y(
        \dp_ALU/n655 ) );
  NAND2X1 \dp_ALU/U396  ( .A(\dp_ALU/N1047 ), .B(n39), .Y(\dp_ALU/n417 ) );
  OAI21X1 \dp_ALU/U395  ( .A(n229), .B(n37), .C(\dp_ALU/n417 ), .Y(
        \dp_ALU/n654 ) );
  NAND2X1 \dp_ALU/U394  ( .A(\dp_ALU/N1046 ), .B(n39), .Y(\dp_ALU/n416 ) );
  OAI21X1 \dp_ALU/U393  ( .A(n228), .B(n37), .C(\dp_ALU/n416 ), .Y(
        \dp_ALU/n653 ) );
  NAND2X1 \dp_ALU/U392  ( .A(\dp_ALU/N1045 ), .B(n39), .Y(\dp_ALU/n415 ) );
  OAI21X1 \dp_ALU/U391  ( .A(n227), .B(n37), .C(\dp_ALU/n415 ), .Y(
        \dp_ALU/n652 ) );
  NAND2X1 \dp_ALU/U390  ( .A(\dp_ALU/N1044 ), .B(n39), .Y(\dp_ALU/n414 ) );
  OAI21X1 \dp_ALU/U389  ( .A(n225), .B(n37), .C(\dp_ALU/n414 ), .Y(
        \dp_ALU/n651 ) );
  NAND2X1 \dp_ALU/U388  ( .A(\dp_ALU/N1043 ), .B(n39), .Y(\dp_ALU/n413 ) );
  OAI21X1 \dp_ALU/U387  ( .A(n224), .B(n37), .C(\dp_ALU/n413 ), .Y(
        \dp_ALU/n650 ) );
  NAND2X1 \dp_ALU/U386  ( .A(\dp_ALU/N1042 ), .B(n39), .Y(\dp_ALU/n412 ) );
  OAI21X1 \dp_ALU/U385  ( .A(n222), .B(n37), .C(\dp_ALU/n412 ), .Y(
        \dp_ALU/n649 ) );
  NAND2X1 \dp_ALU/U384  ( .A(\dp_ALU/N1041 ), .B(n39), .Y(\dp_ALU/n411 ) );
  OAI21X1 \dp_ALU/U383  ( .A(n221), .B(n37), .C(\dp_ALU/n411 ), .Y(
        \dp_ALU/n648 ) );
  NAND2X1 \dp_ALU/U382  ( .A(\dp_ALU/N1040 ), .B(n39), .Y(\dp_ALU/n410 ) );
  OAI21X1 \dp_ALU/U381  ( .A(n220), .B(n37), .C(\dp_ALU/n410 ), .Y(
        \dp_ALU/n647 ) );
  NAND2X1 \dp_ALU/U380  ( .A(\dp_ALU/N1039 ), .B(n39), .Y(\dp_ALU/n409 ) );
  OAI21X1 \dp_ALU/U379  ( .A(n218), .B(n37), .C(\dp_ALU/n409 ), .Y(
        \dp_ALU/n646 ) );
  NAND2X1 \dp_ALU/U378  ( .A(\dp_ALU/N1038 ), .B(n39), .Y(\dp_ALU/n408 ) );
  OAI21X1 \dp_ALU/U377  ( .A(n217), .B(n37), .C(\dp_ALU/n408 ), .Y(
        \dp_ALU/n645 ) );
  NAND2X1 \dp_ALU/U376  ( .A(\dp_ALU/N1037 ), .B(n39), .Y(\dp_ALU/n407 ) );
  OAI21X1 \dp_ALU/U375  ( .A(n216), .B(n37), .C(\dp_ALU/n407 ), .Y(
        \dp_ALU/n644 ) );
  NAND2X1 \dp_ALU/U374  ( .A(\dp_ALU/N1036 ), .B(\dp_ALU/n406 ), .Y(
        \dp_ALU/n405 ) );
  OAI21X1 \dp_ALU/U373  ( .A(n214), .B(\dp_ALU/n404 ), .C(\dp_ALU/n405 ), .Y(
        \dp_ALU/n643 ) );
  NAND3X1 \dp_ALU/U372  ( .A(\dp_ALU/n237 ), .B(n168), .C(out_alu), .Y(
        \dp_ALU/n231 ) );
  NOR2X1 \dp_ALU/U371  ( .A(n82), .B(n30), .Y(\dp_ALU/n243 ) );
  NOR2X1 \dp_ALU/U370  ( .A(n30), .B(\dp_ALU/n243 ), .Y(\dp_ALU/n403 ) );
  OAI22X1 \dp_ALU/U369  ( .A(n34), .B(n186), .C(n29), .D(n214), .Y(
        \dp_ALU/n642 ) );
  OAI22X1 \dp_ALU/U368  ( .A(n34), .B(n187), .C(\dp_ALU/n231 ), .D(n216), .Y(
        \dp_ALU/n641 ) );
  OAI22X1 \dp_ALU/U367  ( .A(n34), .B(n188), .C(\dp_ALU/n231 ), .D(n217), .Y(
        \dp_ALU/n640 ) );
  OAI22X1 \dp_ALU/U366  ( .A(n34), .B(n189), .C(\dp_ALU/n231 ), .D(n218), .Y(
        \dp_ALU/n639 ) );
  OAI22X1 \dp_ALU/U365  ( .A(n34), .B(n190), .C(n29), .D(n220), .Y(
        \dp_ALU/n638 ) );
  OAI22X1 \dp_ALU/U364  ( .A(n34), .B(n191), .C(\dp_ALU/n231 ), .D(n221), .Y(
        \dp_ALU/n637 ) );
  OAI22X1 \dp_ALU/U363  ( .A(n34), .B(n192), .C(n29), .D(n222), .Y(
        \dp_ALU/n636 ) );
  OAI22X1 \dp_ALU/U362  ( .A(n34), .B(n193), .C(\dp_ALU/n231 ), .D(n224), .Y(
        \dp_ALU/n635 ) );
  OAI22X1 \dp_ALU/U361  ( .A(n34), .B(n194), .C(n29), .D(n225), .Y(
        \dp_ALU/n634 ) );
  OAI22X1 \dp_ALU/U360  ( .A(n34), .B(n195), .C(\dp_ALU/n231 ), .D(n227), .Y(
        \dp_ALU/n633 ) );
  OAI22X1 \dp_ALU/U359  ( .A(n34), .B(n196), .C(n29), .D(n228), .Y(
        \dp_ALU/n632 ) );
  OAI22X1 \dp_ALU/U358  ( .A(n34), .B(n197), .C(\dp_ALU/n231 ), .D(n229), .Y(
        \dp_ALU/n631 ) );
  OAI22X1 \dp_ALU/U357  ( .A(n35), .B(n198), .C(n29), .D(n230), .Y(
        \dp_ALU/n630 ) );
  OAI22X1 \dp_ALU/U356  ( .A(n35), .B(n199), .C(\dp_ALU/n231 ), .D(n231), .Y(
        \dp_ALU/n629 ) );
  OAI22X1 \dp_ALU/U355  ( .A(n35), .B(n200), .C(n29), .D(n232), .Y(
        \dp_ALU/n628 ) );
  OAI22X1 \dp_ALU/U354  ( .A(n35), .B(n201), .C(\dp_ALU/n231 ), .D(n233), .Y(
        \dp_ALU/n627 ) );
  OAI22X1 \dp_ALU/U353  ( .A(n35), .B(n202), .C(n29), .D(n234), .Y(
        \dp_ALU/n626 ) );
  OAI22X1 \dp_ALU/U352  ( .A(n35), .B(n203), .C(\dp_ALU/n231 ), .D(n235), .Y(
        \dp_ALU/n625 ) );
  OAI22X1 \dp_ALU/U351  ( .A(n35), .B(n204), .C(n29), .D(n236), .Y(
        \dp_ALU/n624 ) );
  OAI22X1 \dp_ALU/U350  ( .A(n35), .B(n205), .C(n29), .D(n238), .Y(
        \dp_ALU/n623 ) );
  OAI22X1 \dp_ALU/U349  ( .A(n35), .B(n206), .C(n29), .D(n239), .Y(
        \dp_ALU/n622 ) );
  OAI22X1 \dp_ALU/U348  ( .A(n35), .B(n207), .C(n29), .D(n240), .Y(
        \dp_ALU/n621 ) );
  OAI22X1 \dp_ALU/U347  ( .A(n35), .B(n208), .C(n29), .D(n242), .Y(
        \dp_ALU/n620 ) );
  OAI22X1 \dp_ALU/U346  ( .A(n35), .B(n209), .C(\dp_ALU/n231 ), .D(n243), .Y(
        \dp_ALU/n619 ) );
  OAI22X1 \dp_ALU/U345  ( .A(\dp_ALU/n403 ), .B(n210), .C(n29), .D(n244), .Y(
        \dp_ALU/n618 ) );
  AOI22X1 \dp_ALU/U344  ( .A(out_temp_cleared[22]), .B(out_mines[22]), .C(
        out_temp_cleared[23]), .D(out_mines[23]), .Y(\dp_ALU/n396 ) );
  NOR2X1 \dp_ALU/U343  ( .A(out_temp_decoded[24]), .B(out_temp_cleared[24]), 
        .Y(\dp_ALU/n402 ) );
  AOI22X1 \dp_ALU/U342  ( .A(\dp_ALU/n402 ), .B(n278), .C(out_temp_cleared[21]), .D(out_mines[21]), .Y(\dp_ALU/n397 ) );
  NOR2X1 \dp_ALU/U341  ( .A(out_temp_decoded[19]), .B(out_temp_cleared[19]), 
        .Y(\dp_ALU/n399 ) );
  NAND3X1 \dp_ALU/U340  ( .A(n204), .B(n236), .C(n276), .Y(\dp_ALU/n401 ) );
  OAI21X1 \dp_ALU/U339  ( .A(n278), .B(n210), .C(\dp_ALU/n401 ), .Y(
        \dp_ALU/n400 ) );
  AOI21X1 \dp_ALU/U338  ( .A(\dp_ALU/n399 ), .B(n277), .C(\dp_ALU/n400 ), .Y(
        \dp_ALU/n398 ) );
  NAND3X1 \dp_ALU/U337  ( .A(\dp_ALU/n396 ), .B(\dp_ALU/n397 ), .C(
        \dp_ALU/n398 ), .Y(\dp_ALU/n386 ) );
  AOI22X1 \dp_ALU/U336  ( .A(out_temp_cleared[19]), .B(out_mines[19]), .C(
        out_temp_cleared[20]), .D(out_mines[20]), .Y(\dp_ALU/n388 ) );
  NOR2X1 \dp_ALU/U335  ( .A(out_temp_decoded[20]), .B(out_temp_cleared[20]), 
        .Y(\dp_ALU/n395 ) );
  AOI22X1 \dp_ALU/U334  ( .A(\dp_ALU/n395 ), .B(n280), .C(out_temp_cleared[18]), .D(out_mines[18]), .Y(\dp_ALU/n389 ) );
  NOR2X1 \dp_ALU/U333  ( .A(out_temp_decoded[5]), .B(out_temp_cleared[5]), .Y(
        \dp_ALU/n391 ) );
  NAND2X1 \dp_ALU/U332  ( .A(n190), .B(n220), .Y(\dp_ALU/n393 ) );
  NAND3X1 \dp_ALU/U331  ( .A(n189), .B(n218), .C(n273), .Y(\dp_ALU/n394 ) );
  OAI21X1 \dp_ALU/U330  ( .A(out_mines[4]), .B(\dp_ALU/n393 ), .C(
        \dp_ALU/n394 ), .Y(\dp_ALU/n392 ) );
  AOI21X1 \dp_ALU/U329  ( .A(\dp_ALU/n391 ), .B(n295), .C(\dp_ALU/n392 ), .Y(
        \dp_ALU/n390 ) );
  NAND3X1 \dp_ALU/U328  ( .A(\dp_ALU/n388 ), .B(\dp_ALU/n389 ), .C(
        \dp_ALU/n390 ), .Y(\dp_ALU/n387 ) );
  NOR2X1 \dp_ALU/U327  ( .A(\dp_ALU/n386 ), .B(\dp_ALU/n387 ), .Y(
        \dp_ALU/n321 ) );
  NOR2X1 \dp_ALU/U326  ( .A(out_temp_decoded[12]), .B(out_temp_cleared[12]), 
        .Y(\dp_ALU/n384 ) );
  NOR2X1 \dp_ALU/U325  ( .A(out_temp_decoded[13]), .B(out_temp_cleared[13]), 
        .Y(\dp_ALU/n385 ) );
  AOI22X1 \dp_ALU/U324  ( .A(\dp_ALU/n384 ), .B(n287), .C(\dp_ALU/n385 ), .D(
        n289), .Y(\dp_ALU/n376 ) );
  AOI22X1 \dp_ALU/U323  ( .A(out_temp_cleared[16]), .B(out_mines[16]), .C(
        out_temp_cleared[17]), .D(out_mines[17]), .Y(\dp_ALU/n377 ) );
  NAND2X1 \dp_ALU/U322  ( .A(n202), .B(n234), .Y(\dp_ALU/n382 ) );
  NAND3X1 \dp_ALU/U321  ( .A(n201), .B(n233), .C(n290), .Y(\dp_ALU/n383 ) );
  OAI21X1 \dp_ALU/U320  ( .A(out_mines[16]), .B(\dp_ALU/n382 ), .C(
        \dp_ALU/n383 ), .Y(\dp_ALU/n379 ) );
  NAND3X1 \dp_ALU/U319  ( .A(n203), .B(n235), .C(n279), .Y(\dp_ALU/n381 ) );
  OAI21X1 \dp_ALU/U318  ( .A(n290), .B(n201), .C(\dp_ALU/n381 ), .Y(
        \dp_ALU/n380 ) );
  NOR2X1 \dp_ALU/U317  ( .A(\dp_ALU/n379 ), .B(\dp_ALU/n380 ), .Y(
        \dp_ALU/n378 ) );
  NAND3X1 \dp_ALU/U316  ( .A(\dp_ALU/n376 ), .B(\dp_ALU/n377 ), .C(
        \dp_ALU/n378 ), .Y(\dp_ALU/n366 ) );
  AOI22X1 \dp_ALU/U315  ( .A(out_temp_cleared[13]), .B(out_mines[13]), .C(
        out_temp_cleared[14]), .D(out_mines[14]), .Y(\dp_ALU/n368 ) );
  NOR2X1 \dp_ALU/U314  ( .A(out_temp_decoded[14]), .B(out_temp_cleared[14]), 
        .Y(\dp_ALU/n375 ) );
  AOI22X1 \dp_ALU/U313  ( .A(\dp_ALU/n375 ), .B(n288), .C(out_temp_cleared[12]), .D(out_mines[12]), .Y(\dp_ALU/n369 ) );
  NOR2X1 \dp_ALU/U312  ( .A(out_temp_decoded[23]), .B(out_temp_cleared[23]), 
        .Y(\dp_ALU/n371 ) );
  NAND2X1 \dp_ALU/U311  ( .A(n208), .B(n242), .Y(\dp_ALU/n373 ) );
  NAND3X1 \dp_ALU/U310  ( .A(n207), .B(n240), .C(n282), .Y(\dp_ALU/n374 ) );
  OAI21X1 \dp_ALU/U309  ( .A(out_mines[22]), .B(\dp_ALU/n373 ), .C(
        \dp_ALU/n374 ), .Y(\dp_ALU/n372 ) );
  AOI21X1 \dp_ALU/U308  ( .A(\dp_ALU/n371 ), .B(n283), .C(\dp_ALU/n372 ), .Y(
        \dp_ALU/n370 ) );
  NAND3X1 \dp_ALU/U307  ( .A(\dp_ALU/n368 ), .B(\dp_ALU/n369 ), .C(
        \dp_ALU/n370 ), .Y(\dp_ALU/n367 ) );
  NOR2X1 \dp_ALU/U306  ( .A(\dp_ALU/n366 ), .B(\dp_ALU/n367 ), .Y(
        \dp_ALU/n322 ) );
  NAND2X1 \dp_ALU/U305  ( .A(n188), .B(n217), .Y(\dp_ALU/n364 ) );
  NAND3X1 \dp_ALU/U304  ( .A(n187), .B(n216), .C(n291), .Y(\dp_ALU/n365 ) );
  OAI21X1 \dp_ALU/U303  ( .A(out_mines[2]), .B(\dp_ALU/n364 ), .C(
        \dp_ALU/n365 ), .Y(\dp_ALU/n362 ) );
  OAI22X1 \dp_ALU/U302  ( .A(n291), .B(n187), .C(n292), .D(n186), .Y(
        \dp_ALU/n363 ) );
  NOR2X1 \dp_ALU/U301  ( .A(\dp_ALU/n362 ), .B(\dp_ALU/n363 ), .Y(
        \dp_ALU/n349 ) );
  OAI22X1 \dp_ALU/U300  ( .A(n293), .B(n190), .C(n273), .D(n189), .Y(
        \dp_ALU/n359 ) );
  NAND3X1 \dp_ALU/U299  ( .A(n186), .B(n214), .C(n292), .Y(\dp_ALU/n361 ) );
  OAI21X1 \dp_ALU/U298  ( .A(n295), .B(n191), .C(\dp_ALU/n361 ), .Y(
        \dp_ALU/n360 ) );
  NOR2X1 \dp_ALU/U297  ( .A(\dp_ALU/n359 ), .B(\dp_ALU/n360 ), .Y(
        \dp_ALU/n350 ) );
  NAND3X1 \dp_ALU/U296  ( .A(n195), .B(n227), .C(n285), .Y(\dp_ALU/n355 ) );
  NAND3X1 \dp_ALU/U295  ( .A(n197), .B(n229), .C(n275), .Y(\dp_ALU/n356 ) );
  NOR2X1 \dp_ALU/U294  ( .A(out_temp_decoded[10]), .B(out_temp_cleared[10]), 
        .Y(\dp_ALU/n358 ) );
  AOI22X1 \dp_ALU/U293  ( .A(out_temp_cleared[2]), .B(out_mines[2]), .C(
        \dp_ALU/n358 ), .D(n274), .Y(\dp_ALU/n357 ) );
  NAND3X1 \dp_ALU/U292  ( .A(\dp_ALU/n355 ), .B(\dp_ALU/n356 ), .C(
        \dp_ALU/n357 ), .Y(\dp_ALU/n352 ) );
  AOI22X1 \dp_ALU/U291  ( .A(out_temp_cleared[10]), .B(out_mines[10]), .C(
        out_temp_cleared[11]), .D(out_mines[11]), .Y(\dp_ALU/n354 ) );
  OAI21X1 \dp_ALU/U290  ( .A(n285), .B(n195), .C(\dp_ALU/n354 ), .Y(
        \dp_ALU/n353 ) );
  NOR2X1 \dp_ALU/U289  ( .A(\dp_ALU/n352 ), .B(\dp_ALU/n353 ), .Y(
        \dp_ALU/n351 ) );
  NAND3X1 \dp_ALU/U288  ( .A(\dp_ALU/n349 ), .B(\dp_ALU/n350 ), .C(
        \dp_ALU/n351 ), .Y(\dp_ALU/n324 ) );
  AOI22X1 \dp_ALU/U287  ( .A(out_temp_decoded[12]), .B(out_mines[12]), .C(
        out_temp_decoded[13]), .D(out_mines[13]), .Y(\dp_ALU/n348 ) );
  OAI21X1 \dp_ALU/U286  ( .A(n288), .B(n232), .C(\dp_ALU/n348 ), .Y(
        \dp_ALU/n318 ) );
  OAI22X1 \dp_ALU/U285  ( .A(n286), .B(n194), .C(n296), .D(n193), .Y(
        \dp_ALU/n347 ) );
  NOR2X1 \dp_ALU/U284  ( .A(\dp_ALU/n318 ), .B(\dp_ALU/n347 ), .Y(
        \dp_ALU/n326 ) );
  NAND2X1 \dp_ALU/U283  ( .A(n193), .B(n224), .Y(\dp_ALU/n345 ) );
  NAND3X1 \dp_ALU/U282  ( .A(n192), .B(n222), .C(n294), .Y(\dp_ALU/n346 ) );
  OAI21X1 \dp_ALU/U281  ( .A(out_mines[7]), .B(\dp_ALU/n345 ), .C(
        \dp_ALU/n346 ), .Y(\dp_ALU/n342 ) );
  NAND3X1 \dp_ALU/U280  ( .A(n194), .B(n225), .C(n286), .Y(\dp_ALU/n344 ) );
  OAI21X1 \dp_ALU/U279  ( .A(n294), .B(n192), .C(\dp_ALU/n344 ), .Y(
        \dp_ALU/n343 ) );
  NOR2X1 \dp_ALU/U278  ( .A(\dp_ALU/n342 ), .B(\dp_ALU/n343 ), .Y(
        \dp_ALU/n327 ) );
  AOI22X1 \dp_ALU/U277  ( .A(out_temp_decoded[3]), .B(out_mines[3]), .C(
        out_temp_decoded[4]), .D(out_mines[4]), .Y(\dp_ALU/n341 ) );
  OAI21X1 \dp_ALU/U276  ( .A(n295), .B(n221), .C(\dp_ALU/n341 ), .Y(
        \dp_ALU/n340 ) );
  OAI22X1 \dp_ALU/U275  ( .A(n214), .B(n292), .C(n216), .D(n291), .Y(
        \dp_ALU/n339 ) );
  AOI21X1 \dp_ALU/U274  ( .A(out_mines[2]), .B(out_temp_decoded[2]), .C(
        \dp_ALU/n339 ), .Y(\dp_ALU/n316 ) );
  AOI22X1 \dp_ALU/U273  ( .A(out_temp_decoded[15]), .B(out_mines[15]), .C(
        out_temp_decoded[16]), .D(out_mines[16]), .Y(\dp_ALU/n338 ) );
  OAI21X1 \dp_ALU/U272  ( .A(n279), .B(n235), .C(\dp_ALU/n338 ), .Y(
        \dp_ALU/n319 ) );
  AOI22X1 \dp_ALU/U271  ( .A(out_temp_decoded[18]), .B(out_mines[18]), .C(
        out_temp_decoded[19]), .D(out_mines[19]), .Y(\dp_ALU/n337 ) );
  OAI21X1 \dp_ALU/U270  ( .A(n280), .B(n239), .C(\dp_ALU/n337 ), .Y(
        \dp_ALU/n320 ) );
  NOR2X1 \dp_ALU/U269  ( .A(\dp_ALU/n319 ), .B(\dp_ALU/n320 ), .Y(
        \dp_ALU/n336 ) );
  NAND3X1 \dp_ALU/U268  ( .A(n219), .B(\dp_ALU/n316 ), .C(\dp_ALU/n336 ), .Y(
        \dp_ALU/n329 ) );
  AOI22X1 \dp_ALU/U267  ( .A(out_temp_decoded[10]), .B(out_mines[10]), .C(
        out_temp_decoded[11]), .D(out_mines[11]), .Y(\dp_ALU/n335 ) );
  OAI21X1 \dp_ALU/U266  ( .A(n285), .B(n227), .C(\dp_ALU/n335 ), .Y(
        \dp_ALU/n314 ) );
  AOI22X1 \dp_ALU/U265  ( .A(out_temp_decoded[6]), .B(out_mines[6]), .C(
        out_temp_decoded[7]), .D(out_mines[7]), .Y(\dp_ALU/n334 ) );
  OAI21X1 \dp_ALU/U264  ( .A(n286), .B(n225), .C(\dp_ALU/n334 ), .Y(
        \dp_ALU/n333 ) );
  AOI22X1 \dp_ALU/U263  ( .A(out_temp_decoded[23]), .B(out_mines[23]), .C(
        out_temp_decoded[24]), .D(out_mines[24]), .Y(\dp_ALU/n331 ) );
  AOI22X1 \dp_ALU/U262  ( .A(out_temp_decoded[21]), .B(out_mines[21]), .C(
        out_temp_decoded[22]), .D(out_mines[22]), .Y(\dp_ALU/n332 ) );
  NAND2X1 \dp_ALU/U261  ( .A(\dp_ALU/n331 ), .B(\dp_ALU/n332 ), .Y(
        \dp_ALU/n315 ) );
  NAND3X1 \dp_ALU/U260  ( .A(n226), .B(n223), .C(n241), .Y(\dp_ALU/n330 ) );
  NOR2X1 \dp_ALU/U259  ( .A(\dp_ALU/n329 ), .B(\dp_ALU/n330 ), .Y(
        \dp_ALU/n328 ) );
  NAND3X1 \dp_ALU/U258  ( .A(\dp_ALU/n326 ), .B(\dp_ALU/n327 ), .C(
        \dp_ALU/n328 ), .Y(\dp_ALU/n325 ) );
  NOR2X1 \dp_ALU/U257  ( .A(\dp_ALU/n324 ), .B(\dp_ALU/n325 ), .Y(
        \dp_ALU/n323 ) );
  NAND3X1 \dp_ALU/U256  ( .A(\dp_ALU/n321 ), .B(\dp_ALU/n322 ), .C(
        \dp_ALU/n323 ), .Y(\dp_ALU/n245 ) );
  NOR2X1 \dp_ALU/U255  ( .A(\dp_ALU/n318 ), .B(\dp_ALU/n319 ), .Y(
        \dp_ALU/n317 ) );
  NAND3X1 \dp_ALU/U254  ( .A(\dp_ALU/n316 ), .B(n237), .C(\dp_ALU/n317 ), .Y(
        \dp_ALU/n311 ) );
  NOR2X1 \dp_ALU/U253  ( .A(\dp_ALU/n314 ), .B(\dp_ALU/n315 ), .Y(
        \dp_ALU/n313 ) );
  NAND3X1 \dp_ALU/U252  ( .A(n223), .B(n219), .C(\dp_ALU/n313 ), .Y(
        \dp_ALU/n312 ) );
  NOR2X1 \dp_ALU/U251  ( .A(\dp_ALU/n311 ), .B(\dp_ALU/n312 ), .Y(
        \dp_ALU/n250 ) );
  AOI21X1 \dp_ALU/U250  ( .A(\dp_ALU/n245 ), .B(\dp_ALU/n250 ), .C(n29), .Y(
        \dp_ALU/n310 ) );
  AOI21X1 \dp_ALU/U249  ( .A(\dp_ALU/n243 ), .B(out_gameover), .C(
        \dp_ALU/n310 ), .Y(\dp_ALU/n309 ) );
  NAND2X1 \dp_ALU/U248  ( .A(out_win), .B(\dp_ALU/n243 ), .Y(\dp_ALU/n308 ) );
  OAI21X1 \dp_ALU/U247  ( .A(n29), .B(\dp_ALU/n245 ), .C(\dp_ALU/n308 ), .Y(
        \dp_ALU/n617 ) );
  OAI21X1 \dp_ALU/U246  ( .A(n29), .B(\dp_ALU/n245 ), .C(\dp_ALU/n307 ), .Y(
        \dp_ALU/n306 ) );
  AOI22X1 \dp_ALU/U244  ( .A(n185), .B(n32), .C(out_global_score[0]), .D(n21), 
        .Y(\dp_ALU/n305 ) );
  AOI22X1 \dp_ALU/U243  ( .A(\dp_ALU/N1931 ), .B(n32), .C(out_global_score[1]), 
        .D(n20), .Y(\dp_ALU/n304 ) );
  AOI22X1 \dp_ALU/U242  ( .A(\dp_ALU/N1932 ), .B(n32), .C(out_global_score[2]), 
        .D(n21), .Y(\dp_ALU/n303 ) );
  AOI22X1 \dp_ALU/U241  ( .A(\dp_ALU/N1933 ), .B(n32), .C(out_global_score[3]), 
        .D(n20), .Y(\dp_ALU/n302 ) );
  AOI22X1 \dp_ALU/U240  ( .A(\dp_ALU/N1934 ), .B(n32), .C(out_global_score[4]), 
        .D(n21), .Y(\dp_ALU/n301 ) );
  AOI22X1 \dp_ALU/U239  ( .A(\dp_ALU/N1935 ), .B(n32), .C(out_global_score[5]), 
        .D(n20), .Y(\dp_ALU/n300 ) );
  AOI22X1 \dp_ALU/U238  ( .A(\dp_ALU/N1936 ), .B(n32), .C(out_global_score[6]), 
        .D(n21), .Y(\dp_ALU/n299 ) );
  AOI22X1 \dp_ALU/U237  ( .A(\dp_ALU/N1937 ), .B(n32), .C(out_global_score[7]), 
        .D(n21), .Y(\dp_ALU/n298 ) );
  AOI22X1 \dp_ALU/U236  ( .A(\dp_ALU/N1938 ), .B(n32), .C(out_global_score[8]), 
        .D(n21), .Y(\dp_ALU/n297 ) );
  AOI22X1 \dp_ALU/U235  ( .A(\dp_ALU/N1939 ), .B(n32), .C(out_global_score[9]), 
        .D(n21), .Y(\dp_ALU/n296 ) );
  AOI22X1 \dp_ALU/U234  ( .A(\dp_ALU/N1940 ), .B(n32), .C(out_global_score[10]), .D(n21), .Y(\dp_ALU/n295 ) );
  AOI22X1 \dp_ALU/U233  ( .A(\dp_ALU/N1941 ), .B(n32), .C(out_global_score[11]), .D(n21), .Y(\dp_ALU/n294 ) );
  AOI22X1 \dp_ALU/U232  ( .A(\dp_ALU/N1942 ), .B(n32), .C(out_global_score[12]), .D(n21), .Y(\dp_ALU/n293 ) );
  AOI22X1 \dp_ALU/U231  ( .A(\dp_ALU/N1943 ), .B(n33), .C(out_global_score[13]), .D(n21), .Y(\dp_ALU/n292 ) );
  AOI22X1 \dp_ALU/U230  ( .A(\dp_ALU/N1944 ), .B(n33), .C(out_global_score[14]), .D(n21), .Y(\dp_ALU/n291 ) );
  AOI22X1 \dp_ALU/U229  ( .A(\dp_ALU/N1945 ), .B(n33), .C(out_global_score[15]), .D(n21), .Y(\dp_ALU/n290 ) );
  AOI22X1 \dp_ALU/U228  ( .A(\dp_ALU/N1946 ), .B(n33), .C(out_global_score[16]), .D(n21), .Y(\dp_ALU/n289 ) );
  AOI22X1 \dp_ALU/U227  ( .A(\dp_ALU/N1947 ), .B(n33), .C(out_global_score[17]), .D(n21), .Y(\dp_ALU/n288 ) );
  AOI22X1 \dp_ALU/U226  ( .A(\dp_ALU/N1948 ), .B(n33), .C(out_global_score[18]), .D(n21), .Y(\dp_ALU/n287 ) );
  AOI22X1 \dp_ALU/U225  ( .A(\dp_ALU/N1949 ), .B(n33), .C(out_global_score[19]), .D(n20), .Y(\dp_ALU/n286 ) );
  AOI22X1 \dp_ALU/U224  ( .A(\dp_ALU/N1950 ), .B(n33), .C(out_global_score[20]), .D(n20), .Y(\dp_ALU/n285 ) );
  AOI22X1 \dp_ALU/U223  ( .A(\dp_ALU/N1951 ), .B(n33), .C(out_global_score[21]), .D(n20), .Y(\dp_ALU/n284 ) );
  AOI22X1 \dp_ALU/U222  ( .A(\dp_ALU/N1952 ), .B(n33), .C(out_global_score[22]), .D(n20), .Y(\dp_ALU/n283 ) );
  AOI22X1 \dp_ALU/U221  ( .A(\dp_ALU/N1953 ), .B(n33), .C(out_global_score[23]), .D(n20), .Y(\dp_ALU/n282 ) );
  AOI22X1 \dp_ALU/U220  ( .A(\dp_ALU/N1954 ), .B(n33), .C(out_global_score[24]), .D(n20), .Y(\dp_ALU/n281 ) );
  AOI22X1 \dp_ALU/U219  ( .A(\dp_ALU/N1955 ), .B(n33), .C(out_global_score[25]), .D(n20), .Y(\dp_ALU/n280 ) );
  AOI22X1 \dp_ALU/U218  ( .A(\dp_ALU/N1956 ), .B(n33), .C(out_global_score[26]), .D(n20), .Y(\dp_ALU/n279 ) );
  AOI22X1 \dp_ALU/U217  ( .A(\dp_ALU/N1957 ), .B(n32), .C(out_global_score[27]), .D(n20), .Y(\dp_ALU/n278 ) );
  AOI22X1 \dp_ALU/U216  ( .A(\dp_ALU/N1958 ), .B(n33), .C(out_global_score[28]), .D(n20), .Y(\dp_ALU/n277 ) );
  AOI22X1 \dp_ALU/U215  ( .A(\dp_ALU/N1959 ), .B(n32), .C(out_global_score[29]), .D(n20), .Y(\dp_ALU/n276 ) );
  AOI22X1 \dp_ALU/U214  ( .A(\dp_ALU/N1960 ), .B(n33), .C(out_global_score[30]), .D(n20), .Y(\dp_ALU/n275 ) );
  AOI22X1 \dp_ALU/U213  ( .A(\dp_ALU/N1961 ), .B(n32), .C(out_global_score[31]), .D(n20), .Y(\dp_ALU/n273 ) );
  NAND3X1 \dp_ALU/U212  ( .A(n235), .B(n236), .C(n234), .Y(\dp_ALU/n271 ) );
  NAND3X1 \dp_ALU/U211  ( .A(n230), .B(n231), .C(n229), .Y(\dp_ALU/n272 ) );
  NOR2X1 \dp_ALU/U210  ( .A(\dp_ALU/n271 ), .B(\dp_ALU/n272 ), .Y(
        \dp_ALU/n267 ) );
  NAND3X1 \dp_ALU/U209  ( .A(n224), .B(n225), .C(n222), .Y(\dp_ALU/n269 ) );
  NAND3X1 \dp_ALU/U208  ( .A(n242), .B(n243), .C(n240), .Y(\dp_ALU/n270 ) );
  NOR2X1 \dp_ALU/U207  ( .A(\dp_ALU/n269 ), .B(\dp_ALU/n270 ), .Y(
        \dp_ALU/n268 ) );
  NAND3X1 \dp_ALU/U206  ( .A(n217), .B(n218), .C(n216), .Y(\dp_ALU/n266 ) );
  NOR2X1 \dp_ALU/U205  ( .A(out_temp_decoded[9]), .B(out_temp_decoded[24]), 
        .Y(\dp_ALU/n265 ) );
  NAND3X1 \dp_ALU/U204  ( .A(n232), .B(n238), .C(\dp_ALU/n265 ), .Y(
        \dp_ALU/n262 ) );
  NOR2X1 \dp_ALU/U203  ( .A(out_temp_decoded[4]), .B(\dp_ALU/n262 ), .Y(
        \dp_ALU/n264 ) );
  NAND3X1 \dp_ALU/U202  ( .A(\dp_ALU/n254 ), .B(n215), .C(\dp_ALU/n264 ), .Y(
        \dp_ALU/n258 ) );
  NOR2X1 \dp_ALU/U201  ( .A(out_temp_decoded[5]), .B(out_temp_decoded[20]), 
        .Y(\dp_ALU/n263 ) );
  NAND3X1 \dp_ALU/U200  ( .A(n228), .B(n233), .C(\dp_ALU/n263 ), .Y(
        \dp_ALU/n256 ) );
  NOR2X1 \dp_ALU/U199  ( .A(\dp_ALU/n256 ), .B(\dp_ALU/n262 ), .Y(
        \dp_ALU/n261 ) );
  NAND3X1 \dp_ALU/U198  ( .A(n214), .B(n220), .C(\dp_ALU/n261 ), .Y(
        \dp_ALU/n260 ) );
  OR2X1 \dp_ALU/U197  ( .A(\dp_ALU/n258 ), .B(n212), .Y(\dp_ALU/n246 ) );
  NOR2X1 \dp_ALU/U196  ( .A(\dp_ALU/n259 ), .B(\dp_ALU/n246 ), .Y(
        \dp_ALU/n251 ) );
  NAND2X1 \dp_ALU/U195  ( .A(\dp_ALU/n258 ), .B(n214), .Y(\dp_ALU/n257 ) );
  NOR2X1 \dp_ALU/U194  ( .A(\dp_ALU/n256 ), .B(\dp_ALU/n257 ), .Y(
        \dp_ALU/n255 ) );
  NAND3X1 \dp_ALU/U193  ( .A(\dp_ALU/n254 ), .B(n215), .C(\dp_ALU/n255 ), .Y(
        \dp_ALU/n253 ) );
  AOI22X1 \dp_ALU/U192  ( .A(\dp_ALU/N1869 ), .B(n213), .C(n212), .D(
        \dp_ALU/N1462 ), .Y(\dp_ALU/n252 ) );
  OAI21X1 \dp_ALU/U191  ( .A(\dp_ALU/n251 ), .B(n211), .C(\dp_ALU/n245 ), .Y(
        \dp_ALU/n248 ) );
  NAND2X1 \dp_ALU/U190  ( .A(\dp_ALU/n250 ), .B(n30), .Y(\dp_ALU/n241 ) );
  NAND2X1 \dp_ALU/U189  ( .A(out_n_nearby[1]), .B(\dp_ALU/n243 ), .Y(
        \dp_ALU/n249 ) );
  OAI21X1 \dp_ALU/U188  ( .A(\dp_ALU/n248 ), .B(\dp_ALU/n241 ), .C(
        \dp_ALU/n249 ), .Y(\dp_ALU/n616 ) );
  AOI22X1 \dp_ALU/U187  ( .A(n212), .B(\dp_ALU/N1461 ), .C(n213), .D(
        \dp_ALU/N1868 ), .Y(\dp_ALU/n247 ) );
  OAI21X1 \dp_ALU/U186  ( .A(n13), .B(\dp_ALU/n246 ), .C(\dp_ALU/n247 ), .Y(
        \dp_ALU/n244 ) );
  NAND2X1 \dp_ALU/U185  ( .A(\dp_ALU/n244 ), .B(\dp_ALU/n245 ), .Y(
        \dp_ALU/n240 ) );
  NAND2X1 \dp_ALU/U184  ( .A(out_n_nearby[0]), .B(\dp_ALU/n243 ), .Y(
        \dp_ALU/n242 ) );
  OAI21X1 \dp_ALU/U183  ( .A(\dp_ALU/n240 ), .B(\dp_ALU/n241 ), .C(
        \dp_ALU/n242 ), .Y(\dp_ALU/n615 ) );
  NAND3X1 \dp_ALU/U182  ( .A(n168), .B(n169), .C(n167), .Y(\dp_ALU/n233 ) );
  NOR2X1 \dp_ALU/U181  ( .A(out_start), .B(out_display), .Y(\dp_ALU/n238 ) );
  NAND3X1 \dp_ALU/U180  ( .A(\dp_ALU/n238 ), .B(n168), .C(\dp_ALU/n239 ), .Y(
        \dp_ALU/n236 ) );
  NAND2X1 \dp_ALU/U179  ( .A(\dp_ALU/n237 ), .B(\dp_ALU/n236 ), .Y(
        \dp_ALU/n234 ) );
  NAND2X1 \dp_ALU/U178  ( .A(out_display_done), .B(n115), .Y(\dp_ALU/n235 ) );
  OAI21X1 \dp_ALU/U177  ( .A(\dp_ALU/n233 ), .B(\dp_ALU/n234 ), .C(
        \dp_ALU/n235 ), .Y(\dp_ALU/n614 ) );
  NAND2X1 \dp_ALU/U176  ( .A(out_alu_done), .B(n115), .Y(\dp_ALU/n232 ) );
  OAI21X1 \dp_ALU/U175  ( .A(out_start), .B(n29), .C(\dp_ALU/n232 ), .Y(
        \dp_ALU/n613 ) );
  AND2X2 \dp_ALU/U6  ( .A(\dp_ALU/n499 ), .B(\dp_ALU/n500 ), .Y(\dp_ALU/n463 )
         );
  AND2X2 \dp_ALU/U4  ( .A(\dp_ALU/n267 ), .B(\dp_ALU/n268 ), .Y(\dp_ALU/n254 )
         );
  AND2X2 \dp_ALU/U3  ( .A(n167), .B(\dp_ALU/n237 ), .Y(\dp_ALU/n239 ) );
  DFFNEGX1 \dp_ALU/alu_done_reg  ( .D(\dp_ALU/n613 ), .CLK(n15), .Q(
        out_alu_done) );
  DFFNEGX1 \dp_ALU/display_done_reg  ( .D(\dp_ALU/n614 ), .CLK(n15), .Q(
        out_display_done) );
  DFFNEGX1 \dp_ALU/n_nearby_reg[0]  ( .D(\dp_ALU/n615 ), .CLK(n53), .Q(
        out_n_nearby[0]) );
  DFFNEGX1 \dp_ALU/n_nearby_reg[1]  ( .D(\dp_ALU/n616 ), .CLK(n53), .Q(
        out_n_nearby[1]) );
  DFFNEGX1 \dp_ALU/global_score_reg[31]  ( .D(n114), .CLK(n53), .Q(
        out_global_score[31]) );
  DFFNEGX1 \dp_ALU/global_score_reg[30]  ( .D(n113), .CLK(n53), .Q(
        out_global_score[30]) );
  DFFNEGX1 \dp_ALU/global_score_reg[29]  ( .D(n112), .CLK(n53), .Q(
        out_global_score[29]) );
  DFFNEGX1 \dp_ALU/global_score_reg[28]  ( .D(n111), .CLK(n53), .Q(
        out_global_score[28]) );
  DFFNEGX1 \dp_ALU/global_score_reg[27]  ( .D(n110), .CLK(n53), .Q(
        out_global_score[27]) );
  DFFNEGX1 \dp_ALU/global_score_reg[26]  ( .D(n109), .CLK(n53), .Q(
        out_global_score[26]) );
  DFFNEGX1 \dp_ALU/global_score_reg[25]  ( .D(n108), .CLK(n53), .Q(
        out_global_score[25]) );
  DFFNEGX1 \dp_ALU/global_score_reg[24]  ( .D(n107), .CLK(n52), .Q(
        out_global_score[24]) );
  DFFNEGX1 \dp_ALU/global_score_reg[23]  ( .D(n106), .CLK(n52), .Q(
        out_global_score[23]) );
  DFFNEGX1 \dp_ALU/global_score_reg[22]  ( .D(n105), .CLK(n52), .Q(
        out_global_score[22]) );
  DFFNEGX1 \dp_ALU/global_score_reg[21]  ( .D(n104), .CLK(n52), .Q(
        out_global_score[21]) );
  DFFNEGX1 \dp_ALU/global_score_reg[20]  ( .D(n103), .CLK(n52), .Q(
        out_global_score[20]) );
  DFFNEGX1 \dp_ALU/global_score_reg[19]  ( .D(n102), .CLK(n52), .Q(
        out_global_score[19]) );
  DFFNEGX1 \dp_ALU/global_score_reg[18]  ( .D(n101), .CLK(n52), .Q(
        out_global_score[18]) );
  DFFNEGX1 \dp_ALU/global_score_reg[17]  ( .D(n100), .CLK(n52), .Q(
        out_global_score[17]) );
  DFFNEGX1 \dp_ALU/global_score_reg[16]  ( .D(n99), .CLK(n52), .Q(
        out_global_score[16]) );
  DFFNEGX1 \dp_ALU/global_score_reg[15]  ( .D(n98), .CLK(n52), .Q(
        out_global_score[15]) );
  DFFNEGX1 \dp_ALU/global_score_reg[14]  ( .D(n97), .CLK(n52), .Q(
        out_global_score[14]) );
  DFFNEGX1 \dp_ALU/global_score_reg[13]  ( .D(n96), .CLK(n52), .Q(
        out_global_score[13]) );
  DFFNEGX1 \dp_ALU/global_score_reg[12]  ( .D(n95), .CLK(n52), .Q(
        out_global_score[12]) );
  DFFNEGX1 \dp_ALU/global_score_reg[11]  ( .D(n94), .CLK(n51), .Q(
        out_global_score[11]) );
  DFFNEGX1 \dp_ALU/global_score_reg[10]  ( .D(n93), .CLK(n51), .Q(
        out_global_score[10]) );
  DFFNEGX1 \dp_ALU/global_score_reg[9]  ( .D(n92), .CLK(n51), .Q(
        out_global_score[9]) );
  DFFNEGX1 \dp_ALU/global_score_reg[8]  ( .D(n91), .CLK(n51), .Q(
        out_global_score[8]) );
  DFFNEGX1 \dp_ALU/global_score_reg[7]  ( .D(n90), .CLK(n51), .Q(
        out_global_score[7]) );
  DFFNEGX1 \dp_ALU/global_score_reg[6]  ( .D(n89), .CLK(n51), .Q(
        out_global_score[6]) );
  DFFNEGX1 \dp_ALU/global_score_reg[5]  ( .D(n88), .CLK(n51), .Q(
        out_global_score[5]) );
  DFFNEGX1 \dp_ALU/global_score_reg[4]  ( .D(n87), .CLK(n51), .Q(
        out_global_score[4]) );
  DFFNEGX1 \dp_ALU/global_score_reg[3]  ( .D(n86), .CLK(n51), .Q(
        out_global_score[3]) );
  DFFNEGX1 \dp_ALU/global_score_reg[2]  ( .D(n85), .CLK(n51), .Q(
        out_global_score[2]) );
  DFFNEGX1 \dp_ALU/global_score_reg[1]  ( .D(n84), .CLK(n51), .Q(
        out_global_score[1]) );
  DFFNEGX1 \dp_ALU/global_score_reg[0]  ( .D(n83), .CLK(n51), .Q(
        out_global_score[0]) );
  DFFNEGX1 \dp_ALU/win_reg  ( .D(\dp_ALU/n617 ), .CLK(n51), .Q(out_win) );
  DFFNEGX1 \dp_ALU/gameover_reg  ( .D(n81), .CLK(n50), .Q(out_gameover) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[0]  ( .D(\dp_ALU/n642 ), .CLK(n50), .Q(
        out_temp_cleared[0]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[1]  ( .D(\dp_ALU/n641 ), .CLK(n50), .Q(
        out_temp_cleared[1]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[2]  ( .D(\dp_ALU/n640 ), .CLK(n50), .Q(
        out_temp_cleared[2]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[3]  ( .D(\dp_ALU/n639 ), .CLK(n50), .Q(
        out_temp_cleared[3]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[4]  ( .D(\dp_ALU/n638 ), .CLK(n50), .Q(
        out_temp_cleared[4]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[5]  ( .D(\dp_ALU/n637 ), .CLK(n50), .Q(
        out_temp_cleared[5]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[6]  ( .D(\dp_ALU/n636 ), .CLK(n50), .Q(
        out_temp_cleared[6]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[7]  ( .D(\dp_ALU/n635 ), .CLK(n50), .Q(
        out_temp_cleared[7]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[8]  ( .D(\dp_ALU/n634 ), .CLK(n50), .Q(
        out_temp_cleared[8]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[9]  ( .D(\dp_ALU/n633 ), .CLK(n50), .Q(
        out_temp_cleared[9]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[10]  ( .D(\dp_ALU/n632 ), .CLK(n50), .Q(
        out_temp_cleared[10]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[11]  ( .D(\dp_ALU/n631 ), .CLK(n50), .Q(
        out_temp_cleared[11]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[12]  ( .D(\dp_ALU/n630 ), .CLK(n49), .Q(
        out_temp_cleared[12]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[13]  ( .D(\dp_ALU/n629 ), .CLK(n49), .Q(
        out_temp_cleared[13]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[14]  ( .D(\dp_ALU/n628 ), .CLK(n49), .Q(
        out_temp_cleared[14]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[15]  ( .D(\dp_ALU/n627 ), .CLK(n49), .Q(
        out_temp_cleared[15]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[16]  ( .D(\dp_ALU/n626 ), .CLK(n49), .Q(
        out_temp_cleared[16]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[17]  ( .D(\dp_ALU/n625 ), .CLK(n49), .Q(
        out_temp_cleared[17]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[18]  ( .D(\dp_ALU/n624 ), .CLK(n49), .Q(
        out_temp_cleared[18]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[19]  ( .D(\dp_ALU/n623 ), .CLK(n49), .Q(
        out_temp_cleared[19]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[20]  ( .D(\dp_ALU/n622 ), .CLK(n49), .Q(
        out_temp_cleared[20]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[21]  ( .D(\dp_ALU/n621 ), .CLK(n49), .Q(
        out_temp_cleared[21]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[22]  ( .D(\dp_ALU/n620 ), .CLK(n49), .Q(
        out_temp_cleared[22]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[23]  ( .D(\dp_ALU/n619 ), .CLK(n49), .Q(
        out_temp_cleared[23]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[24]  ( .D(\dp_ALU/n618 ), .CLK(n49), .Q(
        out_temp_cleared[24]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[0]  ( .D(\dp_ALU/n643 ), .CLK(n48), .Q(
        out_temp_decoded[0]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[1]  ( .D(\dp_ALU/n644 ), .CLK(n48), .Q(
        out_temp_decoded[1]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[2]  ( .D(\dp_ALU/n645 ), .CLK(n48), .Q(
        out_temp_decoded[2]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[3]  ( .D(\dp_ALU/n646 ), .CLK(n48), .Q(
        out_temp_decoded[3]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[4]  ( .D(\dp_ALU/n647 ), .CLK(n48), .Q(
        out_temp_decoded[4]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[5]  ( .D(\dp_ALU/n648 ), .CLK(n48), .Q(
        out_temp_decoded[5]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[6]  ( .D(\dp_ALU/n649 ), .CLK(n48), .Q(
        out_temp_decoded[6]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[7]  ( .D(\dp_ALU/n650 ), .CLK(n48), .Q(
        out_temp_decoded[7]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[8]  ( .D(\dp_ALU/n651 ), .CLK(n48), .Q(
        out_temp_decoded[8]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[9]  ( .D(\dp_ALU/n652 ), .CLK(n48), .Q(
        out_temp_decoded[9]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[10]  ( .D(\dp_ALU/n653 ), .CLK(n48), .Q(
        out_temp_decoded[10]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[11]  ( .D(\dp_ALU/n654 ), .CLK(n48), .Q(
        out_temp_decoded[11]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[12]  ( .D(\dp_ALU/n655 ), .CLK(n48), .Q(
        out_temp_decoded[12]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[13]  ( .D(\dp_ALU/n656 ), .CLK(n47), .Q(
        out_temp_decoded[13]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[14]  ( .D(\dp_ALU/n657 ), .CLK(n47), .Q(
        out_temp_decoded[14]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[15]  ( .D(\dp_ALU/n658 ), .CLK(n47), .Q(
        out_temp_decoded[15]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[16]  ( .D(\dp_ALU/n659 ), .CLK(n47), .Q(
        out_temp_decoded[16]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[17]  ( .D(\dp_ALU/n660 ), .CLK(n47), .Q(
        out_temp_decoded[17]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[18]  ( .D(\dp_ALU/n661 ), .CLK(n47), .Q(
        out_temp_decoded[18]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[19]  ( .D(\dp_ALU/n662 ), .CLK(n47), .Q(
        out_temp_decoded[19]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[20]  ( .D(\dp_ALU/n663 ), .CLK(n47), .Q(
        out_temp_decoded[20]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[21]  ( .D(\dp_ALU/n664 ), .CLK(n47), .Q(
        out_temp_decoded[21]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[22]  ( .D(\dp_ALU/n665 ), .CLK(n47), .Q(
        out_temp_decoded[22]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[23]  ( .D(\dp_ALU/n666 ), .CLK(n47), .Q(
        out_temp_decoded[23]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[24]  ( .D(\dp_ALU/n667 ), .CLK(n47), .Q(
        out_temp_decoded[24]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[0]  ( .D(\dp_ALU/n668 ), .CLK(n47), .Q(
        \dp_ALU/N1203 ) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[1]  ( .D(\dp_ALU/n669 ), .CLK(n46), .Q(
        out_temp_data_in[1]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[2]  ( .D(\dp_ALU/n670 ), .CLK(n46), .Q(
        out_temp_data_in[2]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[3]  ( .D(\dp_ALU/n671 ), .CLK(n46), .Q(
        out_temp_data_in[3]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[4]  ( .D(\dp_ALU/n672 ), .CLK(n46), .Q(
        out_temp_data_in[4]) );
  NAND3X1 \dp_RNG/U165  ( .A(n80), .B(n169), .C(\dp_RNG/temp_gen ), .Y(
        \dp_RNG/n46 ) );
  XNOR2X1 \dp_RNG/U164  ( .A(out_temp_mine_cnt[3]), .B(in_n_mines[3]), .Y(
        \dp_RNG/n131 ) );
  NOR2X1 \dp_RNG/U163  ( .A(out_start), .B(n18), .Y(\dp_RNG/n132 ) );
  NAND3X1 \dp_RNG/U162  ( .A(\dp_RNG/n131 ), .B(\dp_RNG/temp_gen ), .C(
        \dp_RNG/n132 ), .Y(\dp_RNG/n124 ) );
  XNOR2X1 \dp_RNG/U161  ( .A(out_temp_mine_cnt[1]), .B(in_n_mines[1]), .Y(
        \dp_RNG/n126 ) );
  XNOR2X1 \dp_RNG/U160  ( .A(out_temp_mine_cnt[0]), .B(in_n_mines[0]), .Y(
        \dp_RNG/n127 ) );
  XOR2X1 \dp_RNG/U159  ( .A(out_temp_mine_cnt[4]), .B(in_n_mines[4]), .Y(
        \dp_RNG/n129 ) );
  XOR2X1 \dp_RNG/U158  ( .A(out_temp_mine_cnt[2]), .B(in_n_mines[2]), .Y(
        \dp_RNG/n130 ) );
  NOR2X1 \dp_RNG/U157  ( .A(\dp_RNG/n129 ), .B(\dp_RNG/n130 ), .Y(
        \dp_RNG/n128 ) );
  NAND3X1 \dp_RNG/U156  ( .A(\dp_RNG/n126 ), .B(\dp_RNG/n127 ), .C(
        \dp_RNG/n128 ), .Y(\dp_RNG/n125 ) );
  OR2X1 \dp_RNG/U155  ( .A(\dp_RNG/n124 ), .B(\dp_RNG/n125 ), .Y(\dp_RNG/n45 )
         );
  NAND2X1 \dp_RNG/U154  ( .A(\dp_RNG/n45 ), .B(n80), .Y(\dp_RNG/n123 ) );
  NAND2X1 \dp_RNG/U153  ( .A(out_start), .B(n80), .Y(\dp_RNG/n115 ) );
  OAI21X1 \dp_RNG/U152  ( .A(n301), .B(\dp_RNG/n123 ), .C(\dp_RNG/n115 ), .Y(
        \dp_RNG/n163 ) );
  NOR2X1 \dp_RNG/U151  ( .A(n18), .B(n23), .Y(\dp_RNG/n118 ) );
  NAND2X1 \dp_RNG/U150  ( .A(out_temp_index[0]), .B(\dp_RNG/n118 ), .Y(
        \dp_RNG/n122 ) );
  OAI21X1 \dp_RNG/U149  ( .A(\dp_RNG/n46 ), .B(n320), .C(\dp_RNG/n122 ), .Y(
        \dp_RNG/n162 ) );
  NAND2X1 \dp_RNG/U148  ( .A(out_temp_index[1]), .B(\dp_RNG/n118 ), .Y(
        \dp_RNG/n121 ) );
  OAI21X1 \dp_RNG/U147  ( .A(\dp_RNG/n46 ), .B(n321), .C(\dp_RNG/n121 ), .Y(
        \dp_RNG/n161 ) );
  NOR2X1 \dp_RNG/U146  ( .A(n322), .B(\dp_RNG/n46 ), .Y(\dp_RNG/n100 ) );
  AOI21X1 \dp_RNG/U145  ( .A(\dp_RNG/n118 ), .B(out_temp_index[2]), .C(
        \dp_RNG/n100 ), .Y(\dp_RNG/n120 ) );
  NAND2X1 \dp_RNG/U144  ( .A(out_temp_index[3]), .B(\dp_RNG/n118 ), .Y(
        \dp_RNG/n119 ) );
  OAI21X1 \dp_RNG/U143  ( .A(\dp_RNG/n46 ), .B(n323), .C(\dp_RNG/n119 ), .Y(
        \dp_RNG/n160 ) );
  NAND2X1 \dp_RNG/U142  ( .A(out_temp_index[4]), .B(\dp_RNG/n118 ), .Y(
        \dp_RNG/n117 ) );
  OAI21X1 \dp_RNG/U141  ( .A(\dp_RNG/n46 ), .B(n324), .C(\dp_RNG/n117 ), .Y(
        \dp_RNG/n159 ) );
  NOR2X1 \dp_RNG/U140  ( .A(n116), .B(\dp_RNG/n46 ), .Y(\dp_RNG/n116 ) );
  NAND3X1 \dp_RNG/U139  ( .A(n321), .B(n322), .C(\dp_RNG/n116 ), .Y(
        \dp_RNG/n51 ) );
  NOR2X1 \dp_RNG/U138  ( .A(n121), .B(n122), .Y(\dp_RNG/n107 ) );
  OAI21X1 \dp_RNG/U137  ( .A(\dp_RNG/n51 ), .B(n120), .C(\dp_RNG/n50 ), .Y(
        \dp_RNG/n114 ) );
  NAND2X1 \dp_RNG/U136  ( .A(out_mines[0]), .B(n73), .Y(\dp_RNG/n113 ) );
  OAI21X1 \dp_RNG/U135  ( .A(n73), .B(\dp_RNG/n46 ), .C(\dp_RNG/n113 ), .Y(
        \dp_RNG/n158 ) );
  NOR2X1 \dp_RNG/U134  ( .A(\dp_RNG/n46 ), .B(n320), .Y(\dp_RNG/n112 ) );
  NAND3X1 \dp_RNG/U133  ( .A(n321), .B(n322), .C(\dp_RNG/n112 ), .Y(
        \dp_RNG/n72 ) );
  OAI21X1 \dp_RNG/U132  ( .A(\dp_RNG/n72 ), .B(n120), .C(n27), .Y(
        \dp_RNG/n111 ) );
  NAND2X1 \dp_RNG/U131  ( .A(out_mines[1]), .B(n77), .Y(\dp_RNG/n110 ) );
  OAI21X1 \dp_RNG/U130  ( .A(n77), .B(n22), .C(\dp_RNG/n110 ), .Y(
        \dp_RNG/n157 ) );
  NAND3X1 \dp_RNG/U129  ( .A(n23), .B(n322), .C(n117), .Y(\dp_RNG/n66 ) );
  NAND2X1 \dp_RNG/U128  ( .A(\dp_RNG/n107 ), .B(n320), .Y(\dp_RNG/n99 ) );
  OAI21X1 \dp_RNG/U127  ( .A(\dp_RNG/n66 ), .B(\dp_RNG/n99 ), .C(n27), .Y(
        \dp_RNG/n109 ) );
  NAND2X1 \dp_RNG/U126  ( .A(out_mines[2]), .B(n55), .Y(\dp_RNG/n108 ) );
  OAI21X1 \dp_RNG/U125  ( .A(n55), .B(n22), .C(\dp_RNG/n108 ), .Y(
        \dp_RNG/n156 ) );
  NAND2X1 \dp_RNG/U124  ( .A(\dp_RNG/n107 ), .B(n116), .Y(\dp_RNG/n96 ) );
  OAI21X1 \dp_RNG/U123  ( .A(\dp_RNG/n66 ), .B(\dp_RNG/n96 ), .C(n27), .Y(
        \dp_RNG/n106 ) );
  NAND2X1 \dp_RNG/U122  ( .A(out_mines[3]), .B(n56), .Y(\dp_RNG/n105 ) );
  OAI21X1 \dp_RNG/U121  ( .A(n56), .B(n22), .C(\dp_RNG/n105 ), .Y(
        \dp_RNG/n155 ) );
  NAND2X1 \dp_RNG/U120  ( .A(\dp_RNG/n100 ), .B(n321), .Y(\dp_RNG/n61 ) );
  OAI21X1 \dp_RNG/U119  ( .A(\dp_RNG/n61 ), .B(\dp_RNG/n99 ), .C(n27), .Y(
        \dp_RNG/n104 ) );
  NAND2X1 \dp_RNG/U118  ( .A(out_mines[4]), .B(n61), .Y(\dp_RNG/n103 ) );
  OAI21X1 \dp_RNG/U117  ( .A(n61), .B(n22), .C(\dp_RNG/n103 ), .Y(
        \dp_RNG/n154 ) );
  OAI21X1 \dp_RNG/U116  ( .A(\dp_RNG/n61 ), .B(\dp_RNG/n96 ), .C(n27), .Y(
        \dp_RNG/n102 ) );
  NAND2X1 \dp_RNG/U115  ( .A(out_mines[5]), .B(n62), .Y(\dp_RNG/n101 ) );
  OAI21X1 \dp_RNG/U114  ( .A(n62), .B(n22), .C(\dp_RNG/n101 ), .Y(
        \dp_RNG/n153 ) );
  NAND2X1 \dp_RNG/U113  ( .A(n117), .B(\dp_RNG/n100 ), .Y(\dp_RNG/n55 ) );
  OAI21X1 \dp_RNG/U112  ( .A(\dp_RNG/n55 ), .B(\dp_RNG/n99 ), .C(n27), .Y(
        \dp_RNG/n98 ) );
  NAND2X1 \dp_RNG/U111  ( .A(out_mines[6]), .B(n67), .Y(\dp_RNG/n97 ) );
  OAI21X1 \dp_RNG/U110  ( .A(n67), .B(n22), .C(\dp_RNG/n97 ), .Y(\dp_RNG/n152 ) );
  OAI21X1 \dp_RNG/U109  ( .A(\dp_RNG/n55 ), .B(\dp_RNG/n96 ), .C(n27), .Y(
        \dp_RNG/n95 ) );
  NAND2X1 \dp_RNG/U108  ( .A(out_mines[7]), .B(n68), .Y(\dp_RNG/n94 ) );
  OAI21X1 \dp_RNG/U107  ( .A(n68), .B(n22), .C(\dp_RNG/n94 ), .Y(\dp_RNG/n151 ) );
  NOR2X1 \dp_RNG/U106  ( .A(n323), .B(n122), .Y(\dp_RNG/n87 ) );
  OAI21X1 \dp_RNG/U105  ( .A(\dp_RNG/n51 ), .B(n118), .C(n27), .Y(\dp_RNG/n93 ) );
  NAND2X1 \dp_RNG/U104  ( .A(out_mines[8]), .B(n74), .Y(\dp_RNG/n92 ) );
  OAI21X1 \dp_RNG/U103  ( .A(n74), .B(n22), .C(\dp_RNG/n92 ), .Y(\dp_RNG/n150 ) );
  OAI21X1 \dp_RNG/U102  ( .A(\dp_RNG/n72 ), .B(n118), .C(n27), .Y(\dp_RNG/n91 ) );
  NAND2X1 \dp_RNG/U101  ( .A(out_mines[9]), .B(n78), .Y(\dp_RNG/n90 ) );
  OAI21X1 \dp_RNG/U100  ( .A(n78), .B(n22), .C(\dp_RNG/n90 ), .Y(\dp_RNG/n149 ) );
  NAND2X1 \dp_RNG/U99  ( .A(\dp_RNG/n87 ), .B(n320), .Y(\dp_RNG/n80 ) );
  OAI21X1 \dp_RNG/U98  ( .A(\dp_RNG/n66 ), .B(\dp_RNG/n80 ), .C(n27), .Y(
        \dp_RNG/n89 ) );
  NAND2X1 \dp_RNG/U97  ( .A(out_mines[10]), .B(n57), .Y(\dp_RNG/n88 ) );
  OAI21X1 \dp_RNG/U96  ( .A(n57), .B(n22), .C(\dp_RNG/n88 ), .Y(\dp_RNG/n148 )
         );
  NAND2X1 \dp_RNG/U95  ( .A(\dp_RNG/n87 ), .B(n116), .Y(\dp_RNG/n77 ) );
  OAI21X1 \dp_RNG/U94  ( .A(\dp_RNG/n66 ), .B(\dp_RNG/n77 ), .C(n27), .Y(
        \dp_RNG/n86 ) );
  NAND2X1 \dp_RNG/U93  ( .A(out_mines[11]), .B(n58), .Y(\dp_RNG/n85 ) );
  OAI21X1 \dp_RNG/U92  ( .A(n58), .B(n22), .C(\dp_RNG/n85 ), .Y(\dp_RNG/n147 )
         );
  OAI21X1 \dp_RNG/U91  ( .A(\dp_RNG/n61 ), .B(\dp_RNG/n80 ), .C(n27), .Y(
        \dp_RNG/n84 ) );
  NAND2X1 \dp_RNG/U90  ( .A(out_mines[12]), .B(n63), .Y(\dp_RNG/n83 ) );
  OAI21X1 \dp_RNG/U89  ( .A(n63), .B(\dp_RNG/n46 ), .C(\dp_RNG/n83 ), .Y(
        \dp_RNG/n146 ) );
  OAI21X1 \dp_RNG/U88  ( .A(\dp_RNG/n61 ), .B(\dp_RNG/n77 ), .C(n26), .Y(
        \dp_RNG/n82 ) );
  NAND2X1 \dp_RNG/U87  ( .A(out_mines[13]), .B(n64), .Y(\dp_RNG/n81 ) );
  OAI21X1 \dp_RNG/U86  ( .A(n64), .B(\dp_RNG/n46 ), .C(\dp_RNG/n81 ), .Y(
        \dp_RNG/n145 ) );
  OAI21X1 \dp_RNG/U85  ( .A(\dp_RNG/n55 ), .B(\dp_RNG/n80 ), .C(n26), .Y(
        \dp_RNG/n79 ) );
  NAND2X1 \dp_RNG/U84  ( .A(out_mines[14]), .B(n69), .Y(\dp_RNG/n78 ) );
  OAI21X1 \dp_RNG/U83  ( .A(n69), .B(\dp_RNG/n46 ), .C(\dp_RNG/n78 ), .Y(
        \dp_RNG/n144 ) );
  OAI21X1 \dp_RNG/U82  ( .A(\dp_RNG/n55 ), .B(\dp_RNG/n77 ), .C(n26), .Y(
        \dp_RNG/n76 ) );
  NAND2X1 \dp_RNG/U81  ( .A(out_mines[15]), .B(n70), .Y(\dp_RNG/n75 ) );
  OAI21X1 \dp_RNG/U80  ( .A(n70), .B(\dp_RNG/n46 ), .C(\dp_RNG/n75 ), .Y(
        \dp_RNG/n143 ) );
  NOR2X1 \dp_RNG/U79  ( .A(n324), .B(n121), .Y(\dp_RNG/n67 ) );
  OAI21X1 \dp_RNG/U78  ( .A(\dp_RNG/n51 ), .B(n119), .C(n26), .Y(\dp_RNG/n74 )
         );
  NAND2X1 \dp_RNG/U77  ( .A(out_mines[16]), .B(n75), .Y(\dp_RNG/n73 ) );
  OAI21X1 \dp_RNG/U76  ( .A(n75), .B(n22), .C(\dp_RNG/n73 ), .Y(\dp_RNG/n142 )
         );
  OAI21X1 \dp_RNG/U75  ( .A(n119), .B(\dp_RNG/n72 ), .C(n26), .Y(\dp_RNG/n71 )
         );
  NAND2X1 \dp_RNG/U74  ( .A(out_mines[17]), .B(n79), .Y(\dp_RNG/n70 ) );
  OAI21X1 \dp_RNG/U73  ( .A(n79), .B(n22), .C(\dp_RNG/n70 ), .Y(\dp_RNG/n141 )
         );
  NAND2X1 \dp_RNG/U72  ( .A(\dp_RNG/n67 ), .B(n320), .Y(\dp_RNG/n58 ) );
  OAI21X1 \dp_RNG/U71  ( .A(\dp_RNG/n58 ), .B(\dp_RNG/n66 ), .C(n26), .Y(
        \dp_RNG/n69 ) );
  NAND2X1 \dp_RNG/U70  ( .A(out_mines[18]), .B(n59), .Y(\dp_RNG/n68 ) );
  OAI21X1 \dp_RNG/U69  ( .A(n59), .B(n22), .C(\dp_RNG/n68 ), .Y(\dp_RNG/n140 )
         );
  NAND2X1 \dp_RNG/U68  ( .A(n116), .B(\dp_RNG/n67 ), .Y(\dp_RNG/n54 ) );
  OAI21X1 \dp_RNG/U67  ( .A(\dp_RNG/n54 ), .B(\dp_RNG/n66 ), .C(n26), .Y(
        \dp_RNG/n65 ) );
  NAND2X1 \dp_RNG/U66  ( .A(out_mines[19]), .B(n60), .Y(\dp_RNG/n64 ) );
  OAI21X1 \dp_RNG/U65  ( .A(n60), .B(n22), .C(\dp_RNG/n64 ), .Y(\dp_RNG/n139 )
         );
  OAI21X1 \dp_RNG/U64  ( .A(\dp_RNG/n58 ), .B(\dp_RNG/n61 ), .C(n26), .Y(
        \dp_RNG/n63 ) );
  NAND2X1 \dp_RNG/U63  ( .A(out_mines[20]), .B(n65), .Y(\dp_RNG/n62 ) );
  OAI21X1 \dp_RNG/U62  ( .A(n65), .B(n22), .C(\dp_RNG/n62 ), .Y(\dp_RNG/n138 )
         );
  OAI21X1 \dp_RNG/U61  ( .A(\dp_RNG/n54 ), .B(\dp_RNG/n61 ), .C(n26), .Y(
        \dp_RNG/n60 ) );
  NAND2X1 \dp_RNG/U60  ( .A(out_mines[21]), .B(n66), .Y(\dp_RNG/n59 ) );
  OAI21X1 \dp_RNG/U59  ( .A(n66), .B(n22), .C(\dp_RNG/n59 ), .Y(\dp_RNG/n137 )
         );
  OAI21X1 \dp_RNG/U58  ( .A(\dp_RNG/n55 ), .B(\dp_RNG/n58 ), .C(n26), .Y(
        \dp_RNG/n57 ) );
  NAND2X1 \dp_RNG/U57  ( .A(out_mines[22]), .B(n71), .Y(\dp_RNG/n56 ) );
  OAI21X1 \dp_RNG/U56  ( .A(n71), .B(n22), .C(\dp_RNG/n56 ), .Y(\dp_RNG/n136 )
         );
  OAI21X1 \dp_RNG/U55  ( .A(\dp_RNG/n54 ), .B(\dp_RNG/n55 ), .C(n26), .Y(
        \dp_RNG/n53 ) );
  NAND2X1 \dp_RNG/U54  ( .A(out_mines[23]), .B(n72), .Y(\dp_RNG/n52 ) );
  OAI21X1 \dp_RNG/U53  ( .A(n72), .B(n22), .C(\dp_RNG/n52 ), .Y(\dp_RNG/n135 )
         );
  OR2X1 \dp_RNG/U52  ( .A(n323), .B(\dp_RNG/n51 ), .Y(\dp_RNG/n49 ) );
  OAI21X1 \dp_RNG/U51  ( .A(n324), .B(\dp_RNG/n49 ), .C(n26), .Y(\dp_RNG/n48 )
         );
  NAND2X1 \dp_RNG/U50  ( .A(out_mines[24]), .B(n76), .Y(\dp_RNG/n47 ) );
  OAI21X1 \dp_RNG/U49  ( .A(n76), .B(n22), .C(\dp_RNG/n47 ), .Y(\dp_RNG/n134 )
         );
  NAND3X1 \dp_RNG/U48  ( .A(out_start), .B(n80), .C(out_place_done), .Y(
        \dp_RNG/n44 ) );
  NAND2X1 \dp_RNG/U47  ( .A(\dp_RNG/n44 ), .B(\dp_RNG/n45 ), .Y(\dp_RNG/n133 )
         );
  AND2X2 \dp_RNG/U8  ( .A(n272), .B(n24), .Y(\dp_RNG/N102 ) );
  AND2X2 \dp_RNG/U7  ( .A(\dp_RNG/N66 ), .B(n24), .Y(\dp_RNG/N103 ) );
  AND2X2 \dp_RNG/U6  ( .A(\dp_RNG/N67 ), .B(n23), .Y(\dp_RNG/N104 ) );
  AND2X2 \dp_RNG/U5  ( .A(\dp_RNG/N68 ), .B(n23), .Y(\dp_RNG/N105 ) );
  AND2X2 \dp_RNG/U4  ( .A(\dp_RNG/N69 ), .B(n23), .Y(\dp_RNG/N106 ) );
  AND2X2 \dp_RNG/U3  ( .A(n80), .B(\dp_RNG/n115 ), .Y(\dp_RNG/n50 ) );
  DFFNEGX1 \dp_RNG/place_done_reg  ( .D(\dp_RNG/n133 ), .CLK(n15), .Q(
        out_place_done) );
  DFFNEGX1 \dp_RNG/temp_mine_cnt_reg[4]  ( .D(\dp_RNG/N106 ), .CLK(n46), .Q(
        out_temp_mine_cnt[4]) );
  DFFNEGX1 \dp_RNG/temp_mine_cnt_reg[3]  ( .D(\dp_RNG/N105 ), .CLK(n46), .Q(
        out_temp_mine_cnt[3]) );
  DFFNEGX1 \dp_RNG/temp_mine_cnt_reg[2]  ( .D(\dp_RNG/N104 ), .CLK(n46), .Q(
        out_temp_mine_cnt[2]) );
  DFFNEGX1 \dp_RNG/temp_mine_cnt_reg[1]  ( .D(\dp_RNG/N103 ), .CLK(n46), .Q(
        out_temp_mine_cnt[1]) );
  DFFNEGX1 \dp_RNG/temp_mine_cnt_reg[0]  ( .D(\dp_RNG/N102 ), .CLK(n46), .Q(
        out_temp_mine_cnt[0]) );
  DFFNEGX1 \dp_RNG/mines_reg[2]  ( .D(\dp_RNG/n156 ), .CLK(n46), .Q(
        out_mines[2]) );
  DFFNEGX1 \dp_RNG/mines_reg[3]  ( .D(\dp_RNG/n155 ), .CLK(n46), .Q(
        out_mines[3]) );
  DFFNEGX1 \dp_RNG/mines_reg[10]  ( .D(\dp_RNG/n148 ), .CLK(n46), .Q(
        out_mines[10]) );
  DFFNEGX1 \dp_RNG/mines_reg[11]  ( .D(\dp_RNG/n147 ), .CLK(n46), .Q(
        out_mines[11]) );
  DFFNEGX1 \dp_RNG/mines_reg[18]  ( .D(\dp_RNG/n140 ), .CLK(n45), .Q(
        out_mines[18]) );
  DFFNEGX1 \dp_RNG/mines_reg[19]  ( .D(\dp_RNG/n139 ), .CLK(n45), .Q(
        out_mines[19]) );
  DFFNEGX1 \dp_RNG/mines_reg[24]  ( .D(\dp_RNG/n134 ), .CLK(n45), .Q(
        out_mines[24]) );
  DFFNEGX1 \dp_RNG/mines_reg[17]  ( .D(\dp_RNG/n141 ), .CLK(n45), .Q(
        out_mines[17]) );
  DFFNEGX1 \dp_RNG/mines_reg[16]  ( .D(\dp_RNG/n142 ), .CLK(n45), .Q(
        out_mines[16]) );
  DFFNEGX1 \dp_RNG/mines_reg[20]  ( .D(\dp_RNG/n138 ), .CLK(n45), .Q(
        out_mines[20]) );
  DFFNEGX1 \dp_RNG/mines_reg[22]  ( .D(\dp_RNG/n136 ), .CLK(n45), .Q(
        out_mines[22]) );
  DFFNEGX1 \dp_RNG/mines_reg[21]  ( .D(\dp_RNG/n137 ), .CLK(n45), .Q(
        out_mines[21]) );
  DFFNEGX1 \dp_RNG/mines_reg[23]  ( .D(\dp_RNG/n135 ), .CLK(n45), .Q(
        out_mines[23]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[4]  ( .D(\dp_RNG/n159 ), .CLK(n45), .Q(
        out_temp_index[4]) );
  DFFNEGX1 \dp_RNG/mines_reg[9]  ( .D(\dp_RNG/n149 ), .CLK(n45), .Q(
        out_mines[9]) );
  DFFNEGX1 \dp_RNG/mines_reg[8]  ( .D(\dp_RNG/n150 ), .CLK(n45), .Q(
        out_mines[8]) );
  DFFNEGX1 \dp_RNG/mines_reg[12]  ( .D(\dp_RNG/n146 ), .CLK(n45), .Q(
        out_mines[12]) );
  DFFNEGX1 \dp_RNG/mines_reg[14]  ( .D(\dp_RNG/n144 ), .CLK(n44), .Q(
        out_mines[14]) );
  DFFNEGX1 \dp_RNG/mines_reg[13]  ( .D(\dp_RNG/n145 ), .CLK(n44), .Q(
        out_mines[13]) );
  DFFNEGX1 \dp_RNG/mines_reg[15]  ( .D(\dp_RNG/n143 ), .CLK(n44), .Q(
        out_mines[15]) );
  DFFNEGX1 \dp_RNG/mines_reg[1]  ( .D(\dp_RNG/n157 ), .CLK(n44), .Q(
        out_mines[1]) );
  DFFNEGX1 \dp_RNG/mines_reg[0]  ( .D(\dp_RNG/n158 ), .CLK(n44), .Q(
        out_mines[0]) );
  DFFNEGX1 \dp_RNG/mines_reg[4]  ( .D(\dp_RNG/n154 ), .CLK(n44), .Q(
        out_mines[4]) );
  DFFNEGX1 \dp_RNG/mines_reg[6]  ( .D(\dp_RNG/n152 ), .CLK(n44), .Q(
        out_mines[6]) );
  DFFNEGX1 \dp_RNG/mines_reg[5]  ( .D(\dp_RNG/n153 ), .CLK(n44), .Q(
        out_mines[5]) );
  DFFNEGX1 \dp_RNG/mines_reg[7]  ( .D(\dp_RNG/n151 ), .CLK(n44), .Q(
        out_mines[7]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[3]  ( .D(\dp_RNG/n160 ), .CLK(n44), .Q(
        out_temp_index[3]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[2]  ( .D(n54), .CLK(n44), .Q(
        out_temp_index[2]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[1]  ( .D(\dp_RNG/n161 ), .CLK(n44), .Q(
        out_temp_index[1]) );
  DFFNEGX1 \dp_RNG/temp_index_reg[0]  ( .D(\dp_RNG/n162 ), .CLK(n44), .Q(
        out_temp_index[0]) );
  DFFNEGX1 \dp_RNG/temp_gen_reg  ( .D(\dp_RNG/n163 ), .CLK(n15), .Q(
        \dp_RNG/temp_gen ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/U4  ( .A(n126), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n3 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n2 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[0][4] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/U5  ( .A(n123), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n4 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n3 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[0][3] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/U4  ( .A(n131), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n3 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n2 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[1][4] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/U5  ( .A(n129), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n4 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n3 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[1][3] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/U4  ( .A(n136), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n3 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n2 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[2][4] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/U5  ( .A(n135), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n4 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n3 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[2][3] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/U4  ( .A(n141), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n3 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n2 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[3][4] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/U5  ( .A(n138), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n4 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n3 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[3][3] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/U4  ( .A(n146), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n3 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n2 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[4][4] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/U5  ( .A(n144), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n4 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n3 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[4][3] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/U4  ( .A(n151), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n3 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n2 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[5][4] ) );
  HAX1 \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/U5  ( .A(n150), .B(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n4 ), .YC(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n3 ), .YS(
        \dp_RNG/rem_48/u_div/SumTmp[5][3] ) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_0_0  ( .B(\dp_RNG/N29 ), .A(n164), 
        .S(\dp_RNG/rem_48/quotient [0]), .Y(n320) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_0_1  ( .B(n124), .A(
        \dp_RNG/rem_48/u_div/SumTmp[0][1] ), .S(\dp_RNG/rem_48/quotient [0]), 
        .Y(n321) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_0_2  ( .B(n125), .A(
        \dp_RNG/rem_48/u_div/SumTmp[0][2] ), .S(\dp_RNG/rem_48/quotient [0]), 
        .Y(n322) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_0_3  ( .B(n123), .A(
        \dp_RNG/rem_48/u_div/SumTmp[0][3] ), .S(\dp_RNG/rem_48/quotient [0]), 
        .Y(n323) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_0_4  ( .B(n126), .A(
        \dp_RNG/rem_48/u_div/SumTmp[0][4] ), .S(\dp_RNG/rem_48/quotient [0]), 
        .Y(n324) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_1_0  ( .B(\dp_RNG/N30 ), .A(n162), 
        .S(\dp_RNG/rem_48/quotient [1]), .Y(n325) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_1_1  ( .B(n130), .A(
        \dp_RNG/rem_48/u_div/SumTmp[1][1] ), .S(\dp_RNG/rem_48/quotient [1]), 
        .Y(n326) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_1_2  ( .B(n128), .A(
        \dp_RNG/rem_48/u_div/SumTmp[1][2] ), .S(\dp_RNG/rem_48/quotient [1]), 
        .Y(n327) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_1_3  ( .B(n129), .A(
        \dp_RNG/rem_48/u_div/SumTmp[1][3] ), .S(\dp_RNG/rem_48/quotient [1]), 
        .Y(n328) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_1_4  ( .B(n131), .A(
        \dp_RNG/rem_48/u_div/SumTmp[1][4] ), .S(\dp_RNG/rem_48/quotient [1]), 
        .Y(n329) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_2_0  ( .B(\dp_RNG/N31 ), .A(n160), 
        .S(\dp_RNG/rem_48/quotient [2]), .Y(n330) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_2_1  ( .B(n133), .A(
        \dp_RNG/rem_48/u_div/SumTmp[2][1] ), .S(\dp_RNG/rem_48/quotient [2]), 
        .Y(n331) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_2_2  ( .B(n134), .A(
        \dp_RNG/rem_48/u_div/SumTmp[2][2] ), .S(\dp_RNG/rem_48/quotient [2]), 
        .Y(n332) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_2_3  ( .B(n135), .A(
        \dp_RNG/rem_48/u_div/SumTmp[2][3] ), .S(\dp_RNG/rem_48/quotient [2]), 
        .Y(n333) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_2_4  ( .B(n136), .A(
        \dp_RNG/rem_48/u_div/SumTmp[2][4] ), .S(\dp_RNG/rem_48/quotient [2]), 
        .Y(n334) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_3_0  ( .B(\dp_RNG/N32 ), .A(n158), 
        .S(\dp_RNG/rem_48/quotient [3]), .Y(n335) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_3_1  ( .B(n139), .A(
        \dp_RNG/rem_48/u_div/SumTmp[3][1] ), .S(\dp_RNG/rem_48/quotient [3]), 
        .Y(n336) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_3_2  ( .B(n140), .A(
        \dp_RNG/rem_48/u_div/SumTmp[3][2] ), .S(\dp_RNG/rem_48/quotient [3]), 
        .Y(n337) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_3_3  ( .B(n138), .A(
        \dp_RNG/rem_48/u_div/SumTmp[3][3] ), .S(\dp_RNG/rem_48/quotient [3]), 
        .Y(n338) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_3_4  ( .B(n141), .A(
        \dp_RNG/rem_48/u_div/SumTmp[3][4] ), .S(\dp_RNG/rem_48/quotient [3]), 
        .Y(n339) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_4_0  ( .B(\dp_RNG/N33 ), .A(n156), 
        .S(\dp_RNG/rem_48/quotient [4]), .Y(n340) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_4_1  ( .B(n145), .A(
        \dp_RNG/rem_48/u_div/SumTmp[4][1] ), .S(\dp_RNG/rem_48/quotient [4]), 
        .Y(n341) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_4_2  ( .B(n143), .A(
        \dp_RNG/rem_48/u_div/SumTmp[4][2] ), .S(\dp_RNG/rem_48/quotient [4]), 
        .Y(n342) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_4_3  ( .B(n144), .A(
        \dp_RNG/rem_48/u_div/SumTmp[4][3] ), .S(\dp_RNG/rem_48/quotient [4]), 
        .Y(n343) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_4_4  ( .B(n146), .A(
        \dp_RNG/rem_48/u_div/SumTmp[4][4] ), .S(\dp_RNG/rem_48/quotient [4]), 
        .Y(n344) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_5_0  ( .B(\dp_RNG/N34 ), .A(n155), 
        .S(\dp_RNG/rem_48/quotient [5]), .Y(n345) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_5_1  ( .B(n148), .A(
        \dp_RNG/rem_48/u_div/SumTmp[5][1] ), .S(\dp_RNG/rem_48/quotient [5]), 
        .Y(n346) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_5_2  ( .B(n149), .A(
        \dp_RNG/rem_48/u_div/SumTmp[5][2] ), .S(\dp_RNG/rem_48/quotient [5]), 
        .Y(n347) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_5_3  ( .B(n150), .A(
        \dp_RNG/rem_48/u_div/SumTmp[5][3] ), .S(\dp_RNG/rem_48/quotient [5]), 
        .Y(n348) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_5_4  ( .B(n151), .A(
        \dp_RNG/rem_48/u_div/SumTmp[5][4] ), .S(\dp_RNG/rem_48/quotient [5]), 
        .Y(n349) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_6_0  ( .B(\dp_RNG/N35 ), .A(n154), 
        .S(\dp_RNG/rem_48/quotient [6]), .Y(n350) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_6_1  ( .B(\dp_RNG/N36 ), .A(
        \dp_RNG/rem_48/u_div/SumTmp[6][1] ), .S(\dp_RNG/rem_48/quotient [6]), 
        .Y(n351) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_6_2  ( .B(\dp_RNG/N37 ), .A(
        \dp_RNG/rem_48/u_div/SumTmp[6][2] ), .S(\dp_RNG/rem_48/quotient [6]), 
        .Y(n352) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_6_3  ( .B(\dp_RNG/N38 ), .A(
        \dp_RNG/rem_48/u_div/SumTmp[6][3] ), .S(\dp_RNG/rem_48/quotient [6]), 
        .Y(n353) );
  MUX2X1 \dp_RNG/rem_48/u_div/u_mx_PartRem_0_6_4  ( .B(\dp_RNG/N39 ), .A(
        \dp_RNG/rem_48/u_div/SumTmp[6][4] ), .S(\dp_RNG/rem_48/quotient [6]), 
        .Y(n354) );
  HAX1 \dp_RNG/add_50/U1_1_1  ( .A(out_temp_mine_cnt[1]), .B(
        out_temp_mine_cnt[0]), .YC(\dp_RNG/add_50/carry [2]), .YS(\dp_RNG/N66 ) );
  HAX1 \dp_RNG/add_50/U1_1_2  ( .A(out_temp_mine_cnt[2]), .B(
        \dp_RNG/add_50/carry [2]), .YC(\dp_RNG/add_50/carry [3]), .YS(
        \dp_RNG/N67 ) );
  HAX1 \dp_RNG/add_50/U1_1_3  ( .A(out_temp_mine_cnt[3]), .B(
        \dp_RNG/add_50/carry [3]), .YC(\dp_RNG/add_50/carry [4]), .YS(
        \dp_RNG/N68 ) );
  HAX1 \dp_RNG/dp_cluster_0/mult_48/U21  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n55 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n51 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n31 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n32 ) );
  HAX1 \dp_RNG/dp_cluster_0/mult_48/U20  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n46 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n42 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n29 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n30 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U19  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n54 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n50 ), .C(
        \dp_RNG/dp_cluster_0/mult_48/n31 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n27 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n28 ) );
  HAX1 \dp_RNG/dp_cluster_0/mult_48/U18  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n41 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n37 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n25 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n26 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U17  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n53 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n45 ), .C(
        \dp_RNG/dp_cluster_0/mult_48/n49 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n23 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n24 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U16  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n29 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n26 ), .C(
        \dp_RNG/dp_cluster_0/mult_48/n24 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n21 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n22 ) );
  HAX1 \dp_RNG/dp_cluster_0/mult_48/U15  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n40 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n36 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n19 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n20 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U14  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n48 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n44 ), .C(
        \dp_RNG/dp_cluster_0/mult_48/n25 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n17 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n18 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U13  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n20 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n23 ), .C(
        \dp_RNG/dp_cluster_0/mult_48/n18 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n15 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n16 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U12  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n43 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n35 ), .C(
        \dp_RNG/dp_cluster_0/mult_48/n39 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n13 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n14 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U11  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n19 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n14 ), .C(
        \dp_RNG/dp_cluster_0/mult_48/n17 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n11 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n12 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U10  ( .A(
        \dp_RNG/dp_cluster_0/mult_48/n38 ), .B(
        \dp_RNG/dp_cluster_0/mult_48/n34 ), .C(
        \dp_RNG/dp_cluster_0/mult_48/n13 ), .YC(
        \dp_RNG/dp_cluster_0/mult_48/n9 ), .YS(
        \dp_RNG/dp_cluster_0/mult_48/n10 ) );
  HAX1 \dp_RNG/dp_cluster_0/mult_48/U9  ( .A(\dp_RNG/dp_cluster_0/mult_48/n52 ), .B(\dp_RNG/dp_cluster_0/mult_48/n56 ), .YC(\dp_RNG/dp_cluster_0/mult_48/n8 ), 
        .YS(\dp_RNG/dp_cluster_0/N20 ) );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U8  ( .A(\dp_RNG/dp_cluster_0/mult_48/n47 ), .B(\dp_RNG/dp_cluster_0/mult_48/n8 ), .C(\dp_RNG/dp_cluster_0/mult_48/n32 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_48/n7 ), .YS(\dp_RNG/dp_cluster_0/N21 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U7  ( .A(\dp_RNG/dp_cluster_0/mult_48/n30 ), .B(\dp_RNG/dp_cluster_0/mult_48/n28 ), .C(\dp_RNG/dp_cluster_0/mult_48/n7 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_48/n6 ), .YS(\dp_RNG/dp_cluster_0/N22 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U6  ( .A(\dp_RNG/dp_cluster_0/mult_48/n27 ), .B(\dp_RNG/dp_cluster_0/mult_48/n22 ), .C(\dp_RNG/dp_cluster_0/mult_48/n6 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_48/n5 ), .YS(\dp_RNG/dp_cluster_0/N23 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U5  ( .A(\dp_RNG/dp_cluster_0/mult_48/n21 ), .B(\dp_RNG/dp_cluster_0/mult_48/n16 ), .C(\dp_RNG/dp_cluster_0/mult_48/n5 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_48/n4 ), .YS(\dp_RNG/dp_cluster_0/N24 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U4  ( .A(\dp_RNG/dp_cluster_0/mult_48/n15 ), .B(\dp_RNG/dp_cluster_0/mult_48/n12 ), .C(\dp_RNG/dp_cluster_0/mult_48/n4 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_48/n3 ), .YS(\dp_RNG/dp_cluster_0/N25 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U3  ( .A(\dp_RNG/dp_cluster_0/mult_48/n10 ), .B(\dp_RNG/dp_cluster_0/mult_48/n11 ), .C(\dp_RNG/dp_cluster_0/mult_48/n3 ), 
        .YC(\dp_RNG/dp_cluster_0/mult_48/n2 ), .YS(\dp_RNG/dp_cluster_0/N26 )
         );
  FAX1 \dp_RNG/dp_cluster_0/mult_48/U2  ( .A(\dp_RNG/dp_cluster_0/mult_48/n33 ), .B(\dp_RNG/dp_cluster_0/mult_48/n9 ), .C(\dp_RNG/dp_cluster_0/mult_48/n2 ), 
        .YC(\dp_RNG/dp_cluster_0/N28 ), .YS(\dp_RNG/dp_cluster_0/N27 ) );
  FAX1 \dp_RNG/dp_cluster_0/add_48/U1_1  ( .A(\dp_RNG/dp_cluster_0/N20 ), .B(
        in_incr[1]), .C(n5), .YC(\dp_RNG/dp_cluster_0/add_48/carry [2]), .YS(
        \dp_RNG/N30 ) );
  FAX1 \dp_RNG/dp_cluster_0/add_48/U1_2  ( .A(\dp_RNG/dp_cluster_0/N21 ), .B(
        in_incr[2]), .C(\dp_RNG/dp_cluster_0/add_48/carry [2]), .YC(
        \dp_RNG/dp_cluster_0/add_48/carry [3]), .YS(\dp_RNG/N31 ) );
  FAX1 \dp_RNG/dp_cluster_0/add_48/U1_3  ( .A(\dp_RNG/dp_cluster_0/N22 ), .B(
        in_incr[3]), .C(\dp_RNG/dp_cluster_0/add_48/carry [3]), .YC(
        \dp_RNG/dp_cluster_0/add_48/carry [4]), .YS(\dp_RNG/N32 ) );
  FAX1 \dp_RNG/dp_cluster_0/add_48/U1_4  ( .A(\dp_RNG/dp_cluster_0/N23 ), .B(
        in_incr[4]), .C(\dp_RNG/dp_cluster_0/add_48/carry [4]), .YC(
        \dp_RNG/dp_cluster_0/add_48/carry [5]), .YS(\dp_RNG/N33 ) );
  HAX1 \dp_ALU/add_115/U1_1_1  ( .A(out_global_score[1]), .B(
        out_global_score[0]), .YC(\dp_ALU/add_115/carry [2]), .YS(
        \dp_ALU/N1931 ) );
  HAX1 \dp_ALU/add_115/U1_1_2  ( .A(out_global_score[2]), .B(
        \dp_ALU/add_115/carry [2]), .YC(\dp_ALU/add_115/carry [3]), .YS(
        \dp_ALU/N1932 ) );
  HAX1 \dp_ALU/add_115/U1_1_3  ( .A(out_global_score[3]), .B(
        \dp_ALU/add_115/carry [3]), .YC(\dp_ALU/add_115/carry [4]), .YS(
        \dp_ALU/N1933 ) );
  HAX1 \dp_ALU/add_115/U1_1_4  ( .A(out_global_score[4]), .B(
        \dp_ALU/add_115/carry [4]), .YC(\dp_ALU/add_115/carry [5]), .YS(
        \dp_ALU/N1934 ) );
  HAX1 \dp_ALU/add_115/U1_1_5  ( .A(out_global_score[5]), .B(
        \dp_ALU/add_115/carry [5]), .YC(\dp_ALU/add_115/carry [6]), .YS(
        \dp_ALU/N1935 ) );
  HAX1 \dp_ALU/add_115/U1_1_6  ( .A(out_global_score[6]), .B(
        \dp_ALU/add_115/carry [6]), .YC(\dp_ALU/add_115/carry [7]), .YS(
        \dp_ALU/N1936 ) );
  HAX1 \dp_ALU/add_115/U1_1_7  ( .A(out_global_score[7]), .B(
        \dp_ALU/add_115/carry [7]), .YC(\dp_ALU/add_115/carry [8]), .YS(
        \dp_ALU/N1937 ) );
  HAX1 \dp_ALU/add_115/U1_1_8  ( .A(out_global_score[8]), .B(
        \dp_ALU/add_115/carry [8]), .YC(\dp_ALU/add_115/carry [9]), .YS(
        \dp_ALU/N1938 ) );
  HAX1 \dp_ALU/add_115/U1_1_9  ( .A(out_global_score[9]), .B(
        \dp_ALU/add_115/carry [9]), .YC(\dp_ALU/add_115/carry [10]), .YS(
        \dp_ALU/N1939 ) );
  HAX1 \dp_ALU/add_115/U1_1_10  ( .A(out_global_score[10]), .B(
        \dp_ALU/add_115/carry [10]), .YC(\dp_ALU/add_115/carry [11]), .YS(
        \dp_ALU/N1940 ) );
  HAX1 \dp_ALU/add_115/U1_1_11  ( .A(out_global_score[11]), .B(
        \dp_ALU/add_115/carry [11]), .YC(\dp_ALU/add_115/carry [12]), .YS(
        \dp_ALU/N1941 ) );
  HAX1 \dp_ALU/add_115/U1_1_12  ( .A(out_global_score[12]), .B(
        \dp_ALU/add_115/carry [12]), .YC(\dp_ALU/add_115/carry [13]), .YS(
        \dp_ALU/N1942 ) );
  HAX1 \dp_ALU/add_115/U1_1_13  ( .A(out_global_score[13]), .B(
        \dp_ALU/add_115/carry [13]), .YC(\dp_ALU/add_115/carry [14]), .YS(
        \dp_ALU/N1943 ) );
  HAX1 \dp_ALU/add_115/U1_1_14  ( .A(out_global_score[14]), .B(
        \dp_ALU/add_115/carry [14]), .YC(\dp_ALU/add_115/carry [15]), .YS(
        \dp_ALU/N1944 ) );
  HAX1 \dp_ALU/add_115/U1_1_15  ( .A(out_global_score[15]), .B(
        \dp_ALU/add_115/carry [15]), .YC(\dp_ALU/add_115/carry [16]), .YS(
        \dp_ALU/N1945 ) );
  HAX1 \dp_ALU/add_115/U1_1_16  ( .A(out_global_score[16]), .B(
        \dp_ALU/add_115/carry [16]), .YC(\dp_ALU/add_115/carry [17]), .YS(
        \dp_ALU/N1946 ) );
  HAX1 \dp_ALU/add_115/U1_1_17  ( .A(out_global_score[17]), .B(
        \dp_ALU/add_115/carry [17]), .YC(\dp_ALU/add_115/carry [18]), .YS(
        \dp_ALU/N1947 ) );
  HAX1 \dp_ALU/add_115/U1_1_18  ( .A(out_global_score[18]), .B(
        \dp_ALU/add_115/carry [18]), .YC(\dp_ALU/add_115/carry [19]), .YS(
        \dp_ALU/N1948 ) );
  HAX1 \dp_ALU/add_115/U1_1_19  ( .A(out_global_score[19]), .B(
        \dp_ALU/add_115/carry [19]), .YC(\dp_ALU/add_115/carry [20]), .YS(
        \dp_ALU/N1949 ) );
  HAX1 \dp_ALU/add_115/U1_1_20  ( .A(out_global_score[20]), .B(
        \dp_ALU/add_115/carry [20]), .YC(\dp_ALU/add_115/carry [21]), .YS(
        \dp_ALU/N1950 ) );
  HAX1 \dp_ALU/add_115/U1_1_21  ( .A(out_global_score[21]), .B(
        \dp_ALU/add_115/carry [21]), .YC(\dp_ALU/add_115/carry [22]), .YS(
        \dp_ALU/N1951 ) );
  HAX1 \dp_ALU/add_115/U1_1_22  ( .A(out_global_score[22]), .B(
        \dp_ALU/add_115/carry [22]), .YC(\dp_ALU/add_115/carry [23]), .YS(
        \dp_ALU/N1952 ) );
  HAX1 \dp_ALU/add_115/U1_1_23  ( .A(out_global_score[23]), .B(
        \dp_ALU/add_115/carry [23]), .YC(\dp_ALU/add_115/carry [24]), .YS(
        \dp_ALU/N1953 ) );
  HAX1 \dp_ALU/add_115/U1_1_24  ( .A(out_global_score[24]), .B(
        \dp_ALU/add_115/carry [24]), .YC(\dp_ALU/add_115/carry [25]), .YS(
        \dp_ALU/N1954 ) );
  HAX1 \dp_ALU/add_115/U1_1_25  ( .A(out_global_score[25]), .B(
        \dp_ALU/add_115/carry [25]), .YC(\dp_ALU/add_115/carry [26]), .YS(
        \dp_ALU/N1955 ) );
  HAX1 \dp_ALU/add_115/U1_1_26  ( .A(out_global_score[26]), .B(
        \dp_ALU/add_115/carry [26]), .YC(\dp_ALU/add_115/carry [27]), .YS(
        \dp_ALU/N1956 ) );
  HAX1 \dp_ALU/add_115/U1_1_27  ( .A(out_global_score[27]), .B(
        \dp_ALU/add_115/carry [27]), .YC(\dp_ALU/add_115/carry [28]), .YS(
        \dp_ALU/N1957 ) );
  HAX1 \dp_ALU/add_115/U1_1_28  ( .A(out_global_score[28]), .B(
        \dp_ALU/add_115/carry [28]), .YC(\dp_ALU/add_115/carry [29]), .YS(
        \dp_ALU/N1958 ) );
  HAX1 \dp_ALU/add_115/U1_1_29  ( .A(out_global_score[29]), .B(
        \dp_ALU/add_115/carry [29]), .YC(\dp_ALU/add_115/carry [30]), .YS(
        \dp_ALU/N1959 ) );
  HAX1 \dp_ALU/add_115/U1_1_30  ( .A(out_global_score[30]), .B(
        \dp_ALU/add_115/carry [30]), .YC(\dp_ALU/add_115/carry [31]), .YS(
        \dp_ALU/N1960 ) );
  AND2X2 U1 ( .A(n8), .B(\dp_RNG/dp_cluster_0/N27 ), .Y(n1) );
  AND2X2 U2 ( .A(out_temp_data_in[4]), .B(n315), .Y(n2) );
  AND2X2 U3 ( .A(out_temp_data_in[1]), .B(out_temp_data_in[2]), .Y(n3) );
  AND2X2 U4 ( .A(\dp_ALU/r494/carry[2] ), .B(out_temp_data_in[2]), .Y(n4) );
  AND2X2 U5 ( .A(in_incr[0]), .B(\dp_RNG/dp_cluster_0/N19 ), .Y(n5) );
  AND2X2 U6 ( .A(\dp_RNG/dp_cluster_0/add_48/carry [5]), .B(
        \dp_RNG/dp_cluster_0/N24 ), .Y(n6) );
  AND2X2 U7 ( .A(n6), .B(\dp_RNG/dp_cluster_0/N25 ), .Y(n7) );
  AND2X2 U8 ( .A(n7), .B(\dp_RNG/dp_cluster_0/N26 ), .Y(n8) );
  XNOR2X1 U9 ( .A(out_temp_data_in[4]), .B(n319), .Y(n9) );
  XOR2X1 U10 ( .A(out_temp_data_in[4]), .B(\dp_ALU/r496/carry[4] ), .Y(n10) );
  XOR2X1 U11 ( .A(out_temp_data_in[4]), .B(\dp_ALU/r493/carry[4] ), .Y(n11) );
  XOR2X1 U12 ( .A(out_temp_data_in[4]), .B(\dp_ALU/r494/carry[4] ), .Y(n12) );
  XNOR2X1 U13 ( .A(\dp_ALU/n448 ), .B(n251), .Y(n13) );
  INVX1 U14 ( .A(in_clkb), .Y(n14) );
  INVX2 U15 ( .A(n14), .Y(n15) );
  BUFX2 U16 ( .A(\dp_ALU/n403 ), .Y(n35) );
  BUFX2 U17 ( .A(\dp_ALU/n403 ), .Y(n34) );
  INVX2 U18 ( .A(n16), .Y(n32) );
  INVX2 U19 ( .A(n16), .Y(n33) );
  INVX2 U20 ( .A(\dp_ALU/n306 ), .Y(n21) );
  INVX2 U21 ( .A(\dp_ALU/n306 ), .Y(n20) );
  BUFX2 U22 ( .A(\dp_ALU/n404 ), .Y(n36) );
  BUFX2 U23 ( .A(\dp_ALU/n404 ), .Y(n37) );
  OR2X1 U24 ( .A(n29), .B(n21), .Y(n16) );
  BUFX2 U25 ( .A(\dp_ALU/n406 ), .Y(n38) );
  BUFX2 U26 ( .A(\dp_ALU/n406 ), .Y(n39) );
  BUFX2 U27 ( .A(\dp_RNG/n50 ), .Y(n26) );
  BUFX2 U28 ( .A(\dp_RNG/n50 ), .Y(n27) );
  INVX2 U29 ( .A(out_temp_data_in[2]), .Y(n267) );
  INVX2 U30 ( .A(n24), .Y(n22) );
  INVX2 U31 ( .A(out_temp_data_in[1]), .Y(n265) );
  BUFX2 U32 ( .A(n40), .Y(n44) );
  BUFX2 U33 ( .A(n40), .Y(n45) );
  BUFX2 U34 ( .A(n40), .Y(n46) );
  BUFX2 U35 ( .A(n41), .Y(n47) );
  BUFX2 U36 ( .A(n41), .Y(n48) );
  BUFX2 U37 ( .A(n41), .Y(n49) );
  BUFX2 U38 ( .A(n42), .Y(n50) );
  BUFX2 U39 ( .A(n42), .Y(n51) );
  BUFX2 U40 ( .A(n42), .Y(n52) );
  BUFX2 U41 ( .A(n25), .Y(n23) );
  BUFX2 U42 ( .A(n31), .Y(n30) );
  INVX2 U43 ( .A(\dp_ALU/N1203 ), .Y(n28) );
  BUFX2 U44 ( .A(n25), .Y(n24) );
  INVX2 U45 ( .A(n31), .Y(n29) );
  BUFX2 U46 ( .A(n43), .Y(n53) );
  BUFX2 U47 ( .A(in_clka), .Y(n43) );
  BUFX2 U48 ( .A(in_restart), .Y(n18) );
  INVX2 U49 ( .A(\dp_ALU/n231 ), .Y(n31) );
  INVX2 U50 ( .A(\dp_RNG/n46 ), .Y(n25) );
  INVX2 U51 ( .A(out_temp_data_in[3]), .Y(n19) );
  BUFX2 U52 ( .A(in_clka), .Y(n40) );
  BUFX2 U53 ( .A(in_clka), .Y(n41) );
  BUFX2 U54 ( .A(in_clka), .Y(n42) );
  OR2X1 U55 ( .A(out_temp_data_in[3]), .B(n3), .Y(\dp_ALU/r493/carry[4] ) );
  XNOR2X1 U56 ( .A(n3), .B(out_temp_data_in[3]), .Y(\dp_ALU/N1138 ) );
  OR2X1 U57 ( .A(out_temp_data_in[1]), .B(\dp_ALU/N1203 ), .Y(
        \dp_ALU/r494/carry[2] ) );
  XNOR2X1 U58 ( .A(\dp_ALU/N1203 ), .B(out_temp_data_in[1]), .Y(\dp_ALU/N1168 ) );
  OR2X1 U59 ( .A(out_temp_data_in[3]), .B(n4), .Y(\dp_ALU/r494/carry[4] ) );
  XNOR2X1 U60 ( .A(n4), .B(out_temp_data_in[3]), .Y(\dp_ALU/N1170 ) );
  OR2X1 U61 ( .A(out_temp_data_in[3]), .B(out_temp_data_in[2]), .Y(
        \dp_ALU/r496/carry[4] ) );
  XNOR2X1 U62 ( .A(out_temp_data_in[2]), .B(out_temp_data_in[3]), .Y(
        \dp_ALU/N1206 ) );
  XOR2X1 U63 ( .A(in_incr[0]), .B(\dp_RNG/dp_cluster_0/N19 ), .Y(\dp_RNG/N29 )
         );
  XOR2X1 U64 ( .A(\dp_RNG/dp_cluster_0/add_48/carry [5]), .B(
        \dp_RNG/dp_cluster_0/N24 ), .Y(\dp_RNG/N34 ) );
  XOR2X1 U65 ( .A(n6), .B(\dp_RNG/dp_cluster_0/N25 ), .Y(\dp_RNG/N35 ) );
  XOR2X1 U66 ( .A(n7), .B(\dp_RNG/dp_cluster_0/N26 ), .Y(\dp_RNG/N36 ) );
  XOR2X1 U67 ( .A(n8), .B(\dp_RNG/dp_cluster_0/N27 ), .Y(\dp_RNG/N37 ) );
  XOR2X1 U68 ( .A(n1), .B(\dp_RNG/dp_cluster_0/N28 ), .Y(\dp_RNG/N38 ) );
  NAND2X1 U69 ( .A(n1), .B(\dp_RNG/dp_cluster_0/N28 ), .Y(n17) );
  INVX2 U70 ( .A(n17), .Y(\dp_RNG/N39 ) );
  XOR2X1 U71 ( .A(out_temp_data_in[1]), .B(out_temp_data_in[2]), .Y(
        \dp_ALU/N1137 ) );
  XOR2X1 U72 ( .A(\dp_ALU/r494/carry[2] ), .B(out_temp_data_in[2]), .Y(
        \dp_ALU/N1169 ) );
  INVX2 U73 ( .A(\dp_RNG/n120 ), .Y(n54) );
  INVX2 U74 ( .A(\dp_RNG/n109 ), .Y(n55) );
  INVX2 U75 ( .A(\dp_RNG/n106 ), .Y(n56) );
  INVX2 U76 ( .A(\dp_RNG/n89 ), .Y(n57) );
  INVX2 U77 ( .A(\dp_RNG/n86 ), .Y(n58) );
  INVX2 U78 ( .A(\dp_RNG/n69 ), .Y(n59) );
  INVX2 U79 ( .A(\dp_RNG/n65 ), .Y(n60) );
  INVX2 U80 ( .A(\dp_RNG/n104 ), .Y(n61) );
  INVX2 U81 ( .A(\dp_RNG/n102 ), .Y(n62) );
  INVX2 U82 ( .A(\dp_RNG/n84 ), .Y(n63) );
  INVX2 U83 ( .A(\dp_RNG/n82 ), .Y(n64) );
  INVX2 U84 ( .A(\dp_RNG/n63 ), .Y(n65) );
  INVX2 U85 ( .A(\dp_RNG/n60 ), .Y(n66) );
  INVX2 U86 ( .A(\dp_RNG/n98 ), .Y(n67) );
  INVX2 U87 ( .A(\dp_RNG/n95 ), .Y(n68) );
  INVX2 U88 ( .A(\dp_RNG/n79 ), .Y(n69) );
  INVX2 U89 ( .A(\dp_RNG/n76 ), .Y(n70) );
  INVX2 U90 ( .A(\dp_RNG/n57 ), .Y(n71) );
  INVX2 U91 ( .A(\dp_RNG/n53 ), .Y(n72) );
  INVX2 U92 ( .A(\dp_RNG/n114 ), .Y(n73) );
  INVX2 U93 ( .A(\dp_RNG/n93 ), .Y(n74) );
  INVX2 U94 ( .A(\dp_RNG/n74 ), .Y(n75) );
  INVX2 U95 ( .A(\dp_RNG/n48 ), .Y(n76) );
  INVX2 U96 ( .A(\dp_RNG/n111 ), .Y(n77) );
  INVX2 U97 ( .A(\dp_RNG/n91 ), .Y(n78) );
  INVX2 U98 ( .A(\dp_RNG/n71 ), .Y(n79) );
  INVX2 U99 ( .A(n18), .Y(n80) );
  INVX2 U100 ( .A(\dp_ALU/n309 ), .Y(n81) );
  INVX2 U101 ( .A(\dp_ALU/n307 ), .Y(n82) );
  INVX2 U102 ( .A(\dp_ALU/n305 ), .Y(n83) );
  INVX2 U103 ( .A(\dp_ALU/n304 ), .Y(n84) );
  INVX2 U104 ( .A(\dp_ALU/n303 ), .Y(n85) );
  INVX2 U105 ( .A(\dp_ALU/n302 ), .Y(n86) );
  INVX2 U106 ( .A(\dp_ALU/n301 ), .Y(n87) );
  INVX2 U107 ( .A(\dp_ALU/n300 ), .Y(n88) );
  INVX2 U108 ( .A(\dp_ALU/n299 ), .Y(n89) );
  INVX2 U109 ( .A(\dp_ALU/n298 ), .Y(n90) );
  INVX2 U110 ( .A(\dp_ALU/n297 ), .Y(n91) );
  INVX2 U111 ( .A(\dp_ALU/n296 ), .Y(n92) );
  INVX2 U112 ( .A(\dp_ALU/n295 ), .Y(n93) );
  INVX2 U113 ( .A(\dp_ALU/n294 ), .Y(n94) );
  INVX2 U114 ( .A(\dp_ALU/n293 ), .Y(n95) );
  INVX2 U115 ( .A(\dp_ALU/n292 ), .Y(n96) );
  INVX2 U116 ( .A(\dp_ALU/n291 ), .Y(n97) );
  INVX2 U117 ( .A(\dp_ALU/n290 ), .Y(n98) );
  INVX2 U118 ( .A(\dp_ALU/n289 ), .Y(n99) );
  INVX2 U119 ( .A(\dp_ALU/n288 ), .Y(n100) );
  INVX2 U120 ( .A(\dp_ALU/n287 ), .Y(n101) );
  INVX2 U121 ( .A(\dp_ALU/n286 ), .Y(n102) );
  INVX2 U122 ( .A(\dp_ALU/n285 ), .Y(n103) );
  INVX2 U123 ( .A(\dp_ALU/n284 ), .Y(n104) );
  INVX2 U124 ( .A(\dp_ALU/n283 ), .Y(n105) );
  INVX2 U125 ( .A(\dp_ALU/n282 ), .Y(n106) );
  INVX2 U126 ( .A(\dp_ALU/n281 ), .Y(n107) );
  INVX2 U127 ( .A(\dp_ALU/n280 ), .Y(n108) );
  INVX2 U128 ( .A(\dp_ALU/n279 ), .Y(n109) );
  INVX2 U129 ( .A(\dp_ALU/n278 ), .Y(n110) );
  INVX2 U130 ( .A(\dp_ALU/n277 ), .Y(n111) );
  INVX2 U131 ( .A(\dp_ALU/n276 ), .Y(n112) );
  INVX2 U132 ( .A(\dp_ALU/n275 ), .Y(n113) );
  INVX2 U133 ( .A(\dp_ALU/n273 ), .Y(n114) );
  INVX2 U134 ( .A(\dp_ALU/n236 ), .Y(n115) );
  INVX2 U135 ( .A(n320), .Y(n116) );
  INVX2 U136 ( .A(n321), .Y(n117) );
  INVX2 U137 ( .A(\dp_RNG/n87 ), .Y(n118) );
  INVX2 U138 ( .A(\dp_RNG/n67 ), .Y(n119) );
  INVX2 U139 ( .A(\dp_RNG/n107 ), .Y(n120) );
  INVX2 U140 ( .A(n323), .Y(n121) );
  INVX2 U141 ( .A(n324), .Y(n122) );
  INVX2 U142 ( .A(n327), .Y(n123) );
  INVX2 U143 ( .A(n325), .Y(n124) );
  INVX2 U144 ( .A(n326), .Y(n125) );
  INVX2 U145 ( .A(n328), .Y(n126) );
  INVX2 U146 ( .A(n329), .Y(n127) );
  INVX2 U147 ( .A(n331), .Y(n128) );
  INVX2 U148 ( .A(n332), .Y(n129) );
  INVX2 U149 ( .A(n330), .Y(n130) );
  INVX2 U150 ( .A(n333), .Y(n131) );
  INVX2 U151 ( .A(n334), .Y(n132) );
  INVX2 U152 ( .A(n335), .Y(n133) );
  INVX2 U153 ( .A(n336), .Y(n134) );
  INVX2 U154 ( .A(n337), .Y(n135) );
  INVX2 U155 ( .A(n338), .Y(n136) );
  INVX2 U156 ( .A(n339), .Y(n137) );
  INVX2 U157 ( .A(n342), .Y(n138) );
  INVX2 U158 ( .A(n340), .Y(n139) );
  INVX2 U159 ( .A(n341), .Y(n140) );
  INVX2 U160 ( .A(n343), .Y(n141) );
  INVX2 U161 ( .A(n344), .Y(n142) );
  INVX2 U162 ( .A(n346), .Y(n143) );
  INVX2 U163 ( .A(n347), .Y(n144) );
  INVX2 U164 ( .A(n345), .Y(n145) );
  INVX2 U165 ( .A(n348), .Y(n146) );
  INVX2 U166 ( .A(n349), .Y(n147) );
  INVX2 U167 ( .A(n350), .Y(n148) );
  INVX2 U168 ( .A(n351), .Y(n149) );
  INVX2 U169 ( .A(n352), .Y(n150) );
  INVX2 U170 ( .A(n353), .Y(n151) );
  INVX2 U171 ( .A(n354), .Y(n152) );
  INVX2 U172 ( .A(\dp_RNG/N37 ), .Y(n153) );
  INVX2 U173 ( .A(\dp_RNG/N35 ), .Y(n154) );
  INVX2 U174 ( .A(\dp_RNG/N34 ), .Y(n155) );
  INVX2 U175 ( .A(\dp_RNG/N33 ), .Y(n156) );
  INVX2 U176 ( .A(in_mult[4]), .Y(n157) );
  INVX2 U177 ( .A(\dp_RNG/N32 ), .Y(n158) );
  INVX2 U178 ( .A(in_mult[3]), .Y(n159) );
  INVX2 U179 ( .A(\dp_RNG/N31 ), .Y(n160) );
  INVX2 U180 ( .A(in_mult[2]), .Y(n161) );
  INVX2 U181 ( .A(\dp_RNG/N30 ), .Y(n162) );
  INVX2 U182 ( .A(in_mult[1]), .Y(n163) );
  INVX2 U183 ( .A(\dp_RNG/N29 ), .Y(n164) );
  INVX2 U184 ( .A(in_mult[0]), .Y(n165) );
  INVX2 U185 ( .A(\main/n34 ), .Y(n166) );
  INVX2 U186 ( .A(out_alu), .Y(n167) );
  INVX2 U187 ( .A(out_decode), .Y(n168) );
  INVX2 U188 ( .A(out_start), .Y(n169) );
  INVX2 U189 ( .A(out_load), .Y(n170) );
  INVX2 U190 ( .A(\main/n32 ), .Y(n171) );
  INVX2 U191 ( .A(\main/next_state [0]), .Y(n172) );
  INVX2 U192 ( .A(\main/n41 ), .Y(n173) );
  INVX2 U193 ( .A(out_state_main[1]), .Y(n174) );
  INVX2 U194 ( .A(\main/n38 ), .Y(n175) );
  INVX2 U195 ( .A(\main/n55 ), .Y(n176) );
  INVX2 U196 ( .A(\main/n35 ), .Y(n177) );
  INVX2 U197 ( .A(\main/n20 ), .Y(n178) );
  INVX2 U198 ( .A(\main/next_state [1]), .Y(n179) );
  INVX2 U199 ( .A(\main/next_state [2]), .Y(n180) );
  INVX2 U200 ( .A(out_state_main[3]), .Y(n181) );
  INVX2 U201 ( .A(\main/next_state [3]), .Y(n182) );
  INVX2 U202 ( .A(out_state_main[0]), .Y(n183) );
  INVX2 U203 ( .A(out_alu_done), .Y(n184) );
  INVX2 U204 ( .A(out_global_score[0]), .Y(n185) );
  INVX2 U205 ( .A(out_temp_cleared[0]), .Y(n186) );
  INVX2 U206 ( .A(out_temp_cleared[1]), .Y(n187) );
  INVX2 U207 ( .A(out_temp_cleared[2]), .Y(n188) );
  INVX2 U208 ( .A(out_temp_cleared[3]), .Y(n189) );
  INVX2 U209 ( .A(out_temp_cleared[4]), .Y(n190) );
  INVX2 U210 ( .A(out_temp_cleared[5]), .Y(n191) );
  INVX2 U211 ( .A(out_temp_cleared[6]), .Y(n192) );
  INVX2 U212 ( .A(out_temp_cleared[7]), .Y(n193) );
  INVX2 U213 ( .A(out_temp_cleared[8]), .Y(n194) );
  INVX2 U214 ( .A(out_temp_cleared[9]), .Y(n195) );
  INVX2 U215 ( .A(out_temp_cleared[10]), .Y(n196) );
  INVX2 U216 ( .A(out_temp_cleared[11]), .Y(n197) );
  INVX2 U217 ( .A(out_temp_cleared[12]), .Y(n198) );
  INVX2 U218 ( .A(out_temp_cleared[13]), .Y(n199) );
  INVX2 U219 ( .A(out_temp_cleared[14]), .Y(n200) );
  INVX2 U220 ( .A(out_temp_cleared[15]), .Y(n201) );
  INVX2 U221 ( .A(out_temp_cleared[16]), .Y(n202) );
  INVX2 U222 ( .A(out_temp_cleared[17]), .Y(n203) );
  INVX2 U223 ( .A(out_temp_cleared[18]), .Y(n204) );
  INVX2 U224 ( .A(out_temp_cleared[19]), .Y(n205) );
  INVX2 U225 ( .A(out_temp_cleared[20]), .Y(n206) );
  INVX2 U226 ( .A(out_temp_cleared[21]), .Y(n207) );
  INVX2 U227 ( .A(out_temp_cleared[22]), .Y(n208) );
  INVX2 U228 ( .A(out_temp_cleared[23]), .Y(n209) );
  INVX2 U229 ( .A(out_temp_cleared[24]), .Y(n210) );
  INVX2 U230 ( .A(\dp_ALU/n252 ), .Y(n211) );
  INVX2 U231 ( .A(\dp_ALU/n260 ), .Y(n212) );
  INVX2 U232 ( .A(\dp_ALU/n253 ), .Y(n213) );
  INVX2 U233 ( .A(out_temp_decoded[0]), .Y(n214) );
  INVX2 U234 ( .A(\dp_ALU/n266 ), .Y(n215) );
  INVX2 U235 ( .A(out_temp_decoded[1]), .Y(n216) );
  INVX2 U236 ( .A(out_temp_decoded[2]), .Y(n217) );
  INVX2 U237 ( .A(out_temp_decoded[3]), .Y(n218) );
  INVX2 U238 ( .A(\dp_ALU/n340 ), .Y(n219) );
  INVX2 U239 ( .A(out_temp_decoded[4]), .Y(n220) );
  INVX2 U240 ( .A(out_temp_decoded[5]), .Y(n221) );
  INVX2 U241 ( .A(out_temp_decoded[6]), .Y(n222) );
  INVX2 U242 ( .A(\dp_ALU/n333 ), .Y(n223) );
  INVX2 U243 ( .A(out_temp_decoded[7]), .Y(n224) );
  INVX2 U244 ( .A(out_temp_decoded[8]), .Y(n225) );
  INVX2 U245 ( .A(\dp_ALU/n314 ), .Y(n226) );
  INVX2 U246 ( .A(out_temp_decoded[9]), .Y(n227) );
  INVX2 U247 ( .A(out_temp_decoded[10]), .Y(n228) );
  INVX2 U248 ( .A(out_temp_decoded[11]), .Y(n229) );
  INVX2 U249 ( .A(out_temp_decoded[12]), .Y(n230) );
  INVX2 U250 ( .A(out_temp_decoded[13]), .Y(n231) );
  INVX2 U251 ( .A(out_temp_decoded[14]), .Y(n232) );
  INVX2 U252 ( .A(out_temp_decoded[15]), .Y(n233) );
  INVX2 U253 ( .A(out_temp_decoded[16]), .Y(n234) );
  INVX2 U254 ( .A(out_temp_decoded[17]), .Y(n235) );
  INVX2 U255 ( .A(out_temp_decoded[18]), .Y(n236) );
  INVX2 U256 ( .A(\dp_ALU/n320 ), .Y(n237) );
  INVX2 U257 ( .A(out_temp_decoded[19]), .Y(n238) );
  INVX2 U258 ( .A(out_temp_decoded[20]), .Y(n239) );
  INVX2 U259 ( .A(out_temp_decoded[21]), .Y(n240) );
  INVX2 U260 ( .A(\dp_ALU/n315 ), .Y(n241) );
  INVX2 U261 ( .A(out_temp_decoded[22]), .Y(n242) );
  INVX2 U262 ( .A(out_temp_decoded[23]), .Y(n243) );
  INVX2 U263 ( .A(out_temp_decoded[24]), .Y(n244) );
  INVX2 U264 ( .A(n305), .Y(n245) );
  INVX2 U265 ( .A(n316), .Y(n246) );
  INVX2 U266 ( .A(\dp_ALU/N1241 ), .Y(n247) );
  INVX2 U267 ( .A(\dp_ALU/N1242 ), .Y(n248) );
  INVX2 U268 ( .A(\dp_ALU/N1323 ), .Y(n249) );
  INVX2 U269 ( .A(\dp_ALU/n447 ), .Y(n250) );
  INVX2 U270 ( .A(\dp_ALU/N1415 ), .Y(n251) );
  INVX2 U271 ( .A(\dp_ALU/n466 ), .Y(n252) );
  INVX2 U272 ( .A(\dp_ALU/n487 ), .Y(n253) );
  INVX2 U273 ( .A(\dp_ALU/N1370 ), .Y(n254) );
  INVX2 U274 ( .A(\dp_ALU/N1458 ), .Y(n255) );
  INVX2 U275 ( .A(\dp_ALU/n477 ), .Y(n256) );
  INVX2 U276 ( .A(\dp_ALU/n469 ), .Y(n257) );
  INVX2 U277 ( .A(\dp_ALU/n460 ), .Y(n258) );
  INVX2 U278 ( .A(\dp_ALU/n443 ), .Y(n259) );
  INVX2 U279 ( .A(\dp_ALU/N1170 ), .Y(n260) );
  INVX2 U280 ( .A(\dp_ALU/N1169 ), .Y(n261) );
  INVX2 U281 ( .A(\dp_ALU/N1168 ), .Y(n262) );
  INVX2 U282 ( .A(\dp_ALU/N1138 ), .Y(n263) );
  INVX2 U283 ( .A(\dp_ALU/N1137 ), .Y(n264) );
  INVX2 U284 ( .A(\dp_ALU/N1206 ), .Y(n266) );
  INVX2 U285 ( .A(\dp_ALU/n476 ), .Y(n268) );
  INVX2 U286 ( .A(\dp_ALU/n462 ), .Y(n269) );
  INVX2 U287 ( .A(\dp_ALU/n461 ), .Y(n270) );
  INVX2 U288 ( .A(out_temp_data_in[4]), .Y(n271) );
  INVX2 U289 ( .A(out_temp_mine_cnt[0]), .Y(n272) );
  INVX2 U290 ( .A(out_mines[3]), .Y(n273) );
  INVX2 U291 ( .A(out_mines[10]), .Y(n274) );
  INVX2 U292 ( .A(out_mines[11]), .Y(n275) );
  INVX2 U293 ( .A(out_mines[18]), .Y(n276) );
  INVX2 U294 ( .A(out_mines[19]), .Y(n277) );
  INVX2 U295 ( .A(out_mines[24]), .Y(n278) );
  INVX2 U296 ( .A(out_mines[17]), .Y(n279) );
  INVX2 U297 ( .A(out_mines[20]), .Y(n280) );
  INVX2 U298 ( .A(out_mines[22]), .Y(n281) );
  INVX2 U299 ( .A(out_mines[21]), .Y(n282) );
  INVX2 U300 ( .A(out_mines[23]), .Y(n283) );
  INVX2 U301 ( .A(out_temp_index[4]), .Y(n284) );
  INVX2 U302 ( .A(out_mines[9]), .Y(n285) );
  INVX2 U303 ( .A(out_mines[8]), .Y(n286) );
  INVX2 U304 ( .A(out_mines[12]), .Y(n287) );
  INVX2 U305 ( .A(out_mines[14]), .Y(n288) );
  INVX2 U306 ( .A(out_mines[13]), .Y(n289) );
  INVX2 U307 ( .A(out_mines[15]), .Y(n290) );
  INVX2 U308 ( .A(out_mines[1]), .Y(n291) );
  INVX2 U309 ( .A(out_mines[0]), .Y(n292) );
  INVX2 U310 ( .A(out_mines[4]), .Y(n293) );
  INVX2 U311 ( .A(out_mines[6]), .Y(n294) );
  INVX2 U312 ( .A(out_mines[5]), .Y(n295) );
  INVX2 U313 ( .A(out_mines[7]), .Y(n296) );
  INVX2 U314 ( .A(out_temp_index[3]), .Y(n297) );
  INVX2 U315 ( .A(out_temp_index[2]), .Y(n298) );
  INVX2 U316 ( .A(out_temp_index[1]), .Y(n299) );
  INVX2 U317 ( .A(out_temp_index[0]), .Y(n300) );
  INVX2 U318 ( .A(\dp_RNG/temp_gen ), .Y(n301) );
  XOR2X1 U319 ( .A(\dp_ALU/add_115/carry [31]), .B(out_global_score[31]), .Y(
        \dp_ALU/N1961 ) );
  NOR2X1 U320 ( .A(\dp_ALU/N1203 ), .B(out_temp_data_in[1]), .Y(n305) );
  NAND3X1 U321 ( .A(n19), .B(n271), .C(n267), .Y(n308) );
  NOR2X1 U322 ( .A(n245), .B(n308), .Y(\dp_ALU/N1036 ) );
  NAND3X1 U323 ( .A(n267), .B(n271), .C(out_temp_data_in[3]), .Y(n312) );
  OR2X1 U324 ( .A(n265), .B(\dp_ALU/N1203 ), .Y(n309) );
  NOR2X1 U325 ( .A(n312), .B(n309), .Y(\dp_ALU/N1046 ) );
  NAND2X1 U326 ( .A(out_temp_data_in[1]), .B(\dp_ALU/N1203 ), .Y(n310) );
  NOR2X1 U327 ( .A(n312), .B(n310), .Y(\dp_ALU/N1047 ) );
  NAND3X1 U328 ( .A(out_temp_data_in[3]), .B(n271), .C(out_temp_data_in[2]), 
        .Y(n302) );
  NOR2X1 U329 ( .A(n245), .B(n302), .Y(\dp_ALU/N1048 ) );
  NAND2X1 U330 ( .A(\dp_ALU/N1203 ), .B(n265), .Y(n313) );
  NOR2X1 U331 ( .A(n313), .B(n302), .Y(\dp_ALU/N1049 ) );
  NOR2X1 U332 ( .A(n309), .B(n302), .Y(\dp_ALU/N1050 ) );
  NOR2X1 U333 ( .A(n310), .B(n302), .Y(\dp_ALU/N1051 ) );
  NAND3X1 U334 ( .A(n267), .B(n19), .C(out_temp_data_in[4]), .Y(n303) );
  NOR2X1 U335 ( .A(n245), .B(n303), .Y(\dp_ALU/N1052 ) );
  NOR2X1 U336 ( .A(n313), .B(n303), .Y(\dp_ALU/N1053 ) );
  NOR2X1 U337 ( .A(n309), .B(n303), .Y(\dp_ALU/N1054 ) );
  NOR2X1 U338 ( .A(n310), .B(n303), .Y(\dp_ALU/N1055 ) );
  NOR2X1 U339 ( .A(n313), .B(n308), .Y(\dp_ALU/N1037 ) );
  NAND3X1 U340 ( .A(out_temp_data_in[2]), .B(n19), .C(out_temp_data_in[4]), 
        .Y(n304) );
  NOR2X1 U341 ( .A(n245), .B(n304), .Y(\dp_ALU/N1056 ) );
  NOR2X1 U342 ( .A(n313), .B(n304), .Y(\dp_ALU/N1057 ) );
  NOR2X1 U343 ( .A(n309), .B(n304), .Y(\dp_ALU/N1058 ) );
  NOR2X1 U344 ( .A(n310), .B(n304), .Y(\dp_ALU/N1059 ) );
  NAND2X1 U345 ( .A(out_temp_data_in[3]), .B(n267), .Y(n307) );
  NAND2X1 U346 ( .A(out_temp_data_in[4]), .B(n305), .Y(n306) );
  NOR2X1 U347 ( .A(n307), .B(n306), .Y(\dp_ALU/N1060 ) );
  NOR2X1 U348 ( .A(n309), .B(n308), .Y(\dp_ALU/N1038 ) );
  NOR2X1 U349 ( .A(n310), .B(n308), .Y(\dp_ALU/N1039 ) );
  NAND3X1 U350 ( .A(n19), .B(n271), .C(out_temp_data_in[2]), .Y(n311) );
  NOR2X1 U351 ( .A(n245), .B(n311), .Y(\dp_ALU/N1040 ) );
  NOR2X1 U352 ( .A(n313), .B(n311), .Y(\dp_ALU/N1041 ) );
  NOR2X1 U353 ( .A(n311), .B(n309), .Y(\dp_ALU/N1042 ) );
  NOR2X1 U354 ( .A(n311), .B(n310), .Y(\dp_ALU/N1043 ) );
  NOR2X1 U355 ( .A(n312), .B(n245), .Y(\dp_ALU/N1044 ) );
  NOR2X1 U356 ( .A(n313), .B(n312), .Y(\dp_ALU/N1045 ) );
  OAI21X1 U357 ( .A(\dp_ALU/N1203 ), .B(out_temp_data_in[1]), .C(
        out_temp_data_in[3]), .Y(n314) );
  OAI21X1 U358 ( .A(n19), .B(n267), .C(n314), .Y(n315) );
  NOR2X1 U359 ( .A(out_temp_data_in[1]), .B(\dp_ALU/N1203 ), .Y(n317) );
  AOI21X1 U360 ( .A(\dp_ALU/N1203 ), .B(out_temp_data_in[1]), .C(n317), .Y(
        n316) );
  NAND2X1 U361 ( .A(n317), .B(n267), .Y(n318) );
  OAI21X1 U362 ( .A(n317), .B(n267), .C(n318), .Y(\dp_ALU/N1241 ) );
  XNOR2X1 U363 ( .A(out_temp_data_in[3]), .B(n318), .Y(\dp_ALU/N1242 ) );
  NOR2X1 U364 ( .A(out_temp_data_in[3]), .B(n318), .Y(n319) );
  NOR2X1 U365 ( .A(n284), .B(n157), .Y(\dp_RNG/dp_cluster_0/mult_48/n33 ) );
  NOR2X1 U366 ( .A(n297), .B(n157), .Y(\dp_RNG/dp_cluster_0/mult_48/n34 ) );
  NOR2X1 U367 ( .A(n298), .B(n157), .Y(\dp_RNG/dp_cluster_0/mult_48/n35 ) );
  NOR2X1 U368 ( .A(n299), .B(n157), .Y(\dp_RNG/dp_cluster_0/mult_48/n36 ) );
  NOR2X1 U369 ( .A(n300), .B(n157), .Y(\dp_RNG/dp_cluster_0/mult_48/n37 ) );
  NOR2X1 U370 ( .A(n284), .B(n159), .Y(\dp_RNG/dp_cluster_0/mult_48/n38 ) );
  NOR2X1 U371 ( .A(n297), .B(n159), .Y(\dp_RNG/dp_cluster_0/mult_48/n39 ) );
  NOR2X1 U372 ( .A(n298), .B(n159), .Y(\dp_RNG/dp_cluster_0/mult_48/n40 ) );
  NOR2X1 U373 ( .A(n299), .B(n159), .Y(\dp_RNG/dp_cluster_0/mult_48/n41 ) );
  NOR2X1 U374 ( .A(n300), .B(n159), .Y(\dp_RNG/dp_cluster_0/mult_48/n42 ) );
  NOR2X1 U375 ( .A(n284), .B(n161), .Y(\dp_RNG/dp_cluster_0/mult_48/n43 ) );
  NOR2X1 U376 ( .A(n297), .B(n161), .Y(\dp_RNG/dp_cluster_0/mult_48/n44 ) );
  NOR2X1 U377 ( .A(n298), .B(n161), .Y(\dp_RNG/dp_cluster_0/mult_48/n45 ) );
  NOR2X1 U378 ( .A(n299), .B(n161), .Y(\dp_RNG/dp_cluster_0/mult_48/n46 ) );
  NOR2X1 U379 ( .A(n300), .B(n161), .Y(\dp_RNG/dp_cluster_0/mult_48/n47 ) );
  NOR2X1 U380 ( .A(n284), .B(n163), .Y(\dp_RNG/dp_cluster_0/mult_48/n48 ) );
  NOR2X1 U381 ( .A(n297), .B(n163), .Y(\dp_RNG/dp_cluster_0/mult_48/n49 ) );
  NOR2X1 U382 ( .A(n298), .B(n163), .Y(\dp_RNG/dp_cluster_0/mult_48/n50 ) );
  NOR2X1 U383 ( .A(n299), .B(n163), .Y(\dp_RNG/dp_cluster_0/mult_48/n51 ) );
  NOR2X1 U384 ( .A(n300), .B(n163), .Y(\dp_RNG/dp_cluster_0/mult_48/n52 ) );
  NOR2X1 U385 ( .A(n165), .B(n284), .Y(\dp_RNG/dp_cluster_0/mult_48/n53 ) );
  NOR2X1 U386 ( .A(n165), .B(n297), .Y(\dp_RNG/dp_cluster_0/mult_48/n54 ) );
  NOR2X1 U387 ( .A(n165), .B(n298), .Y(\dp_RNG/dp_cluster_0/mult_48/n55 ) );
  NOR2X1 U388 ( .A(n165), .B(n299), .Y(\dp_RNG/dp_cluster_0/mult_48/n56 ) );
  NOR2X1 U389 ( .A(n165), .B(n300), .Y(\dp_RNG/dp_cluster_0/N19 ) );
  XOR2X1 U390 ( .A(\dp_RNG/add_50/carry [4]), .B(out_temp_mine_cnt[4]), .Y(
        \dp_RNG/N69 ) );
  XNOR2X1 U391 ( .A(\dp_RNG/N39 ), .B(n355), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[6][4] ) );
  XOR2X1 U392 ( .A(n356), .B(\dp_RNG/N38 ), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[6][3] ) );
  XNOR2X1 U393 ( .A(n153), .B(n357), .Y(\dp_RNG/rem_48/u_div/SumTmp[6][2] ) );
  XNOR2X1 U394 ( .A(\dp_RNG/N36 ), .B(\dp_RNG/N35 ), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[6][1] ) );
  NOR2X1 U395 ( .A(n17), .B(n355), .Y(\dp_RNG/rem_48/quotient [6]) );
  NAND2X1 U396 ( .A(\dp_RNG/N38 ), .B(n356), .Y(n355) );
  NAND2X1 U397 ( .A(n357), .B(n153), .Y(n356) );
  NOR2X1 U398 ( .A(\dp_RNG/N35 ), .B(\dp_RNG/N36 ), .Y(n357) );
  NAND2X1 U399 ( .A(n358), .B(n351), .Y(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n4 ) );
  XNOR2X1 U400 ( .A(n351), .B(n358), .Y(\dp_RNG/rem_48/u_div/SumTmp[5][2] ) );
  NOR2X1 U401 ( .A(n148), .B(\dp_RNG/N34 ), .Y(n358) );
  XNOR2X1 U402 ( .A(n148), .B(\dp_RNG/N34 ), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[5][1] ) );
  OR2X1 U403 ( .A(n152), .B(\dp_RNG/rem_48/u_div/u_add_PartRem_0_5/n2 ), .Y(
        \dp_RNG/rem_48/quotient [5]) );
  NAND2X1 U404 ( .A(n359), .B(n346), .Y(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n4 ) );
  XNOR2X1 U405 ( .A(n346), .B(n359), .Y(\dp_RNG/rem_48/u_div/SumTmp[4][2] ) );
  NOR2X1 U406 ( .A(n145), .B(\dp_RNG/N33 ), .Y(n359) );
  XNOR2X1 U407 ( .A(n145), .B(\dp_RNG/N33 ), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[4][1] ) );
  OR2X1 U408 ( .A(n147), .B(\dp_RNG/rem_48/u_div/u_add_PartRem_0_4/n2 ), .Y(
        \dp_RNG/rem_48/quotient [4]) );
  NAND2X1 U409 ( .A(n360), .B(n341), .Y(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n4 ) );
  XNOR2X1 U410 ( .A(n341), .B(n360), .Y(\dp_RNG/rem_48/u_div/SumTmp[3][2] ) );
  NOR2X1 U411 ( .A(n139), .B(\dp_RNG/N32 ), .Y(n360) );
  XNOR2X1 U412 ( .A(n139), .B(\dp_RNG/N32 ), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[3][1] ) );
  OR2X1 U413 ( .A(n142), .B(\dp_RNG/rem_48/u_div/u_add_PartRem_0_3/n2 ), .Y(
        \dp_RNG/rem_48/quotient [3]) );
  NAND2X1 U414 ( .A(n361), .B(n336), .Y(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n4 ) );
  XNOR2X1 U415 ( .A(n336), .B(n361), .Y(\dp_RNG/rem_48/u_div/SumTmp[2][2] ) );
  NOR2X1 U416 ( .A(n133), .B(\dp_RNG/N31 ), .Y(n361) );
  XNOR2X1 U417 ( .A(n133), .B(\dp_RNG/N31 ), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[2][1] ) );
  OR2X1 U418 ( .A(n137), .B(\dp_RNG/rem_48/u_div/u_add_PartRem_0_2/n2 ), .Y(
        \dp_RNG/rem_48/quotient [2]) );
  NAND2X1 U419 ( .A(n362), .B(n331), .Y(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n4 ) );
  XNOR2X1 U420 ( .A(n331), .B(n362), .Y(\dp_RNG/rem_48/u_div/SumTmp[1][2] ) );
  NOR2X1 U421 ( .A(n130), .B(\dp_RNG/N30 ), .Y(n362) );
  XNOR2X1 U422 ( .A(n130), .B(\dp_RNG/N30 ), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[1][1] ) );
  OR2X1 U423 ( .A(n132), .B(\dp_RNG/rem_48/u_div/u_add_PartRem_0_1/n2 ), .Y(
        \dp_RNG/rem_48/quotient [1]) );
  NAND2X1 U424 ( .A(n363), .B(n326), .Y(
        \dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n4 ) );
  XNOR2X1 U425 ( .A(n326), .B(n363), .Y(\dp_RNG/rem_48/u_div/SumTmp[0][2] ) );
  NOR2X1 U426 ( .A(n124), .B(\dp_RNG/N29 ), .Y(n363) );
  XNOR2X1 U427 ( .A(n124), .B(\dp_RNG/N29 ), .Y(
        \dp_RNG/rem_48/u_div/SumTmp[0][1] ) );
  OR2X1 U428 ( .A(n127), .B(\dp_RNG/rem_48/u_div/u_add_PartRem_0_0/n2 ), .Y(
        \dp_RNG/rem_48/quotient [0]) );
endmodule

