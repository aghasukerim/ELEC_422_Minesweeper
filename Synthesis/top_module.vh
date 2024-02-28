/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Feb 27 21:42:30 2024
/////////////////////////////////////////////////////////////


module top_module ( in_clka, in_clkb, in_restart, in_mult, in_increment, 
        in_modulus, in_mines_num, out_state_main, in_place, in_data_in, 
        in_data, out_start, out_place_done, out_mines, out_load, 
        out_temp_data_in, out_decode, out_decode_done, out_alu, out_alu_done, 
        out_gameover, out_win, out_global_score, out_n_nearby, 
        out_temp_decoded, out_temp_cleared, out_display, out_display_done );
  output [3:0] out_state_main;
  input [4:0] in_data;
  output [24:0] out_mines;
  output [4:0] out_temp_data_in;
  output [31:0] out_global_score;
  output [1:0] out_n_nearby;
  output [24:0] out_temp_decoded;
  output [24:0] out_temp_cleared;
  input in_clka, in_clkb, in_restart, in_mult, in_increment, in_modulus,
         in_mines_num, in_place, in_data_in;
  output out_start, out_place_done, out_load, out_decode, out_decode_done,
         out_alu, out_alu_done, out_gameover, out_win, out_display,
         out_display_done;
  wire   \main/n64 , \main/n63 , \main/n62 , \main/n61 , \main/n60 ,
         \main/n59 , \main/n58 , \main/n57 , \main/n56 , \main/n55 ,
         \main/n54 , \main/n53 , \main/n52 , \main/n51 , \main/n50 ,
         \main/n49 , \main/n48 , \main/n47 , \main/n46 , \main/n45 ,
         \main/n44 , \main/n43 , \main/n42 , \main/n41 , \main/n40 ,
         \main/n39 , \main/n38 , \main/n37 , \main/n36 , \main/n35 ,
         \main/n34 , \main/n33 , \main/n32 , \main/n31 , \main/n30 ,
         \main/n29 , \main/n28 , \main/n27 , \main/n26 , \main/n25 ,
         \main/n24 , \main/n23 , \main/n22 , \main/n21 , \main/n20 ,
         \main/n19 , \main/n18 , \main/n17 , \main/N151 , \main/N96 ,
         \main/N95 , \main/N94 , \main/N93 , \dp_ALU/n373 , \dp_ALU/n372 ,
         \dp_ALU/n371 , \dp_ALU/n370 , \dp_ALU/n369 , \dp_ALU/n368 ,
         \dp_ALU/n367 , \dp_ALU/n366 , \dp_ALU/n365 , \dp_ALU/n364 ,
         \dp_ALU/n363 , \dp_ALU/n362 , \dp_ALU/n361 , \dp_ALU/n360 ,
         \dp_ALU/n359 , \dp_ALU/n358 , \dp_ALU/n357 , \dp_ALU/n356 ,
         \dp_ALU/n355 , \dp_ALU/n354 , \dp_ALU/n353 , \dp_ALU/n352 ,
         \dp_ALU/n351 , \dp_ALU/n350 , \dp_ALU/n349 , \dp_ALU/n348 ,
         \dp_ALU/n347 , \dp_ALU/n346 , \dp_ALU/n345 , \dp_ALU/n344 ,
         \dp_ALU/n343 , \dp_ALU/n342 , \dp_ALU/n341 , \dp_ALU/n340 ,
         \dp_ALU/n339 , \dp_ALU/n338 , \dp_ALU/n337 , \dp_ALU/n336 ,
         \dp_ALU/n335 , \dp_ALU/n334 , \dp_ALU/n333 , \dp_ALU/n332 ,
         \dp_ALU/n331 , \dp_ALU/n330 , \dp_ALU/n329 , \dp_ALU/n328 ,
         \dp_ALU/n327 , \dp_ALU/n326 , \dp_ALU/n325 , \dp_ALU/n324 ,
         \dp_ALU/n323 , \dp_ALU/n322 , \dp_ALU/n321 , \dp_ALU/n320 ,
         \dp_ALU/n319 , \dp_ALU/n318 , \dp_ALU/n317 , \dp_ALU/n316 ,
         \dp_ALU/n315 , \dp_ALU/n314 , \dp_ALU/n313 , \dp_ALU/n312 ,
         \dp_ALU/n311 , \dp_ALU/n310 , \dp_ALU/n309 , \dp_ALU/n308 ,
         \dp_ALU/n307 , \dp_ALU/n306 , \dp_ALU/n305 , \dp_ALU/n304 ,
         \dp_ALU/n303 , \dp_ALU/n302 , \dp_ALU/n301 , \dp_ALU/n300 ,
         \dp_ALU/n299 , \dp_ALU/n298 , \dp_ALU/n297 , \dp_ALU/n296 ,
         \dp_ALU/n295 , \dp_ALU/n294 , \dp_ALU/n293 , \dp_ALU/n292 ,
         \dp_ALU/n291 , \dp_ALU/n290 , \dp_ALU/n289 , \dp_ALU/n288 ,
         \dp_ALU/n287 , \dp_ALU/n286 , \dp_ALU/n285 , \dp_ALU/n284 ,
         \dp_ALU/n283 , \dp_ALU/n282 , \dp_ALU/n281 , \dp_ALU/n280 ,
         \dp_ALU/n279 , \dp_ALU/n278 , \dp_ALU/n277 , \dp_ALU/n274 ,
         \dp_ALU/n273 , \dp_ALU/n272 , \dp_ALU/n269 , \dp_ALU/n268 ,
         \dp_ALU/n267 , \dp_ALU/n266 , \dp_ALU/n265 , \dp_ALU/n263 ,
         \dp_ALU/n262 , \dp_ALU/n261 , \dp_ALU/n260 , \dp_ALU/n259 ,
         \dp_ALU/n258 , \dp_ALU/n257 , \dp_ALU/n256 , \dp_ALU/n255 ,
         \dp_ALU/n254 , \dp_ALU/n253 , \dp_ALU/n251 , \dp_ALU/n249 ,
         \dp_ALU/n248 , \dp_ALU/n247 , \dp_ALU/n246 , \dp_ALU/n245 ,
         \dp_ALU/n242 , \dp_ALU/n241 , \dp_ALU/n240 , \dp_ALU/n239 ,
         \dp_ALU/n236 , \dp_ALU/n235 , \dp_ALU/n231 , \dp_ALU/n230 ,
         \dp_ALU/n227 , \dp_ALU/n221 , \dp_ALU/n220 , \dp_ALU/n217 ,
         \dp_ALU/n208 , \dp_ALU/n206 , \dp_ALU/n204 , \dp_ALU/n202 ,
         \dp_ALU/n201 , \dp_ALU/n199 , \dp_ALU/n198 , \dp_ALU/n197 ,
         \dp_ALU/n196 , \dp_ALU/n195 , \dp_ALU/n194 , \dp_ALU/n193 ,
         \dp_ALU/n192 , \dp_ALU/n191 , \dp_ALU/n190 , \dp_ALU/n189 ,
         \dp_ALU/n188 , \dp_ALU/n187 , \dp_ALU/n186 , \dp_ALU/n185 ,
         \dp_ALU/n184 , \dp_ALU/n183 , \dp_ALU/n182 , \dp_ALU/n181 ,
         \dp_ALU/n180 , \dp_ALU/n179 , \dp_ALU/n178 , \dp_ALU/n177 ,
         \dp_ALU/n176 , \dp_ALU/n175 , \dp_ALU/n174 , \dp_ALU/n173 ,
         \dp_ALU/n172 , \dp_ALU/n171 , \dp_ALU/n170 , \dp_ALU/n169 ,
         \dp_ALU/n168 , \dp_ALU/n167 , \dp_ALU/n166 , \dp_ALU/n165 ,
         \dp_ALU/n164 , \dp_ALU/n163 , \dp_ALU/n162 , \dp_ALU/n161 ,
         \dp_ALU/n159 , \dp_ALU/n157 , \dp_ALU/n151 , \dp_ALU/n150 ,
         \dp_ALU/n149 , \dp_ALU/n148 , \dp_ALU/n147 , \dp_ALU/n146 ,
         \dp_ALU/n145 , \dp_ALU/n144 , \dp_ALU/n143 , \dp_ALU/n142 ,
         \dp_ALU/n141 , \dp_ALU/n140 , \dp_ALU/n139 , \dp_ALU/N208 ,
         \dp_ALU/N174 , \dp_ALU/N172 , \dp_ALU/N171 , \dp_ALU/N170 ,
         \dp_ALU/N169 , \dp_ALU/N168 , \dp_ALU/N167 , \dp_ALU/N166 ,
         \dp_ALU/N165 , \dp_ALU/N164 , \dp_ALU/N163 , \dp_ALU/N162 ,
         \dp_ALU/N161 , \dp_ALU/N160 , \dp_ALU/N159 , \dp_ALU/N158 ,
         \dp_ALU/N157 , \dp_ALU/N156 , \dp_ALU/N155 , \dp_ALU/N154 ,
         \dp_ALU/N153 , \dp_ALU/N152 , \dp_ALU/N151 , \dp_ALU/N150 ,
         \dp_ALU/N149 , \dp_ALU/N148 , \dp_ALU/N147 , \dp_ALU/N146 ,
         \dp_ALU/N145 , \dp_ALU/N144 , \dp_ALU/N143 , \dp_ALU/N142 ,
         \dp_ALU/N62 , \dp_ALU/N61 , \dp_ALU/N60 , \dp_ALU/N59 , \dp_ALU/N58 ,
         \dp_ALU/N57 , \dp_ALU/N56 , \dp_ALU/N55 , \dp_ALU/N54 , \dp_ALU/N53 ,
         \dp_ALU/N52 , \dp_ALU/N51 , \dp_ALU/N50 , \dp_ALU/N49 , \dp_ALU/N48 ,
         \dp_ALU/N47 , \dp_ALU/N46 , \dp_ALU/N45 , \dp_ALU/N44 , \dp_ALU/N43 ,
         \dp_ALU/N42 , \dp_ALU/N41 , \dp_ALU/N40 , \dp_ALU/N39 , \dp_ALU/N38 ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179;
  wire   [3:0] \main/next_state ;
  wire   [31:2] \dp_ALU/add_69/carry ;
  assign out_n_nearby[1] = 1'b0;
  assign out_mines[0] = 1'b0;
  assign out_mines[1] = 1'b0;
  assign out_mines[2] = 1'b0;
  assign out_mines[3] = 1'b0;
  assign out_mines[4] = 1'b0;
  assign out_mines[6] = 1'b0;
  assign out_mines[7] = 1'b0;
  assign out_mines[8] = 1'b0;
  assign out_mines[9] = 1'b0;
  assign out_mines[10] = 1'b0;
  assign out_mines[11] = 1'b0;
  assign out_mines[12] = 1'b0;
  assign out_mines[13] = 1'b0;
  assign out_mines[14] = 1'b0;
  assign out_mines[16] = 1'b0;
  assign out_mines[17] = 1'b0;
  assign out_mines[18] = 1'b0;
  assign out_mines[20] = 1'b0;
  assign out_mines[22] = 1'b0;
  assign out_mines[23] = 1'b0;
  assign out_mines[24] = 1'b0;

  NAND2X1 \main/U71  ( .A(\main/next_state [1]), .B(\main/next_state [0]), .Y(
        \main/n19 ) );
  NAND2X1 \main/U70  ( .A(n92), .B(n94), .Y(\main/n30 ) );
  NOR2X1 \main/U69  ( .A(\main/n19 ), .B(\main/n30 ), .Y(\main/N151 ) );
  NOR2X1 \main/U68  ( .A(n91), .B(out_state_main[3]), .Y(\main/n59 ) );
  NAND3X1 \main/U67  ( .A(out_state_main[0]), .B(n88), .C(\main/n59 ), .Y(
        \main/n42 ) );
  NAND3X1 \main/U66  ( .A(\main/n59 ), .B(out_state_main[0]), .C(
        out_state_main[1]), .Y(\main/n50 ) );
  NAND3X1 \main/U65  ( .A(\main/n59 ), .B(n95), .C(out_state_main[1]), .Y(
        \main/n60 ) );
  OAI21X1 \main/U64  ( .A(out_alu_done), .B(\main/n50 ), .C(\main/n60 ), .Y(
        \main/n49 ) );
  AOI21X1 \main/U63  ( .A(n95), .B(\main/n59 ), .C(\main/n49 ), .Y(\main/n38 )
         );
  OAI21X1 \main/U62  ( .A(\main/n42 ), .B(out_decode_done), .C(\main/n38 ), 
        .Y(\main/n58 ) );
  NOR2X1 \main/U61  ( .A(out_state_main[2]), .B(out_state_main[0]), .Y(
        \main/n52 ) );
  NAND2X1 \main/U60  ( .A(in_data_in), .B(n93), .Y(\main/n55 ) );
  NAND2X1 \main/U59  ( .A(out_place_done), .B(out_state_main[1]), .Y(
        \main/n56 ) );
  OAI21X1 \main/U58  ( .A(in_place), .B(out_state_main[3]), .C(n88), .Y(
        \main/n57 ) );
  OAI21X1 \main/U57  ( .A(\main/n55 ), .B(\main/n56 ), .C(\main/n57 ), .Y(
        \main/n53 ) );
  NOR2X1 \main/U56  ( .A(out_state_main[2]), .B(out_state_main[1]), .Y(
        \main/n54 ) );
  NAND3X1 \main/U55  ( .A(out_state_main[0]), .B(out_state_main[3]), .C(
        \main/n54 ), .Y(\main/n37 ) );
  AOI21X1 \main/U54  ( .A(\main/n52 ), .B(\main/n53 ), .C(n90), .Y(\main/n51 )
         );
  AOI21X1 \main/U53  ( .A(n86), .B(\main/n51 ), .C(n13), .Y(\main/N93 ) );
  AOI21X1 \main/U52  ( .A(out_gameover), .B(n89), .C(\main/n49 ), .Y(
        \main/n43 ) );
  NAND2X1 \main/U51  ( .A(out_display_done), .B(in_data_in), .Y(\main/n46 ) );
  XNOR2X1 \main/U50  ( .A(n88), .B(out_state_main[0]), .Y(\main/n48 ) );
  NAND3X1 \main/U49  ( .A(n91), .B(n93), .C(\main/n48 ), .Y(\main/n47 ) );
  OAI21X1 \main/U48  ( .A(\main/n37 ), .B(\main/n46 ), .C(\main/n47 ), .Y(
        \main/n45 ) );
  AOI21X1 \main/U47  ( .A(out_decode_done), .B(n85), .C(\main/n45 ), .Y(
        \main/n44 ) );
  AOI21X1 \main/U46  ( .A(\main/n43 ), .B(\main/n44 ), .C(n13), .Y(\main/N94 )
         );
  NAND2X1 \main/U45  ( .A(n91), .B(n93), .Y(\main/n40 ) );
  NAND2X1 \main/U44  ( .A(out_state_main[1]), .B(out_state_main[0]), .Y(
        \main/n41 ) );
  OAI21X1 \main/U43  ( .A(\main/n40 ), .B(\main/n41 ), .C(\main/n42 ), .Y(
        \main/n39 ) );
  AOI21X1 \main/U42  ( .A(\main/n38 ), .B(n87), .C(n13), .Y(\main/N95 ) );
  NAND2X1 \main/U41  ( .A(n88), .B(n91), .Y(\main/n34 ) );
  NAND2X1 \main/U40  ( .A(out_state_main[3]), .B(n95), .Y(\main/n35 ) );
  AOI21X1 \main/U39  ( .A(in_data_in), .B(out_display_done), .C(\main/n37 ), 
        .Y(\main/n36 ) );
  OAI21X1 \main/U38  ( .A(\main/n34 ), .B(\main/n35 ), .C(n79), .Y(\main/n33 )
         );
  AOI21X1 \main/U37  ( .A(out_alu_done), .B(n89), .C(\main/n33 ), .Y(
        \main/n32 ) );
  NOR2X1 \main/U36  ( .A(n13), .B(\main/n32 ), .Y(\main/N96 ) );
  OAI21X1 \main/U35  ( .A(n84), .B(\main/next_state [2]), .C(
        \main/next_state [3]), .Y(\main/n31 ) );
  OAI21X1 \main/U34  ( .A(\main/next_state [0]), .B(\main/n30 ), .C(\main/n31 ), .Y(\main/n29 ) );
  NAND3X1 \main/U33  ( .A(n92), .B(n94), .C(\main/next_state [0]), .Y(
        \main/n26 ) );
  OR2X1 \main/U32  ( .A(\main/n26 ), .B(\main/next_state [1]), .Y(\main/n25 )
         );
  OAI21X1 \main/U31  ( .A(n82), .B(\main/n29 ), .C(\main/n25 ), .Y(\main/n64 )
         );
  NOR2X1 \main/U30  ( .A(n92), .B(n84), .Y(\main/n21 ) );
  OAI21X1 \main/U29  ( .A(n84), .B(\main/n21 ), .C(\main/next_state [3]), .Y(
        \main/n27 ) );
  XNOR2X1 \main/U28  ( .A(\main/next_state [0]), .B(\main/next_state [1]), .Y(
        \main/n20 ) );
  NAND3X1 \main/U27  ( .A(\main/n20 ), .B(n94), .C(\main/n21 ), .Y(\main/n28 )
         );
  OAI21X1 \main/U26  ( .A(n80), .B(\main/n27 ), .C(\main/n28 ), .Y(\main/n63 )
         );
  OR2X1 \main/U25  ( .A(\main/next_state [0]), .B(\main/next_state [3]), .Y(
        \main/n22 ) );
  NAND2X1 \main/U24  ( .A(\main/next_state [2]), .B(\main/next_state [1]), .Y(
        \main/n23 ) );
  NAND3X1 \main/U23  ( .A(n83), .B(\main/n25 ), .C(out_alu), .Y(\main/n24 ) );
  OAI21X1 \main/U22  ( .A(\main/n22 ), .B(\main/n23 ), .C(\main/n24 ), .Y(
        \main/n62 ) );
  OAI21X1 \main/U21  ( .A(\main/n21 ), .B(\main/n20 ), .C(out_display), .Y(
        \main/n17 ) );
  NAND3X1 \main/U20  ( .A(\main/n19 ), .B(n92), .C(\main/n20 ), .Y(\main/n18 )
         );
  AOI21X1 \main/U19  ( .A(\main/n17 ), .B(\main/n18 ), .C(n94), .Y(\main/n61 )
         );
  DFFNEGX1 \main/display_reg  ( .D(\main/n61 ), .CLK(n11), .Q(out_display) );
  DFFNEGX1 \main/decode_reg  ( .D(\main/n63 ), .CLK(n11), .Q(out_decode) );
  DFFNEGX1 \main/alu_reg  ( .D(\main/n62 ), .CLK(n11), .Q(out_alu) );
  DFFNEGX1 \main/start_reg  ( .D(\main/n64 ), .CLK(n11), .Q(out_start) );
  DFFNEGX1 \main/load_reg  ( .D(\main/N151 ), .CLK(n11), .Q(out_load) );
  DFFNEGX1 \main/next_state_reg[0]  ( .D(\main/N93 ), .CLK(n37), .Q(
        \main/next_state [0]) );
  DFFNEGX1 \main/state_reg[1]  ( .D(\main/next_state [1]), .CLK(n11), .Q(
        out_state_main[1]) );
  DFFNEGX1 \main/next_state_reg[1]  ( .D(\main/N94 ), .CLK(n37), .Q(
        \main/next_state [1]) );
  DFFNEGX1 \main/state_reg[2]  ( .D(\main/next_state [2]), .CLK(n11), .Q(
        out_state_main[2]) );
  DFFNEGX1 \main/next_state_reg[2]  ( .D(\main/N95 ), .CLK(n37), .Q(
        \main/next_state [2]) );
  DFFNEGX1 \main/state_reg[3]  ( .D(\main/next_state [3]), .CLK(n11), .Q(
        out_state_main[3]) );
  DFFNEGX1 \main/next_state_reg[3]  ( .D(\main/N96 ), .CLK(n37), .Q(
        \main/next_state [3]) );
  DFFNEGX1 \main/state_reg[0]  ( .D(\main/next_state [0]), .CLK(n11), .Q(
        out_state_main[0]) );
  NAND2X1 \dp_ALU/U393  ( .A(out_start), .B(n45), .Y(\dp_ALU/n142 ) );
  NAND2X1 \dp_ALU/U392  ( .A(n45), .B(\dp_ALU/n142 ), .Y(\dp_ALU/N174 ) );
  NOR3X1 \dp_ALU/U391  ( .A(n13), .B(out_start), .C(out_load), .Y(
        \dp_ALU/n146 ) );
  NAND3X1 \dp_ALU/U390  ( .A(\dp_ALU/n146 ), .B(n80), .C(out_alu), .Y(
        \dp_ALU/n140 ) );
  NAND2X1 \dp_ALU/U389  ( .A(n45), .B(\dp_ALU/n140 ), .Y(\dp_ALU/N208 ) );
  OAI21X1 \dp_ALU/U388  ( .A(\dp_ALU/N208 ), .B(n165), .C(\dp_ALU/n140 ), .Y(
        \dp_ALU/n373 ) );
  OAI21X1 \dp_ALU/U387  ( .A(\dp_ALU/N174 ), .B(n164), .C(\dp_ALU/n142 ), .Y(
        \dp_ALU/n372 ) );
  OAI21X1 \dp_ALU/U386  ( .A(\dp_ALU/N174 ), .B(n163), .C(\dp_ALU/n142 ), .Y(
        \dp_ALU/n371 ) );
  OAI21X1 \dp_ALU/U385  ( .A(\dp_ALU/N174 ), .B(n162), .C(\dp_ALU/n142 ), .Y(
        \dp_ALU/n370 ) );
  OAI21X1 \dp_ALU/U384  ( .A(\dp_ALU/N174 ), .B(n161), .C(\dp_ALU/n142 ), .Y(
        \dp_ALU/n369 ) );
  NAND3X1 \dp_ALU/U383  ( .A(n45), .B(n82), .C(out_load), .Y(\dp_ALU/n312 ) );
  NOR2X1 \dp_ALU/U382  ( .A(n13), .B(n44), .Y(\dp_ALU/n307 ) );
  AOI22X1 \dp_ALU/U381  ( .A(in_data[4]), .B(n44), .C(out_temp_data_in[4]), 
        .D(\dp_ALU/n307 ), .Y(\dp_ALU/n311 ) );
  AOI22X1 \dp_ALU/U380  ( .A(in_data[3]), .B(n44), .C(out_temp_data_in[3]), 
        .D(\dp_ALU/n307 ), .Y(\dp_ALU/n310 ) );
  AOI22X1 \dp_ALU/U379  ( .A(in_data[2]), .B(n44), .C(out_temp_data_in[2]), 
        .D(\dp_ALU/n307 ), .Y(\dp_ALU/n309 ) );
  AOI22X1 \dp_ALU/U378  ( .A(in_data[1]), .B(n44), .C(out_temp_data_in[1]), 
        .D(\dp_ALU/n307 ), .Y(\dp_ALU/n308 ) );
  AOI22X1 \dp_ALU/U377  ( .A(in_data[0]), .B(n44), .C(out_temp_data_in[0]), 
        .D(\dp_ALU/n307 ), .Y(\dp_ALU/n306 ) );
  NAND2X1 \dp_ALU/U376  ( .A(out_decode), .B(\dp_ALU/n146 ), .Y(\dp_ALU/n141 )
         );
  NAND2X1 \dp_ALU/U375  ( .A(n45), .B(\dp_ALU/n141 ), .Y(\dp_ALU/n279 ) );
  NOR2X1 \dp_ALU/U374  ( .A(n1), .B(\dp_ALU/n141 ), .Y(\dp_ALU/n281 ) );
  NAND2X1 \dp_ALU/U373  ( .A(\dp_ALU/N62 ), .B(n25), .Y(\dp_ALU/n305 ) );
  OAI21X1 \dp_ALU/U372  ( .A(n155), .B(n23), .C(\dp_ALU/n305 ), .Y(
        \dp_ALU/n368 ) );
  NAND2X1 \dp_ALU/U371  ( .A(\dp_ALU/N61 ), .B(n25), .Y(\dp_ALU/n304 ) );
  OAI21X1 \dp_ALU/U370  ( .A(n153), .B(n23), .C(\dp_ALU/n304 ), .Y(
        \dp_ALU/n367 ) );
  NAND2X1 \dp_ALU/U369  ( .A(\dp_ALU/N60 ), .B(n25), .Y(\dp_ALU/n303 ) );
  OAI21X1 \dp_ALU/U368  ( .A(n151), .B(n23), .C(\dp_ALU/n303 ), .Y(
        \dp_ALU/n366 ) );
  NAND2X1 \dp_ALU/U367  ( .A(\dp_ALU/N59 ), .B(n25), .Y(\dp_ALU/n302 ) );
  OAI21X1 \dp_ALU/U366  ( .A(n149), .B(n23), .C(\dp_ALU/n302 ), .Y(
        \dp_ALU/n365 ) );
  NAND2X1 \dp_ALU/U365  ( .A(\dp_ALU/N58 ), .B(n25), .Y(\dp_ALU/n301 ) );
  OAI21X1 \dp_ALU/U364  ( .A(n146), .B(n23), .C(\dp_ALU/n301 ), .Y(
        \dp_ALU/n364 ) );
  NAND2X1 \dp_ALU/U363  ( .A(\dp_ALU/N57 ), .B(n25), .Y(\dp_ALU/n300 ) );
  OAI21X1 \dp_ALU/U362  ( .A(n144), .B(n23), .C(\dp_ALU/n300 ), .Y(
        \dp_ALU/n363 ) );
  NAND2X1 \dp_ALU/U361  ( .A(\dp_ALU/N56 ), .B(n25), .Y(\dp_ALU/n299 ) );
  OAI21X1 \dp_ALU/U360  ( .A(n142), .B(n23), .C(\dp_ALU/n299 ), .Y(
        \dp_ALU/n362 ) );
  NAND2X1 \dp_ALU/U359  ( .A(\dp_ALU/N55 ), .B(n25), .Y(\dp_ALU/n298 ) );
  OAI21X1 \dp_ALU/U358  ( .A(n140), .B(n23), .C(\dp_ALU/n298 ), .Y(
        \dp_ALU/n361 ) );
  NAND2X1 \dp_ALU/U357  ( .A(\dp_ALU/N54 ), .B(n25), .Y(\dp_ALU/n297 ) );
  OAI21X1 \dp_ALU/U356  ( .A(n138), .B(n23), .C(\dp_ALU/n297 ), .Y(
        \dp_ALU/n360 ) );
  NAND2X1 \dp_ALU/U355  ( .A(\dp_ALU/N53 ), .B(n25), .Y(\dp_ALU/n296 ) );
  OAI21X1 \dp_ALU/U354  ( .A(n136), .B(n23), .C(\dp_ALU/n296 ), .Y(
        \dp_ALU/n359 ) );
  NAND2X1 \dp_ALU/U353  ( .A(\dp_ALU/N52 ), .B(n25), .Y(\dp_ALU/n295 ) );
  OAI21X1 \dp_ALU/U352  ( .A(n134), .B(n23), .C(\dp_ALU/n295 ), .Y(
        \dp_ALU/n358 ) );
  NAND2X1 \dp_ALU/U351  ( .A(\dp_ALU/N51 ), .B(n25), .Y(\dp_ALU/n294 ) );
  OAI21X1 \dp_ALU/U350  ( .A(n132), .B(n23), .C(\dp_ALU/n294 ), .Y(
        \dp_ALU/n357 ) );
  NAND2X1 \dp_ALU/U349  ( .A(\dp_ALU/N50 ), .B(n26), .Y(\dp_ALU/n293 ) );
  OAI21X1 \dp_ALU/U348  ( .A(n130), .B(n24), .C(\dp_ALU/n293 ), .Y(
        \dp_ALU/n356 ) );
  NAND2X1 \dp_ALU/U347  ( .A(\dp_ALU/N49 ), .B(n26), .Y(\dp_ALU/n292 ) );
  OAI21X1 \dp_ALU/U346  ( .A(n128), .B(n24), .C(\dp_ALU/n292 ), .Y(
        \dp_ALU/n355 ) );
  NAND2X1 \dp_ALU/U345  ( .A(\dp_ALU/N48 ), .B(n26), .Y(\dp_ALU/n291 ) );
  OAI21X1 \dp_ALU/U344  ( .A(n126), .B(n24), .C(\dp_ALU/n291 ), .Y(
        \dp_ALU/n354 ) );
  NAND2X1 \dp_ALU/U343  ( .A(\dp_ALU/N47 ), .B(n26), .Y(\dp_ALU/n290 ) );
  OAI21X1 \dp_ALU/U342  ( .A(n124), .B(n24), .C(\dp_ALU/n290 ), .Y(
        \dp_ALU/n353 ) );
  NAND2X1 \dp_ALU/U341  ( .A(\dp_ALU/N46 ), .B(n26), .Y(\dp_ALU/n289 ) );
  OAI21X1 \dp_ALU/U340  ( .A(n121), .B(n24), .C(\dp_ALU/n289 ), .Y(
        \dp_ALU/n352 ) );
  NAND2X1 \dp_ALU/U339  ( .A(\dp_ALU/N45 ), .B(n26), .Y(\dp_ALU/n288 ) );
  OAI21X1 \dp_ALU/U338  ( .A(n119), .B(n24), .C(\dp_ALU/n288 ), .Y(
        \dp_ALU/n351 ) );
  NAND2X1 \dp_ALU/U337  ( .A(\dp_ALU/N44 ), .B(n26), .Y(\dp_ALU/n287 ) );
  OAI21X1 \dp_ALU/U336  ( .A(n117), .B(n24), .C(\dp_ALU/n287 ), .Y(
        \dp_ALU/n350 ) );
  NAND2X1 \dp_ALU/U335  ( .A(\dp_ALU/N43 ), .B(n26), .Y(\dp_ALU/n286 ) );
  OAI21X1 \dp_ALU/U334  ( .A(n115), .B(n24), .C(\dp_ALU/n286 ), .Y(
        \dp_ALU/n349 ) );
  NAND2X1 \dp_ALU/U333  ( .A(\dp_ALU/N42 ), .B(n26), .Y(\dp_ALU/n285 ) );
  OAI21X1 \dp_ALU/U332  ( .A(n112), .B(n24), .C(\dp_ALU/n285 ), .Y(
        \dp_ALU/n348 ) );
  NAND2X1 \dp_ALU/U331  ( .A(\dp_ALU/N41 ), .B(n26), .Y(\dp_ALU/n284 ) );
  OAI21X1 \dp_ALU/U330  ( .A(n110), .B(n24), .C(\dp_ALU/n284 ), .Y(
        \dp_ALU/n347 ) );
  NAND2X1 \dp_ALU/U329  ( .A(\dp_ALU/N40 ), .B(n26), .Y(\dp_ALU/n283 ) );
  OAI21X1 \dp_ALU/U328  ( .A(n108), .B(n24), .C(\dp_ALU/n283 ), .Y(
        \dp_ALU/n346 ) );
  NAND2X1 \dp_ALU/U327  ( .A(\dp_ALU/N39 ), .B(n26), .Y(\dp_ALU/n282 ) );
  OAI21X1 \dp_ALU/U326  ( .A(n106), .B(n24), .C(\dp_ALU/n282 ), .Y(
        \dp_ALU/n345 ) );
  NAND2X1 \dp_ALU/U325  ( .A(\dp_ALU/N38 ), .B(\dp_ALU/n281 ), .Y(
        \dp_ALU/n280 ) );
  OAI21X1 \dp_ALU/U324  ( .A(n104), .B(\dp_ALU/n279 ), .C(\dp_ALU/n280 ), .Y(
        \dp_ALU/n344 ) );
  NOR2X1 \dp_ALU/U323  ( .A(n38), .B(n15), .Y(\dp_ALU/n278 ) );
  OAI22X1 \dp_ALU/U322  ( .A(n21), .B(n103), .C(n104), .D(\dp_ALU/n140 ), .Y(
        \dp_ALU/n343 ) );
  OAI22X1 \dp_ALU/U321  ( .A(n21), .B(n105), .C(n106), .D(\dp_ALU/n140 ), .Y(
        \dp_ALU/n342 ) );
  OAI22X1 \dp_ALU/U320  ( .A(n21), .B(n107), .C(n108), .D(\dp_ALU/n140 ), .Y(
        \dp_ALU/n341 ) );
  OAI22X1 \dp_ALU/U319  ( .A(n21), .B(n109), .C(n110), .D(\dp_ALU/n140 ), .Y(
        \dp_ALU/n340 ) );
  OAI22X1 \dp_ALU/U318  ( .A(n21), .B(n111), .C(n112), .D(\dp_ALU/n140 ), .Y(
        \dp_ALU/n339 ) );
  OAI22X1 \dp_ALU/U317  ( .A(n21), .B(n113), .C(n115), .D(\dp_ALU/n140 ), .Y(
        \dp_ALU/n338 ) );
  OAI22X1 \dp_ALU/U316  ( .A(n21), .B(n116), .C(n117), .D(\dp_ALU/n140 ), .Y(
        \dp_ALU/n337 ) );
  OAI22X1 \dp_ALU/U315  ( .A(n21), .B(n118), .C(n119), .D(n14), .Y(
        \dp_ALU/n336 ) );
  OAI22X1 \dp_ALU/U314  ( .A(n21), .B(n120), .C(n121), .D(n14), .Y(
        \dp_ALU/n335 ) );
  OAI22X1 \dp_ALU/U313  ( .A(n21), .B(n123), .C(n124), .D(n14), .Y(
        \dp_ALU/n334 ) );
  OAI22X1 \dp_ALU/U312  ( .A(n21), .B(n125), .C(n126), .D(n14), .Y(
        \dp_ALU/n333 ) );
  OAI22X1 \dp_ALU/U311  ( .A(n21), .B(n127), .C(n128), .D(n14), .Y(
        \dp_ALU/n332 ) );
  OAI22X1 \dp_ALU/U310  ( .A(n22), .B(n129), .C(n130), .D(n14), .Y(
        \dp_ALU/n331 ) );
  OAI22X1 \dp_ALU/U309  ( .A(n22), .B(n131), .C(n132), .D(n14), .Y(
        \dp_ALU/n330 ) );
  OAI22X1 \dp_ALU/U308  ( .A(n22), .B(n133), .C(n134), .D(n14), .Y(
        \dp_ALU/n329 ) );
  OAI22X1 \dp_ALU/U307  ( .A(n22), .B(n135), .C(n136), .D(n14), .Y(
        \dp_ALU/n328 ) );
  OAI22X1 \dp_ALU/U306  ( .A(n22), .B(n137), .C(n138), .D(n14), .Y(
        \dp_ALU/n327 ) );
  OAI22X1 \dp_ALU/U305  ( .A(n22), .B(n139), .C(n140), .D(n14), .Y(
        \dp_ALU/n326 ) );
  OAI22X1 \dp_ALU/U304  ( .A(n22), .B(n141), .C(n142), .D(n14), .Y(
        \dp_ALU/n325 ) );
  OAI22X1 \dp_ALU/U303  ( .A(n22), .B(n143), .C(n144), .D(n14), .Y(
        \dp_ALU/n324 ) );
  OAI22X1 \dp_ALU/U302  ( .A(n22), .B(n145), .C(n146), .D(n14), .Y(
        \dp_ALU/n323 ) );
  OAI22X1 \dp_ALU/U301  ( .A(n22), .B(n147), .C(n149), .D(n14), .Y(
        \dp_ALU/n322 ) );
  OAI22X1 \dp_ALU/U300  ( .A(n22), .B(n150), .C(n151), .D(n14), .Y(
        \dp_ALU/n321 ) );
  OAI22X1 \dp_ALU/U299  ( .A(n22), .B(n152), .C(n153), .D(n14), .Y(
        \dp_ALU/n320 ) );
  OAI22X1 \dp_ALU/U298  ( .A(\dp_ALU/n278 ), .B(n154), .C(n155), .D(n14), .Y(
        \dp_ALU/n319 ) );
  NOR2X1 \dp_ALU/U296  ( .A(out_temp_decoded[24]), .B(out_temp_cleared[24]), 
        .Y(\dp_ALU/n277 ) );
  NOR2X1 \dp_ALU/U294  ( .A(out_temp_decoded[19]), .B(out_temp_cleared[19]), 
        .Y(\dp_ALU/n274 ) );
  AOI21X1 \dp_ALU/U291  ( .A(\dp_ALU/n274 ), .B(n163), .C(n7), .Y(
        \dp_ALU/n273 ) );
  NOR2X1 \dp_ALU/U286  ( .A(out_temp_decoded[5]), .B(out_temp_cleared[5]), .Y(
        \dp_ALU/n266 ) );
  NAND2X1 \dp_ALU/U285  ( .A(n111), .B(n112), .Y(\dp_ALU/n268 ) );
  AOI21X1 \dp_ALU/U282  ( .A(\dp_ALU/n266 ), .B(n161), .C(\dp_ALU/n267 ), .Y(
        \dp_ALU/n265 ) );
  NAND3X1 \dp_ALU/U281  ( .A(\dp_ALU/n263 ), .B(n5), .C(\dp_ALU/n265 ), .Y(
        \dp_ALU/n262 ) );
  NOR2X1 \dp_ALU/U280  ( .A(\dp_ALU/n261 ), .B(\dp_ALU/n262 ), .Y(
        \dp_ALU/n195 ) );
  NOR2X1 \dp_ALU/U279  ( .A(out_temp_decoded[12]), .B(out_temp_cleared[12]), 
        .Y(\dp_ALU/n259 ) );
  NOR2X1 \dp_ALU/U278  ( .A(out_temp_decoded[13]), .B(out_temp_cleared[13]), 
        .Y(\dp_ALU/n260 ) );
  NAND2X1 \dp_ALU/U275  ( .A(n137), .B(n138), .Y(\dp_ALU/n257 ) );
  NAND3X1 \dp_ALU/U274  ( .A(n135), .B(n136), .C(n162), .Y(\dp_ALU/n258 ) );
  OAI21X1 \dp_ALU/U271  ( .A(n162), .B(n135), .C(\dp_ALU/n256 ), .Y(
        \dp_ALU/n255 ) );
  NOR2X1 \dp_ALU/U270  ( .A(\dp_ALU/n254 ), .B(\dp_ALU/n255 ), .Y(
        \dp_ALU/n253 ) );
  NOR2X1 \dp_ALU/U265  ( .A(out_temp_decoded[23]), .B(out_temp_cleared[23]), 
        .Y(\dp_ALU/n246 ) );
  NAND2X1 \dp_ALU/U264  ( .A(n150), .B(n151), .Y(\dp_ALU/n248 ) );
  NAND3X1 \dp_ALU/U263  ( .A(n147), .B(n149), .C(n164), .Y(\dp_ALU/n249 ) );
  NOR2X1 \dp_ALU/U259  ( .A(\dp_ALU/n241 ), .B(\dp_ALU/n242 ), .Y(
        \dp_ALU/n196 ) );
  NAND2X1 \dp_ALU/U258  ( .A(n107), .B(n108), .Y(\dp_ALU/n239 ) );
  OAI21X1 \dp_ALU/U251  ( .A(n161), .B(n113), .C(\dp_ALU/n236 ), .Y(
        \dp_ALU/n235 ) );
  NAND3X1 \dp_ALU/U245  ( .A(\dp_ALU/n230 ), .B(\dp_ALU/n231 ), .C(n4), .Y(
        \dp_ALU/n227 ) );
  NAND3X1 \dp_ALU/U241  ( .A(n9), .B(n102), .C(n122), .Y(\dp_ALU/n198 ) );
  NAND2X1 \dp_ALU/U236  ( .A(n118), .B(n119), .Y(\dp_ALU/n220 ) );
  NOR2X1 \dp_ALU/U231  ( .A(\dp_ALU/n217 ), .B(n8), .Y(\dp_ALU/n201 ) );
  NOR2X1 \dp_ALU/U212  ( .A(n3), .B(\dp_ALU/n204 ), .Y(\dp_ALU/n202 ) );
  NOR2X1 \dp_ALU/U210  ( .A(\dp_ALU/n198 ), .B(\dp_ALU/n199 ), .Y(
        \dp_ALU/n197 ) );
  NAND3X1 \dp_ALU/U209  ( .A(\dp_ALU/n195 ), .B(\dp_ALU/n196 ), .C(
        \dp_ALU/n197 ), .Y(\dp_ALU/n193 ) );
  NAND2X1 \dp_ALU/U208  ( .A(out_win), .B(n38), .Y(\dp_ALU/n194 ) );
  OAI21X1 \dp_ALU/U207  ( .A(\dp_ALU/n140 ), .B(\dp_ALU/n193 ), .C(
        \dp_ALU/n194 ), .Y(\dp_ALU/n318 ) );
  AOI21X1 \dp_ALU/U206  ( .A(n15), .B(n101), .C(n13), .Y(\dp_ALU/n161 ) );
  AOI22X1 \dp_ALU/U204  ( .A(\dp_ALU/N172 ), .B(n17), .C(out_global_score[31]), 
        .D(n19), .Y(\dp_ALU/n192 ) );
  AOI22X1 \dp_ALU/U203  ( .A(n100), .B(n17), .C(out_global_score[0]), .D(n19), 
        .Y(\dp_ALU/n191 ) );
  AOI22X1 \dp_ALU/U202  ( .A(\dp_ALU/N142 ), .B(n17), .C(out_global_score[1]), 
        .D(n19), .Y(\dp_ALU/n190 ) );
  AOI22X1 \dp_ALU/U201  ( .A(\dp_ALU/N143 ), .B(n17), .C(out_global_score[2]), 
        .D(n19), .Y(\dp_ALU/n189 ) );
  AOI22X1 \dp_ALU/U200  ( .A(\dp_ALU/N144 ), .B(n17), .C(out_global_score[3]), 
        .D(n19), .Y(\dp_ALU/n188 ) );
  AOI22X1 \dp_ALU/U199  ( .A(\dp_ALU/N145 ), .B(n17), .C(out_global_score[4]), 
        .D(n19), .Y(\dp_ALU/n187 ) );
  AOI22X1 \dp_ALU/U198  ( .A(\dp_ALU/N146 ), .B(n17), .C(out_global_score[5]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n186 ) );
  AOI22X1 \dp_ALU/U197  ( .A(\dp_ALU/N147 ), .B(n17), .C(out_global_score[6]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n185 ) );
  AOI22X1 \dp_ALU/U196  ( .A(\dp_ALU/N148 ), .B(n17), .C(out_global_score[7]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n184 ) );
  AOI22X1 \dp_ALU/U195  ( .A(\dp_ALU/N149 ), .B(n17), .C(out_global_score[8]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n183 ) );
  AOI22X1 \dp_ALU/U194  ( .A(\dp_ALU/N150 ), .B(n17), .C(out_global_score[9]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n182 ) );
  AOI22X1 \dp_ALU/U193  ( .A(\dp_ALU/N151 ), .B(n17), .C(out_global_score[10]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n181 ) );
  AOI22X1 \dp_ALU/U192  ( .A(\dp_ALU/N152 ), .B(n17), .C(out_global_score[11]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n180 ) );
  AOI22X1 \dp_ALU/U191  ( .A(\dp_ALU/N153 ), .B(n18), .C(out_global_score[12]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n179 ) );
  AOI22X1 \dp_ALU/U190  ( .A(\dp_ALU/N154 ), .B(n18), .C(out_global_score[13]), 
        .D(n19), .Y(\dp_ALU/n178 ) );
  AOI22X1 \dp_ALU/U189  ( .A(\dp_ALU/N155 ), .B(n18), .C(out_global_score[14]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n177 ) );
  AOI22X1 \dp_ALU/U188  ( .A(\dp_ALU/N156 ), .B(n18), .C(out_global_score[15]), 
        .D(n19), .Y(\dp_ALU/n176 ) );
  AOI22X1 \dp_ALU/U187  ( .A(\dp_ALU/N157 ), .B(n18), .C(out_global_score[16]), 
        .D(\dp_ALU/n161 ), .Y(\dp_ALU/n175 ) );
  AOI22X1 \dp_ALU/U186  ( .A(\dp_ALU/N158 ), .B(n18), .C(out_global_score[17]), 
        .D(n19), .Y(\dp_ALU/n174 ) );
  AOI22X1 \dp_ALU/U185  ( .A(\dp_ALU/N159 ), .B(n18), .C(out_global_score[18]), 
        .D(n19), .Y(\dp_ALU/n173 ) );
  AOI22X1 \dp_ALU/U184  ( .A(\dp_ALU/N160 ), .B(n18), .C(out_global_score[19]), 
        .D(n19), .Y(\dp_ALU/n172 ) );
  AOI22X1 \dp_ALU/U183  ( .A(\dp_ALU/N161 ), .B(n18), .C(out_global_score[20]), 
        .D(n19), .Y(\dp_ALU/n171 ) );
  AOI22X1 \dp_ALU/U182  ( .A(\dp_ALU/N162 ), .B(n18), .C(out_global_score[21]), 
        .D(n19), .Y(\dp_ALU/n170 ) );
  AOI22X1 \dp_ALU/U181  ( .A(\dp_ALU/N163 ), .B(n18), .C(out_global_score[22]), 
        .D(n19), .Y(\dp_ALU/n169 ) );
  AOI22X1 \dp_ALU/U180  ( .A(\dp_ALU/N164 ), .B(n18), .C(out_global_score[23]), 
        .D(n19), .Y(\dp_ALU/n168 ) );
  AOI22X1 \dp_ALU/U179  ( .A(\dp_ALU/N165 ), .B(n18), .C(out_global_score[24]), 
        .D(n19), .Y(\dp_ALU/n167 ) );
  AOI22X1 \dp_ALU/U178  ( .A(\dp_ALU/N166 ), .B(n18), .C(out_global_score[25]), 
        .D(n19), .Y(\dp_ALU/n166 ) );
  AOI22X1 \dp_ALU/U177  ( .A(\dp_ALU/N167 ), .B(n17), .C(out_global_score[26]), 
        .D(n19), .Y(\dp_ALU/n165 ) );
  AOI22X1 \dp_ALU/U176  ( .A(\dp_ALU/N168 ), .B(n18), .C(out_global_score[27]), 
        .D(n19), .Y(\dp_ALU/n164 ) );
  AOI22X1 \dp_ALU/U175  ( .A(\dp_ALU/N169 ), .B(n17), .C(out_global_score[28]), 
        .D(n19), .Y(\dp_ALU/n163 ) );
  AOI22X1 \dp_ALU/U174  ( .A(\dp_ALU/N170 ), .B(n18), .C(out_global_score[29]), 
        .D(n19), .Y(\dp_ALU/n162 ) );
  AOI22X1 \dp_ALU/U173  ( .A(\dp_ALU/N171 ), .B(n17), .C(out_global_score[30]), 
        .D(n19), .Y(\dp_ALU/n159 ) );
  NOR2X1 \dp_ALU/U169  ( .A(n2), .B(n148), .Y(\dp_ALU/n151 ) );
  OAI21X1 \dp_ALU/U167  ( .A(\dp_ALU/n149 ), .B(\dp_ALU/n150 ), .C(n15), .Y(
        \dp_ALU/n148 ) );
  OAI21X1 \dp_ALU/U166  ( .A(\dp_ALU/N208 ), .B(n99), .C(\dp_ALU/n148 ), .Y(
        \dp_ALU/n317 ) );
  NAND2X1 \dp_ALU/U165  ( .A(n81), .B(n80), .Y(\dp_ALU/n143 ) );
  NOR2X1 \dp_ALU/U164  ( .A(out_display), .B(out_decode), .Y(\dp_ALU/n147 ) );
  NAND3X1 \dp_ALU/U163  ( .A(\dp_ALU/n146 ), .B(n81), .C(\dp_ALU/n147 ), .Y(
        \dp_ALU/n139 ) );
  NAND2X1 \dp_ALU/U162  ( .A(\dp_ALU/n146 ), .B(\dp_ALU/n139 ), .Y(
        \dp_ALU/n144 ) );
  NAND2X1 \dp_ALU/U161  ( .A(out_display_done), .B(n78), .Y(\dp_ALU/n145 ) );
  OAI21X1 \dp_ALU/U160  ( .A(\dp_ALU/n143 ), .B(\dp_ALU/n144 ), .C(
        \dp_ALU/n145 ), .Y(\dp_ALU/n316 ) );
  OAI21X1 \dp_ALU/U159  ( .A(\dp_ALU/n139 ), .B(n98), .C(\dp_ALU/n142 ), .Y(
        \dp_ALU/n315 ) );
  OAI21X1 \dp_ALU/U158  ( .A(\dp_ALU/n139 ), .B(n97), .C(\dp_ALU/n141 ), .Y(
        \dp_ALU/n314 ) );
  OAI21X1 \dp_ALU/U157  ( .A(\dp_ALU/n139 ), .B(n96), .C(\dp_ALU/n140 ), .Y(
        \dp_ALU/n313 ) );
  DFFNEGX1 \dp_ALU/alu_done_reg  ( .D(\dp_ALU/n313 ), .CLK(n11), .Q(
        out_alu_done) );
  DFFNEGX1 \dp_ALU/decode_done_reg  ( .D(\dp_ALU/n314 ), .CLK(n11), .Q(
        out_decode_done) );
  DFFNEGX1 \dp_ALU/place_done_reg  ( .D(\dp_ALU/n315 ), .CLK(n11), .Q(
        out_place_done) );
  DFFNEGX1 \dp_ALU/display_done_reg  ( .D(\dp_ALU/n316 ), .CLK(n11), .Q(
        out_display_done) );
  DFFNEGX1 \dp_ALU/gameover_reg  ( .D(\dp_ALU/n317 ), .CLK(n37), .Q(
        out_gameover) );
  DFFNEGX1 \dp_ALU/global_score_reg[30]  ( .D(n77), .CLK(n37), .Q(
        out_global_score[30]) );
  DFFNEGX1 \dp_ALU/global_score_reg[29]  ( .D(n76), .CLK(n37), .Q(
        out_global_score[29]) );
  DFFNEGX1 \dp_ALU/global_score_reg[28]  ( .D(n75), .CLK(n36), .Q(
        out_global_score[28]) );
  DFFNEGX1 \dp_ALU/global_score_reg[27]  ( .D(n74), .CLK(n36), .Q(
        out_global_score[27]) );
  DFFNEGX1 \dp_ALU/global_score_reg[26]  ( .D(n73), .CLK(n36), .Q(
        out_global_score[26]) );
  DFFNEGX1 \dp_ALU/global_score_reg[25]  ( .D(n72), .CLK(n36), .Q(
        out_global_score[25]) );
  DFFNEGX1 \dp_ALU/global_score_reg[24]  ( .D(n71), .CLK(n36), .Q(
        out_global_score[24]) );
  DFFNEGX1 \dp_ALU/global_score_reg[23]  ( .D(n70), .CLK(n36), .Q(
        out_global_score[23]) );
  DFFNEGX1 \dp_ALU/global_score_reg[22]  ( .D(n69), .CLK(n36), .Q(
        out_global_score[22]) );
  DFFNEGX1 \dp_ALU/global_score_reg[21]  ( .D(n68), .CLK(n36), .Q(
        out_global_score[21]) );
  DFFNEGX1 \dp_ALU/global_score_reg[20]  ( .D(n67), .CLK(n36), .Q(
        out_global_score[20]) );
  DFFNEGX1 \dp_ALU/global_score_reg[19]  ( .D(n66), .CLK(n36), .Q(
        out_global_score[19]) );
  DFFNEGX1 \dp_ALU/global_score_reg[18]  ( .D(n65), .CLK(n36), .Q(
        out_global_score[18]) );
  DFFNEGX1 \dp_ALU/global_score_reg[17]  ( .D(n64), .CLK(n36), .Q(
        out_global_score[17]) );
  DFFNEGX1 \dp_ALU/global_score_reg[16]  ( .D(n63), .CLK(n36), .Q(
        out_global_score[16]) );
  DFFNEGX1 \dp_ALU/global_score_reg[15]  ( .D(n62), .CLK(n35), .Q(
        out_global_score[15]) );
  DFFNEGX1 \dp_ALU/global_score_reg[14]  ( .D(n61), .CLK(n35), .Q(
        out_global_score[14]) );
  DFFNEGX1 \dp_ALU/global_score_reg[13]  ( .D(n60), .CLK(n35), .Q(
        out_global_score[13]) );
  DFFNEGX1 \dp_ALU/global_score_reg[12]  ( .D(n59), .CLK(n35), .Q(
        out_global_score[12]) );
  DFFNEGX1 \dp_ALU/global_score_reg[11]  ( .D(n58), .CLK(n35), .Q(
        out_global_score[11]) );
  DFFNEGX1 \dp_ALU/global_score_reg[10]  ( .D(n57), .CLK(n35), .Q(
        out_global_score[10]) );
  DFFNEGX1 \dp_ALU/global_score_reg[9]  ( .D(n56), .CLK(n35), .Q(
        out_global_score[9]) );
  DFFNEGX1 \dp_ALU/global_score_reg[8]  ( .D(n55), .CLK(n35), .Q(
        out_global_score[8]) );
  DFFNEGX1 \dp_ALU/global_score_reg[7]  ( .D(n54), .CLK(n35), .Q(
        out_global_score[7]) );
  DFFNEGX1 \dp_ALU/global_score_reg[6]  ( .D(n53), .CLK(n35), .Q(
        out_global_score[6]) );
  DFFNEGX1 \dp_ALU/global_score_reg[5]  ( .D(n52), .CLK(n35), .Q(
        out_global_score[5]) );
  DFFNEGX1 \dp_ALU/global_score_reg[4]  ( .D(n51), .CLK(n35), .Q(
        out_global_score[4]) );
  DFFNEGX1 \dp_ALU/global_score_reg[3]  ( .D(n50), .CLK(n35), .Q(
        out_global_score[3]) );
  DFFNEGX1 \dp_ALU/global_score_reg[2]  ( .D(n49), .CLK(n34), .Q(
        out_global_score[2]) );
  DFFNEGX1 \dp_ALU/global_score_reg[1]  ( .D(n48), .CLK(n34), .Q(
        out_global_score[1]) );
  DFFNEGX1 \dp_ALU/global_score_reg[0]  ( .D(n47), .CLK(n34), .Q(
        out_global_score[0]) );
  DFFNEGX1 \dp_ALU/global_score_reg[31]  ( .D(n46), .CLK(n34), .Q(
        out_global_score[31]) );
  DFFNEGX1 \dp_ALU/win_reg  ( .D(\dp_ALU/n318 ), .CLK(n34), .Q(out_win) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[0]  ( .D(\dp_ALU/n343 ), .CLK(n34), .Q(
        out_temp_cleared[0]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[0]  ( .D(\dp_ALU/n344 ), .CLK(n34), .Q(
        out_temp_decoded[0]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[1]  ( .D(\dp_ALU/n342 ), .CLK(n34), .Q(
        out_temp_cleared[1]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[1]  ( .D(\dp_ALU/n345 ), .CLK(n34), .Q(
        out_temp_decoded[1]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[2]  ( .D(\dp_ALU/n341 ), .CLK(n34), .Q(
        out_temp_cleared[2]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[2]  ( .D(\dp_ALU/n346 ), .CLK(n34), .Q(
        out_temp_decoded[2]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[3]  ( .D(\dp_ALU/n340 ), .CLK(n34), .Q(
        out_temp_cleared[3]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[3]  ( .D(\dp_ALU/n347 ), .CLK(n34), .Q(
        out_temp_decoded[3]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[4]  ( .D(\dp_ALU/n339 ), .CLK(n33), .Q(
        out_temp_cleared[4]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[4]  ( .D(\dp_ALU/n348 ), .CLK(n33), .Q(
        out_temp_decoded[4]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[5]  ( .D(\dp_ALU/n338 ), .CLK(n33), .Q(
        out_temp_cleared[5]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[5]  ( .D(\dp_ALU/n349 ), .CLK(n33), .Q(
        out_temp_decoded[5]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[6]  ( .D(\dp_ALU/n337 ), .CLK(n33), .Q(
        out_temp_cleared[6]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[6]  ( .D(\dp_ALU/n350 ), .CLK(n33), .Q(
        out_temp_decoded[6]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[7]  ( .D(\dp_ALU/n336 ), .CLK(n33), .Q(
        out_temp_cleared[7]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[7]  ( .D(\dp_ALU/n351 ), .CLK(n33), .Q(
        out_temp_decoded[7]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[8]  ( .D(\dp_ALU/n335 ), .CLK(n33), .Q(
        out_temp_cleared[8]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[8]  ( .D(\dp_ALU/n352 ), .CLK(n33), .Q(
        out_temp_decoded[8]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[9]  ( .D(\dp_ALU/n334 ), .CLK(n33), .Q(
        out_temp_cleared[9]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[9]  ( .D(\dp_ALU/n353 ), .CLK(n33), .Q(
        out_temp_decoded[9]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[10]  ( .D(\dp_ALU/n333 ), .CLK(n33), .Q(
        out_temp_cleared[10]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[10]  ( .D(\dp_ALU/n354 ), .CLK(n32), .Q(
        out_temp_decoded[10]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[11]  ( .D(\dp_ALU/n332 ), .CLK(n32), .Q(
        out_temp_cleared[11]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[11]  ( .D(\dp_ALU/n355 ), .CLK(n32), .Q(
        out_temp_decoded[11]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[12]  ( .D(\dp_ALU/n331 ), .CLK(n32), .Q(
        out_temp_cleared[12]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[12]  ( .D(\dp_ALU/n356 ), .CLK(n32), .Q(
        out_temp_decoded[12]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[13]  ( .D(\dp_ALU/n330 ), .CLK(n32), .Q(
        out_temp_cleared[13]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[13]  ( .D(\dp_ALU/n357 ), .CLK(n32), .Q(
        out_temp_decoded[13]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[14]  ( .D(\dp_ALU/n329 ), .CLK(n32), .Q(
        out_temp_cleared[14]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[14]  ( .D(\dp_ALU/n358 ), .CLK(n32), .Q(
        out_temp_decoded[14]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[15]  ( .D(\dp_ALU/n328 ), .CLK(n32), .Q(
        out_temp_cleared[15]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[15]  ( .D(\dp_ALU/n359 ), .CLK(n32), .Q(
        out_temp_decoded[15]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[16]  ( .D(\dp_ALU/n327 ), .CLK(n32), .Q(
        out_temp_cleared[16]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[16]  ( .D(\dp_ALU/n360 ), .CLK(n32), .Q(
        out_temp_decoded[16]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[17]  ( .D(\dp_ALU/n326 ), .CLK(n31), .Q(
        out_temp_cleared[17]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[17]  ( .D(\dp_ALU/n361 ), .CLK(n31), .Q(
        out_temp_decoded[17]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[18]  ( .D(\dp_ALU/n325 ), .CLK(n31), .Q(
        out_temp_cleared[18]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[18]  ( .D(\dp_ALU/n362 ), .CLK(n31), .Q(
        out_temp_decoded[18]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[19]  ( .D(\dp_ALU/n324 ), .CLK(n31), .Q(
        out_temp_cleared[19]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[19]  ( .D(\dp_ALU/n363 ), .CLK(n31), .Q(
        out_temp_decoded[19]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[20]  ( .D(\dp_ALU/n323 ), .CLK(n31), .Q(
        out_temp_cleared[20]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[20]  ( .D(\dp_ALU/n364 ), .CLK(n31), .Q(
        out_temp_decoded[20]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[21]  ( .D(\dp_ALU/n322 ), .CLK(n31), .Q(
        out_temp_cleared[21]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[21]  ( .D(\dp_ALU/n365 ), .CLK(n31), .Q(
        out_temp_decoded[21]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[22]  ( .D(\dp_ALU/n321 ), .CLK(n31), .Q(
        out_temp_cleared[22]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[22]  ( .D(\dp_ALU/n366 ), .CLK(n31), .Q(
        out_temp_decoded[22]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[23]  ( .D(\dp_ALU/n320 ), .CLK(n31), .Q(
        out_temp_cleared[23]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[23]  ( .D(\dp_ALU/n367 ), .CLK(n30), .Q(
        out_temp_decoded[23]) );
  DFFNEGX1 \dp_ALU/temp_cleared_reg[24]  ( .D(\dp_ALU/n319 ), .CLK(n30), .Q(
        out_temp_cleared[24]) );
  DFFNEGX1 \dp_ALU/temp_decoded_reg[24]  ( .D(\dp_ALU/n368 ), .CLK(n30), .Q(
        out_temp_decoded[24]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[0]  ( .D(n43), .CLK(n30), .Q(
        out_temp_data_in[0]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[1]  ( .D(n42), .CLK(n30), .Q(
        out_temp_data_in[1]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[2]  ( .D(n41), .CLK(n30), .Q(
        out_temp_data_in[2]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[3]  ( .D(n40), .CLK(n30), .Q(
        out_temp_data_in[3]) );
  DFFNEGX1 \dp_ALU/temp_data_in_reg[4]  ( .D(n39), .CLK(n30), .Q(
        out_temp_data_in[4]) );
  DFFNEGX1 \dp_ALU/mines_reg[5]  ( .D(\dp_ALU/n369 ), .CLK(n30), .Q(
        out_mines[5]) );
  DFFNEGX1 \dp_ALU/mines_reg[15]  ( .D(\dp_ALU/n370 ), .CLK(n30), .Q(
        out_mines[15]) );
  DFFNEGX1 \dp_ALU/mines_reg[19]  ( .D(\dp_ALU/n371 ), .CLK(n30), .Q(
        out_mines[19]) );
  DFFNEGX1 \dp_ALU/mines_reg[21]  ( .D(\dp_ALU/n372 ), .CLK(n30), .Q(
        out_mines[21]) );
  DFFNEGX1 \dp_ALU/n_nearby_reg[0]  ( .D(\dp_ALU/n373 ), .CLK(n30), .Q(
        out_n_nearby[0]) );
  HAX1 \dp_ALU/add_69/U1_1_1  ( .A(out_global_score[1]), .B(
        out_global_score[0]), .YC(\dp_ALU/add_69/carry [2]), .YS(\dp_ALU/N142 ) );
  HAX1 \dp_ALU/add_69/U1_1_2  ( .A(out_global_score[2]), .B(
        \dp_ALU/add_69/carry [2]), .YC(\dp_ALU/add_69/carry [3]), .YS(
        \dp_ALU/N143 ) );
  HAX1 \dp_ALU/add_69/U1_1_3  ( .A(out_global_score[3]), .B(
        \dp_ALU/add_69/carry [3]), .YC(\dp_ALU/add_69/carry [4]), .YS(
        \dp_ALU/N144 ) );
  HAX1 \dp_ALU/add_69/U1_1_4  ( .A(out_global_score[4]), .B(
        \dp_ALU/add_69/carry [4]), .YC(\dp_ALU/add_69/carry [5]), .YS(
        \dp_ALU/N145 ) );
  HAX1 \dp_ALU/add_69/U1_1_5  ( .A(out_global_score[5]), .B(
        \dp_ALU/add_69/carry [5]), .YC(\dp_ALU/add_69/carry [6]), .YS(
        \dp_ALU/N146 ) );
  HAX1 \dp_ALU/add_69/U1_1_6  ( .A(out_global_score[6]), .B(
        \dp_ALU/add_69/carry [6]), .YC(\dp_ALU/add_69/carry [7]), .YS(
        \dp_ALU/N147 ) );
  HAX1 \dp_ALU/add_69/U1_1_7  ( .A(out_global_score[7]), .B(
        \dp_ALU/add_69/carry [7]), .YC(\dp_ALU/add_69/carry [8]), .YS(
        \dp_ALU/N148 ) );
  HAX1 \dp_ALU/add_69/U1_1_8  ( .A(out_global_score[8]), .B(
        \dp_ALU/add_69/carry [8]), .YC(\dp_ALU/add_69/carry [9]), .YS(
        \dp_ALU/N149 ) );
  HAX1 \dp_ALU/add_69/U1_1_9  ( .A(out_global_score[9]), .B(
        \dp_ALU/add_69/carry [9]), .YC(\dp_ALU/add_69/carry [10]), .YS(
        \dp_ALU/N150 ) );
  HAX1 \dp_ALU/add_69/U1_1_10  ( .A(out_global_score[10]), .B(
        \dp_ALU/add_69/carry [10]), .YC(\dp_ALU/add_69/carry [11]), .YS(
        \dp_ALU/N151 ) );
  HAX1 \dp_ALU/add_69/U1_1_11  ( .A(out_global_score[11]), .B(
        \dp_ALU/add_69/carry [11]), .YC(\dp_ALU/add_69/carry [12]), .YS(
        \dp_ALU/N152 ) );
  HAX1 \dp_ALU/add_69/U1_1_12  ( .A(out_global_score[12]), .B(
        \dp_ALU/add_69/carry [12]), .YC(\dp_ALU/add_69/carry [13]), .YS(
        \dp_ALU/N153 ) );
  HAX1 \dp_ALU/add_69/U1_1_13  ( .A(out_global_score[13]), .B(
        \dp_ALU/add_69/carry [13]), .YC(\dp_ALU/add_69/carry [14]), .YS(
        \dp_ALU/N154 ) );
  HAX1 \dp_ALU/add_69/U1_1_14  ( .A(out_global_score[14]), .B(
        \dp_ALU/add_69/carry [14]), .YC(\dp_ALU/add_69/carry [15]), .YS(
        \dp_ALU/N155 ) );
  HAX1 \dp_ALU/add_69/U1_1_15  ( .A(out_global_score[15]), .B(
        \dp_ALU/add_69/carry [15]), .YC(\dp_ALU/add_69/carry [16]), .YS(
        \dp_ALU/N156 ) );
  HAX1 \dp_ALU/add_69/U1_1_16  ( .A(out_global_score[16]), .B(
        \dp_ALU/add_69/carry [16]), .YC(\dp_ALU/add_69/carry [17]), .YS(
        \dp_ALU/N157 ) );
  HAX1 \dp_ALU/add_69/U1_1_17  ( .A(out_global_score[17]), .B(
        \dp_ALU/add_69/carry [17]), .YC(\dp_ALU/add_69/carry [18]), .YS(
        \dp_ALU/N158 ) );
  HAX1 \dp_ALU/add_69/U1_1_18  ( .A(out_global_score[18]), .B(
        \dp_ALU/add_69/carry [18]), .YC(\dp_ALU/add_69/carry [19]), .YS(
        \dp_ALU/N159 ) );
  HAX1 \dp_ALU/add_69/U1_1_19  ( .A(out_global_score[19]), .B(
        \dp_ALU/add_69/carry [19]), .YC(\dp_ALU/add_69/carry [20]), .YS(
        \dp_ALU/N160 ) );
  HAX1 \dp_ALU/add_69/U1_1_20  ( .A(out_global_score[20]), .B(
        \dp_ALU/add_69/carry [20]), .YC(\dp_ALU/add_69/carry [21]), .YS(
        \dp_ALU/N161 ) );
  HAX1 \dp_ALU/add_69/U1_1_21  ( .A(out_global_score[21]), .B(
        \dp_ALU/add_69/carry [21]), .YC(\dp_ALU/add_69/carry [22]), .YS(
        \dp_ALU/N162 ) );
  HAX1 \dp_ALU/add_69/U1_1_22  ( .A(out_global_score[22]), .B(
        \dp_ALU/add_69/carry [22]), .YC(\dp_ALU/add_69/carry [23]), .YS(
        \dp_ALU/N163 ) );
  HAX1 \dp_ALU/add_69/U1_1_23  ( .A(out_global_score[23]), .B(
        \dp_ALU/add_69/carry [23]), .YC(\dp_ALU/add_69/carry [24]), .YS(
        \dp_ALU/N164 ) );
  HAX1 \dp_ALU/add_69/U1_1_24  ( .A(out_global_score[24]), .B(
        \dp_ALU/add_69/carry [24]), .YC(\dp_ALU/add_69/carry [25]), .YS(
        \dp_ALU/N165 ) );
  HAX1 \dp_ALU/add_69/U1_1_25  ( .A(out_global_score[25]), .B(
        \dp_ALU/add_69/carry [25]), .YC(\dp_ALU/add_69/carry [26]), .YS(
        \dp_ALU/N166 ) );
  HAX1 \dp_ALU/add_69/U1_1_26  ( .A(out_global_score[26]), .B(
        \dp_ALU/add_69/carry [26]), .YC(\dp_ALU/add_69/carry [27]), .YS(
        \dp_ALU/N167 ) );
  HAX1 \dp_ALU/add_69/U1_1_27  ( .A(out_global_score[27]), .B(
        \dp_ALU/add_69/carry [27]), .YC(\dp_ALU/add_69/carry [28]), .YS(
        \dp_ALU/N168 ) );
  HAX1 \dp_ALU/add_69/U1_1_28  ( .A(out_global_score[28]), .B(
        \dp_ALU/add_69/carry [28]), .YC(\dp_ALU/add_69/carry [29]), .YS(
        \dp_ALU/N169 ) );
  HAX1 \dp_ALU/add_69/U1_1_29  ( .A(out_global_score[29]), .B(
        \dp_ALU/add_69/carry [29]), .YC(\dp_ALU/add_69/carry [30]), .YS(
        \dp_ALU/N170 ) );
  HAX1 \dp_ALU/add_69/U1_1_30  ( .A(out_global_score[30]), .B(
        \dp_ALU/add_69/carry [30]), .YC(\dp_ALU/add_69/carry [31]), .YS(
        \dp_ALU/N171 ) );
  AND2X2 U1 ( .A(out_temp_data_in[4]), .B(n179), .Y(n1) );
  AND2X2 U2 ( .A(out_temp_decoded[19]), .B(out_mines[19]), .Y(n2) );
  OR2X2 U3 ( .A(\dp_ALU/n157 ), .B(n2), .Y(n3) );
  OR2X2 U4 ( .A(out_temp_decoded[10]), .B(out_temp_cleared[10]), .Y(n4) );
  OR2X2 U5 ( .A(out_temp_decoded[20]), .B(out_temp_cleared[20]), .Y(n5) );
  OR2X2 U6 ( .A(out_temp_decoded[14]), .B(out_temp_cleared[14]), .Y(n6) );
  AND2X2 U7 ( .A(n141), .B(n142), .Y(n7) );
  AND2X2 U8 ( .A(n120), .B(n121), .Y(n8) );
  AND2X2 U9 ( .A(\dp_ALU/n239 ), .B(\dp_ALU/n240 ), .Y(n9) );
  INVX1 U10 ( .A(in_clkb), .Y(n10) );
  INVX2 U11 ( .A(n10), .Y(n11) );
  BUFX2 U12 ( .A(\dp_ALU/n278 ), .Y(n22) );
  BUFX2 U13 ( .A(\dp_ALU/n278 ), .Y(n21) );
  INVX2 U14 ( .A(n12), .Y(n17) );
  INVX2 U15 ( .A(n12), .Y(n18) );
  BUFX2 U16 ( .A(\dp_ALU/n279 ), .Y(n23) );
  BUFX2 U17 ( .A(\dp_ALU/n279 ), .Y(n24) );
  OR2X1 U18 ( .A(\dp_ALU/n140 ), .B(n19), .Y(n12) );
  INVX2 U19 ( .A(n20), .Y(n19) );
  INVX2 U20 ( .A(n15), .Y(n14) );
  BUFX2 U21 ( .A(n29), .Y(n36) );
  BUFX2 U22 ( .A(n27), .Y(n30) );
  BUFX2 U23 ( .A(n27), .Y(n31) );
  BUFX2 U24 ( .A(n27), .Y(n32) );
  BUFX2 U25 ( .A(n28), .Y(n33) );
  BUFX2 U26 ( .A(n28), .Y(n34) );
  BUFX2 U27 ( .A(n28), .Y(n35) );
  BUFX2 U28 ( .A(n29), .Y(n37) );
  INVX2 U29 ( .A(\dp_ALU/n161 ), .Y(n20) );
  BUFX2 U30 ( .A(\dp_ALU/n281 ), .Y(n25) );
  BUFX2 U31 ( .A(\dp_ALU/n281 ), .Y(n26) );
  BUFX2 U32 ( .A(n16), .Y(n15) );
  BUFX2 U33 ( .A(in_restart), .Y(n13) );
  INVX2 U34 ( .A(\dp_ALU/n140 ), .Y(n16) );
  BUFX2 U35 ( .A(in_clka), .Y(n27) );
  BUFX2 U36 ( .A(in_clka), .Y(n28) );
  BUFX2 U37 ( .A(in_clka), .Y(n29) );
  INVX2 U38 ( .A(\dp_ALU/N208 ), .Y(n38) );
  INVX2 U39 ( .A(\dp_ALU/n311 ), .Y(n39) );
  INVX2 U40 ( .A(\dp_ALU/n310 ), .Y(n40) );
  INVX2 U41 ( .A(\dp_ALU/n309 ), .Y(n41) );
  INVX2 U42 ( .A(\dp_ALU/n308 ), .Y(n42) );
  INVX2 U43 ( .A(\dp_ALU/n306 ), .Y(n43) );
  INVX2 U44 ( .A(\dp_ALU/n312 ), .Y(n44) );
  INVX2 U45 ( .A(n13), .Y(n45) );
  INVX2 U46 ( .A(\dp_ALU/n192 ), .Y(n46) );
  INVX2 U47 ( .A(\dp_ALU/n191 ), .Y(n47) );
  INVX2 U48 ( .A(\dp_ALU/n190 ), .Y(n48) );
  INVX2 U49 ( .A(\dp_ALU/n189 ), .Y(n49) );
  INVX2 U50 ( .A(\dp_ALU/n188 ), .Y(n50) );
  INVX2 U51 ( .A(\dp_ALU/n187 ), .Y(n51) );
  INVX2 U52 ( .A(\dp_ALU/n186 ), .Y(n52) );
  INVX2 U53 ( .A(\dp_ALU/n185 ), .Y(n53) );
  INVX2 U54 ( .A(\dp_ALU/n184 ), .Y(n54) );
  INVX2 U55 ( .A(\dp_ALU/n183 ), .Y(n55) );
  INVX2 U56 ( .A(\dp_ALU/n182 ), .Y(n56) );
  INVX2 U57 ( .A(\dp_ALU/n181 ), .Y(n57) );
  INVX2 U58 ( .A(\dp_ALU/n180 ), .Y(n58) );
  INVX2 U59 ( .A(\dp_ALU/n179 ), .Y(n59) );
  INVX2 U60 ( .A(\dp_ALU/n178 ), .Y(n60) );
  INVX2 U61 ( .A(\dp_ALU/n177 ), .Y(n61) );
  INVX2 U62 ( .A(\dp_ALU/n176 ), .Y(n62) );
  INVX2 U63 ( .A(\dp_ALU/n175 ), .Y(n63) );
  INVX2 U64 ( .A(\dp_ALU/n174 ), .Y(n64) );
  INVX2 U65 ( .A(\dp_ALU/n173 ), .Y(n65) );
  INVX2 U66 ( .A(\dp_ALU/n172 ), .Y(n66) );
  INVX2 U67 ( .A(\dp_ALU/n171 ), .Y(n67) );
  INVX2 U68 ( .A(\dp_ALU/n170 ), .Y(n68) );
  INVX2 U69 ( .A(\dp_ALU/n169 ), .Y(n69) );
  INVX2 U70 ( .A(\dp_ALU/n168 ), .Y(n70) );
  INVX2 U71 ( .A(\dp_ALU/n167 ), .Y(n71) );
  INVX2 U72 ( .A(\dp_ALU/n166 ), .Y(n72) );
  INVX2 U73 ( .A(\dp_ALU/n165 ), .Y(n73) );
  INVX2 U74 ( .A(\dp_ALU/n164 ), .Y(n74) );
  INVX2 U75 ( .A(\dp_ALU/n163 ), .Y(n75) );
  INVX2 U76 ( .A(\dp_ALU/n162 ), .Y(n76) );
  INVX2 U77 ( .A(\dp_ALU/n159 ), .Y(n77) );
  INVX2 U78 ( .A(\dp_ALU/n139 ), .Y(n78) );
  INVX2 U79 ( .A(\main/n36 ), .Y(n79) );
  INVX2 U80 ( .A(out_decode), .Y(n80) );
  INVX2 U81 ( .A(out_alu), .Y(n81) );
  INVX2 U82 ( .A(out_start), .Y(n82) );
  INVX2 U83 ( .A(\main/n26 ), .Y(n83) );
  INVX2 U84 ( .A(\main/n19 ), .Y(n84) );
  INVX2 U85 ( .A(\main/n42 ), .Y(n85) );
  INVX2 U86 ( .A(\main/n58 ), .Y(n86) );
  INVX2 U87 ( .A(\main/n39 ), .Y(n87) );
  INVX2 U88 ( .A(out_state_main[1]), .Y(n88) );
  INVX2 U89 ( .A(\main/n50 ), .Y(n89) );
  INVX2 U90 ( .A(\main/n37 ), .Y(n90) );
  INVX2 U91 ( .A(out_state_main[2]), .Y(n91) );
  INVX2 U92 ( .A(\main/next_state [2]), .Y(n92) );
  INVX2 U93 ( .A(out_state_main[3]), .Y(n93) );
  INVX2 U94 ( .A(\main/next_state [3]), .Y(n94) );
  INVX2 U95 ( .A(out_state_main[0]), .Y(n95) );
  INVX2 U96 ( .A(out_alu_done), .Y(n96) );
  INVX2 U97 ( .A(out_decode_done), .Y(n97) );
  INVX2 U98 ( .A(out_place_done), .Y(n98) );
  INVX2 U99 ( .A(out_gameover), .Y(n99) );
  INVX2 U100 ( .A(out_global_score[0]), .Y(n100) );
  INVX2 U101 ( .A(\dp_ALU/n193 ), .Y(n101) );
  INVX2 U102 ( .A(\dp_ALU/n235 ), .Y(n102) );
  INVX2 U103 ( .A(out_temp_cleared[0]), .Y(n103) );
  INVX2 U104 ( .A(out_temp_decoded[0]), .Y(n104) );
  INVX2 U105 ( .A(out_temp_cleared[1]), .Y(n105) );
  INVX2 U106 ( .A(out_temp_decoded[1]), .Y(n106) );
  INVX2 U107 ( .A(out_temp_cleared[2]), .Y(n107) );
  INVX2 U108 ( .A(out_temp_decoded[2]), .Y(n108) );
  INVX2 U109 ( .A(out_temp_cleared[3]), .Y(n109) );
  INVX2 U110 ( .A(out_temp_decoded[3]), .Y(n110) );
  INVX2 U111 ( .A(out_temp_cleared[4]), .Y(n111) );
  INVX2 U112 ( .A(out_temp_decoded[4]), .Y(n112) );
  INVX2 U113 ( .A(out_temp_cleared[5]), .Y(n113) );
  INVX2 U114 ( .A(\dp_ALU/n157 ), .Y(n114) );
  INVX2 U115 ( .A(out_temp_decoded[5]), .Y(n115) );
  INVX2 U116 ( .A(out_temp_cleared[6]), .Y(n116) );
  INVX2 U117 ( .A(out_temp_decoded[6]), .Y(n117) );
  INVX2 U118 ( .A(out_temp_cleared[7]), .Y(n118) );
  INVX2 U119 ( .A(out_temp_decoded[7]), .Y(n119) );
  INVX2 U120 ( .A(out_temp_cleared[8]), .Y(n120) );
  INVX2 U121 ( .A(out_temp_decoded[8]), .Y(n121) );
  INVX2 U122 ( .A(\dp_ALU/n227 ), .Y(n122) );
  INVX2 U123 ( .A(out_temp_cleared[9]), .Y(n123) );
  INVX2 U124 ( .A(out_temp_decoded[9]), .Y(n124) );
  INVX2 U125 ( .A(out_temp_cleared[10]), .Y(n125) );
  INVX2 U126 ( .A(out_temp_decoded[10]), .Y(n126) );
  INVX2 U127 ( .A(out_temp_cleared[11]), .Y(n127) );
  INVX2 U128 ( .A(out_temp_decoded[11]), .Y(n128) );
  INVX2 U129 ( .A(out_temp_cleared[12]), .Y(n129) );
  INVX2 U130 ( .A(out_temp_decoded[12]), .Y(n130) );
  INVX2 U131 ( .A(out_temp_cleared[13]), .Y(n131) );
  INVX2 U132 ( .A(out_temp_decoded[13]), .Y(n132) );
  INVX2 U133 ( .A(out_temp_cleared[14]), .Y(n133) );
  INVX2 U134 ( .A(out_temp_decoded[14]), .Y(n134) );
  INVX2 U135 ( .A(out_temp_cleared[15]), .Y(n135) );
  INVX2 U136 ( .A(out_temp_decoded[15]), .Y(n136) );
  INVX2 U137 ( .A(out_temp_cleared[16]), .Y(n137) );
  INVX2 U138 ( .A(out_temp_decoded[16]), .Y(n138) );
  INVX2 U139 ( .A(out_temp_cleared[17]), .Y(n139) );
  INVX2 U140 ( .A(out_temp_decoded[17]), .Y(n140) );
  INVX2 U141 ( .A(out_temp_cleared[18]), .Y(n141) );
  INVX2 U142 ( .A(out_temp_decoded[18]), .Y(n142) );
  INVX2 U143 ( .A(out_temp_cleared[19]), .Y(n143) );
  INVX2 U144 ( .A(out_temp_decoded[19]), .Y(n144) );
  INVX2 U145 ( .A(out_temp_cleared[20]), .Y(n145) );
  INVX2 U146 ( .A(out_temp_decoded[20]), .Y(n146) );
  INVX2 U147 ( .A(out_temp_cleared[21]), .Y(n147) );
  INVX2 U148 ( .A(\dp_ALU/n208 ), .Y(n148) );
  INVX2 U149 ( .A(out_temp_decoded[21]), .Y(n149) );
  INVX2 U150 ( .A(out_temp_cleared[22]), .Y(n150) );
  INVX2 U151 ( .A(out_temp_decoded[22]), .Y(n151) );
  INVX2 U152 ( .A(out_temp_cleared[23]), .Y(n152) );
  INVX2 U153 ( .A(out_temp_decoded[23]), .Y(n153) );
  INVX2 U154 ( .A(out_temp_cleared[24]), .Y(n154) );
  INVX2 U155 ( .A(out_temp_decoded[24]), .Y(n155) );
  INVX2 U156 ( .A(n169), .Y(n156) );
  INVX2 U157 ( .A(out_temp_data_in[1]), .Y(n157) );
  INVX2 U158 ( .A(out_temp_data_in[2]), .Y(n158) );
  INVX2 U159 ( .A(out_temp_data_in[3]), .Y(n159) );
  INVX2 U160 ( .A(out_temp_data_in[4]), .Y(n160) );
  INVX2 U161 ( .A(out_mines[5]), .Y(n161) );
  INVX2 U162 ( .A(out_mines[15]), .Y(n162) );
  INVX2 U163 ( .A(out_mines[19]), .Y(n163) );
  INVX2 U164 ( .A(out_mines[21]), .Y(n164) );
  INVX2 U165 ( .A(out_n_nearby[0]), .Y(n165) );
  XOR2X1 U166 ( .A(\dp_ALU/add_69/carry [31]), .B(out_global_score[31]), .Y(
        \dp_ALU/N172 ) );
  NOR2X1 U167 ( .A(out_temp_data_in[0]), .B(out_temp_data_in[1]), .Y(n169) );
  NAND3X1 U168 ( .A(n159), .B(n160), .C(n158), .Y(n172) );
  NOR2X1 U169 ( .A(n156), .B(n172), .Y(\dp_ALU/N38 ) );
  NAND3X1 U170 ( .A(n158), .B(n160), .C(out_temp_data_in[3]), .Y(n176) );
  OR2X1 U171 ( .A(n157), .B(out_temp_data_in[0]), .Y(n173) );
  NOR2X1 U172 ( .A(n176), .B(n173), .Y(\dp_ALU/N48 ) );
  NAND2X1 U173 ( .A(out_temp_data_in[1]), .B(out_temp_data_in[0]), .Y(n174) );
  NOR2X1 U174 ( .A(n176), .B(n174), .Y(\dp_ALU/N49 ) );
  NAND3X1 U175 ( .A(out_temp_data_in[3]), .B(n160), .C(out_temp_data_in[2]), 
        .Y(n166) );
  NOR2X1 U176 ( .A(n156), .B(n166), .Y(\dp_ALU/N50 ) );
  NAND2X1 U177 ( .A(out_temp_data_in[0]), .B(n157), .Y(n177) );
  NOR2X1 U178 ( .A(n177), .B(n166), .Y(\dp_ALU/N51 ) );
  NOR2X1 U179 ( .A(n173), .B(n166), .Y(\dp_ALU/N52 ) );
  NOR2X1 U180 ( .A(n174), .B(n166), .Y(\dp_ALU/N53 ) );
  NAND3X1 U181 ( .A(n158), .B(n159), .C(out_temp_data_in[4]), .Y(n167) );
  NOR2X1 U182 ( .A(n156), .B(n167), .Y(\dp_ALU/N54 ) );
  NOR2X1 U183 ( .A(n177), .B(n167), .Y(\dp_ALU/N55 ) );
  NOR2X1 U184 ( .A(n173), .B(n167), .Y(\dp_ALU/N56 ) );
  NOR2X1 U185 ( .A(n174), .B(n167), .Y(\dp_ALU/N57 ) );
  NOR2X1 U186 ( .A(n177), .B(n172), .Y(\dp_ALU/N39 ) );
  NAND3X1 U187 ( .A(out_temp_data_in[2]), .B(n159), .C(out_temp_data_in[4]), 
        .Y(n168) );
  NOR2X1 U188 ( .A(n156), .B(n168), .Y(\dp_ALU/N58 ) );
  NOR2X1 U189 ( .A(n177), .B(n168), .Y(\dp_ALU/N59 ) );
  NOR2X1 U190 ( .A(n173), .B(n168), .Y(\dp_ALU/N60 ) );
  NOR2X1 U191 ( .A(n174), .B(n168), .Y(\dp_ALU/N61 ) );
  NAND2X1 U192 ( .A(out_temp_data_in[3]), .B(n158), .Y(n171) );
  NAND2X1 U193 ( .A(out_temp_data_in[4]), .B(n169), .Y(n170) );
  NOR2X1 U194 ( .A(n171), .B(n170), .Y(\dp_ALU/N62 ) );
  NOR2X1 U195 ( .A(n173), .B(n172), .Y(\dp_ALU/N40 ) );
  NOR2X1 U196 ( .A(n174), .B(n172), .Y(\dp_ALU/N41 ) );
  NAND3X1 U197 ( .A(n159), .B(n160), .C(out_temp_data_in[2]), .Y(n175) );
  NOR2X1 U198 ( .A(n156), .B(n175), .Y(\dp_ALU/N42 ) );
  NOR2X1 U199 ( .A(n177), .B(n175), .Y(\dp_ALU/N43 ) );
  NOR2X1 U200 ( .A(n175), .B(n173), .Y(\dp_ALU/N44 ) );
  NOR2X1 U201 ( .A(n175), .B(n174), .Y(\dp_ALU/N45 ) );
  NOR2X1 U202 ( .A(n176), .B(n156), .Y(\dp_ALU/N46 ) );
  NOR2X1 U203 ( .A(n177), .B(n176), .Y(\dp_ALU/N47 ) );
  OAI21X1 U204 ( .A(out_temp_data_in[0]), .B(out_temp_data_in[1]), .C(
        out_temp_data_in[3]), .Y(n178) );
  OAI21X1 U205 ( .A(n159), .B(n158), .C(n178), .Y(n179) );
  NAND2X1 U206 ( .A(\dp_ALU/n248 ), .B(\dp_ALU/n249 ), .Y(\dp_ALU/n247 ) );
  NAND2X1 U207 ( .A(out_temp_decoded[21]), .B(out_mines[21]), .Y(\dp_ALU/n208 ) );
  NAND2X1 U208 ( .A(out_temp_cleared[19]), .B(out_mines[19]), .Y(\dp_ALU/n263 ) );
  NAND2X1 U209 ( .A(\dp_ALU/n257 ), .B(\dp_ALU/n258 ), .Y(\dp_ALU/n254 ) );
  NAND2X1 U210 ( .A(out_temp_decoded[15]), .B(out_mines[15]), .Y(\dp_ALU/n206 ) );
  NAND2X1 U211 ( .A(\dp_ALU/n220 ), .B(\dp_ALU/n221 ), .Y(\dp_ALU/n217 ) );
  NAND2X1 U212 ( .A(\dp_ALU/n268 ), .B(\dp_ALU/n269 ), .Y(\dp_ALU/n267 ) );
  NAND2X1 U213 ( .A(\dp_ALU/n272 ), .B(\dp_ALU/n273 ), .Y(\dp_ALU/n261 ) );
  NAND2X1 U214 ( .A(\dp_ALU/n251 ), .B(\dp_ALU/n253 ), .Y(\dp_ALU/n241 ) );
  NAND2X1 U215 ( .A(n6), .B(\dp_ALU/n245 ), .Y(\dp_ALU/n242 ) );
  NAND2X1 U216 ( .A(\dp_ALU/n208 ), .B(\dp_ALU/n206 ), .Y(\dp_ALU/n204 ) );
  NAND2X1 U217 ( .A(\dp_ALU/n206 ), .B(\dp_ALU/n151 ), .Y(\dp_ALU/n150 ) );
  NAND2X1 U218 ( .A(\dp_ALU/n193 ), .B(n114), .Y(\dp_ALU/n149 ) );
  NAND2X1 U219 ( .A(\dp_ALU/n201 ), .B(\dp_ALU/n202 ), .Y(\dp_ALU/n199 ) );
  NOR2X1 U220 ( .A(n161), .B(n115), .Y(\dp_ALU/n157 ) );
  AOI21X1 U221 ( .A(out_temp_cleared[21]), .B(out_mines[21]), .C(\dp_ALU/n277 ), .Y(\dp_ALU/n272 ) );
  NOR2X1 U222 ( .A(\dp_ALU/n246 ), .B(\dp_ALU/n247 ), .Y(\dp_ALU/n245 ) );
  NAND2X1 U223 ( .A(n139), .B(n140), .Y(\dp_ALU/n256 ) );
  NOR2X1 U224 ( .A(\dp_ALU/n259 ), .B(\dp_ALU/n260 ), .Y(\dp_ALU/n251 ) );
  NAND2X1 U225 ( .A(n127), .B(n128), .Y(\dp_ALU/n231 ) );
  NAND2X1 U226 ( .A(n123), .B(n124), .Y(\dp_ALU/n230 ) );
  NAND2X1 U227 ( .A(n116), .B(n117), .Y(\dp_ALU/n221 ) );
  NAND2X1 U228 ( .A(n109), .B(n110), .Y(\dp_ALU/n269 ) );
  NAND2X1 U229 ( .A(n105), .B(n106), .Y(\dp_ALU/n240 ) );
  NAND2X1 U230 ( .A(n103), .B(n104), .Y(\dp_ALU/n236 ) );
endmodule

