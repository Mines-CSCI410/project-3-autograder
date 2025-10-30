module bit_test;
  reg in, load;
  wire out;

  student_bit dut (.in(in), .load(load), .out(out));

  initial begin
    $display("|time|in|load|out|");

    in = 0;
    load = 0;
    #1 $display("|0+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #2 $display("|1|%b|%b|%b|", in, load, out)

    in = 0;
    load = 1;
    #3 $display("|1+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 1;
    #4 $display("|2|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #5 $display("|2+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #6 $display("|3|%b|%b|%b|", in, load, out)

    in = 1;
    load = 1;
    #7 $display("|3+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 1;
    #8 $display("|4|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #9 $display("|4+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #10 $display("|5|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #11 $display("|5+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #12 $display("|6|%b|%b|%b|", in, load, out)

    in = 0;
    load = 1;
    #13 $display("|6+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 1;
    #14 $display("|7|%b|%b|%b|", in, load, out)

    in = 1;
    load = 1;
    #15 $display("|7+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 1;
    #16 $display("|8|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #17 $display("|8+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #18 $display("|9|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #19 $display("|9+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #20 $display("|10|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #21 $display("|10+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #22 $display("|11|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #23 $display("|11+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #24 $display("|12|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #25 $display("|12+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #26 $display("|13|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #27 $display("|13+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #28 $display("|14|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #29 $display("|14+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #30 $display("|15|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #31 $display("|15+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #32 $display("|16|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #33 $display("|16+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #34 $display("|17|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #35 $display("|17+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #36 $display("|18|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #37 $display("|18+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #38 $display("|19|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #39 $display("|19+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #40 $display("|20|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #41 $display("|20+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #42 $display("|21|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #43 $display("|21+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #44 $display("|22|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #45 $display("|22+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #46 $display("|23|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #47 $display("|23+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #48 $display("|24|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #49 $display("|24+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #50 $display("|25|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #51 $display("|25+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #52 $display("|26|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #53 $display("|26+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #54 $display("|27|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #55 $display("|27+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #56 $display("|28|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #57 $display("|28+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #58 $display("|29|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #59 $display("|29+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #60 $display("|30|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #61 $display("|30+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #62 $display("|31|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #63 $display("|31+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #64 $display("|32|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #65 $display("|32+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #66 $display("|33|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #67 $display("|33+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #68 $display("|34|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #69 $display("|34+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #70 $display("|35|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #71 $display("|35+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #72 $display("|36|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #73 $display("|36+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #74 $display("|37|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #75 $display("|37+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #76 $display("|38|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #77 $display("|38+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #78 $display("|39|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #79 $display("|39+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #80 $display("|40|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #81 $display("|40+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #82 $display("|41|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #83 $display("|41+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #84 $display("|42|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #85 $display("|42+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #86 $display("|43|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #87 $display("|43+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #88 $display("|44|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #89 $display("|44+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #90 $display("|45|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #91 $display("|45+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #92 $display("|46|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #93 $display("|46+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #94 $display("|47|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #95 $display("|47+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #96 $display("|48|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #97 $display("|48+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #98 $display("|49|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #99 $display("|49+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #100 $display("|50|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #101 $display("|50+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #102 $display("|51|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #103 $display("|51+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #104 $display("|52|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #105 $display("|52+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #106 $display("|53|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #107 $display("|53+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #108 $display("|54|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #109 $display("|54+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #110 $display("|55|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #111 $display("|55+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #112 $display("|56|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #113 $display("|56+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 0;
    #114 $display("|57|%b|%b|%b|", in, load, out)

    in = 0;
    load = 1;
    #115 $display("|57+|%b|%b|%b|", in, load, out)

    in = 0;
    load = 1;
    #116 $display("|58|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #117 $display("|58+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #118 $display("|59|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #119 $display("|59+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #120 $display("|60|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #121 $display("|60+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #122 $display("|61|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #123 $display("|61+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #124 $display("|62|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #125 $display("|62+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #126 $display("|63|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #127 $display("|63+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #128 $display("|64|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #129 $display("|64+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #130 $display("|65|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #131 $display("|65+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #132 $display("|66|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #133 $display("|66+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #134 $display("|67|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #135 $display("|67+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #136 $display("|68|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #137 $display("|68+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #138 $display("|69|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #139 $display("|69+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #140 $display("|70|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #141 $display("|70+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #142 $display("|71|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #143 $display("|71+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #144 $display("|72|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #145 $display("|72+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #146 $display("|73|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #147 $display("|73+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #148 $display("|74|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #149 $display("|74+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #150 $display("|75|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #151 $display("|75+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #152 $display("|76|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #153 $display("|76+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #154 $display("|77|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #155 $display("|77+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #156 $display("|78|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #157 $display("|78+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #158 $display("|79|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #159 $display("|79+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #160 $display("|80|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #161 $display("|80+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #162 $display("|81|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #163 $display("|81+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #164 $display("|82|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #165 $display("|82+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #166 $display("|83|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #167 $display("|83+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #168 $display("|84|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #169 $display("|84+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #170 $display("|85|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #171 $display("|85+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #172 $display("|86|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #173 $display("|86+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #174 $display("|87|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #175 $display("|87+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #176 $display("|88|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #177 $display("|88+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #178 $display("|89|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #179 $display("|89+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #180 $display("|90|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #181 $display("|90+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #182 $display("|91|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #183 $display("|91+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #184 $display("|92|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #185 $display("|92+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #186 $display("|93|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #187 $display("|93+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #188 $display("|94|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #189 $display("|94+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #190 $display("|95|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #191 $display("|95+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #192 $display("|96|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #193 $display("|96+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #194 $display("|97|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #195 $display("|97+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #196 $display("|98|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #197 $display("|98+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #198 $display("|99|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #199 $display("|99+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #200 $display("|100|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #201 $display("|100+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #202 $display("|101|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #203 $display("|101+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #204 $display("|102|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #205 $display("|102+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #206 $display("|103|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #207 $display("|103+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #208 $display("|104|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #209 $display("|104+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #210 $display("|105|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #211 $display("|105+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #212 $display("|106|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #213 $display("|106+|%b|%b|%b|", in, load, out)

    in = 1;
    load = 0;
    #214 $display("|107|%b|%b|%b|", in, load, out)
  end
endmodule
