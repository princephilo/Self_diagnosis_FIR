module self_diagnosing_fir (clk,
    diag_busy,
    diag_done,
    fault_detected,
    fault_type,
    rst,
    start_diag,
    fault_bit,
    fault_location,
    fault_vector,
    h0,
    h1,
    h2,
    h3,
    x,
    y);
 input clk;
 output diag_busy;
 output diag_done;
 output fault_detected;
 output fault_type;
 input rst;
 input start_diag;
 output [2:0] fault_bit;
 output [1:0] fault_location;
 output [3:0] fault_vector;
 input [3:0] h0;
 input [3:0] h1;
 input [3:0] h2;
 input [3:0] h3;
 input [3:0] x;
 output [9:0] y;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire _252_;
 wire _253_;
 wire _254_;
 wire _255_;
 wire _256_;
 wire _257_;
 wire _258_;
 wire _259_;
 wire _260_;
 wire _261_;
 wire _262_;
 wire _263_;
 wire _264_;
 wire _265_;
 wire _266_;
 wire _267_;
 wire _268_;
 wire _269_;
 wire _270_;
 wire _271_;
 wire _272_;
 wire _273_;
 wire _274_;
 wire _275_;
 wire _276_;
 wire _277_;
 wire _278_;
 wire _279_;
 wire _280_;
 wire _281_;
 wire _282_;
 wire _283_;
 wire _284_;
 wire _285_;
 wire _286_;
 wire _287_;
 wire _288_;
 wire _289_;
 wire _290_;
 wire _291_;
 wire _292_;
 wire _293_;
 wire _294_;
 wire _295_;
 wire _296_;
 wire _297_;
 wire _298_;
 wire _299_;
 wire _300_;
 wire _301_;
 wire _302_;
 wire _303_;
 wire _304_;
 wire _305_;
 wire _306_;
 wire _307_;
 wire _308_;
 wire _309_;
 wire _310_;
 wire _311_;
 wire _312_;
 wire _313_;
 wire _314_;
 wire _315_;
 wire _316_;
 wire _317_;
 wire _318_;
 wire _319_;
 wire _320_;
 wire _321_;
 wire _322_;
 wire _323_;
 wire _324_;
 wire _325_;
 wire _326_;
 wire _327_;
 wire _328_;
 wire _329_;
 wire _330_;
 wire _331_;
 wire _332_;
 wire _333_;
 wire _334_;
 wire _335_;
 wire _336_;
 wire _337_;
 wire _338_;
 wire _339_;
 wire _340_;
 wire _341_;
 wire _342_;
 wire _343_;
 wire _344_;
 wire _345_;
 wire _346_;
 wire _347_;
 wire _348_;
 wire _349_;
 wire _350_;
 wire _351_;
 wire _352_;
 wire _353_;
 wire _354_;
 wire _355_;
 wire _356_;
 wire _357_;
 wire _358_;
 wire _359_;
 wire _360_;
 wire _361_;
 wire _362_;
 wire _363_;
 wire _364_;
 wire _365_;
 wire _366_;
 wire _367_;
 wire _368_;
 wire \controller.state[0] ;
 wire \controller.state[10] ;
 wire \controller.state[11] ;
 wire \controller.state[1] ;
 wire \controller.state[2] ;
 wire \controller.state[3] ;
 wire \controller.state[4] ;
 wire \controller.state[5] ;
 wire \controller.state[6] ;
 wire \controller.state[7] ;
 wire \controller.state[8] ;
 wire \controller.state[9] ;
 wire \controller.test_x[0] ;
 wire \controller.test_x[1] ;
 wire \controller.test_x[2] ;
 wire net23;
 wire net24;
 wire \diagnostic.x0[0] ;
 wire \diagnostic.x0[1] ;
 wire \diagnostic.x0[2] ;
 wire \diagnostic.x0[3] ;
 wire \diagnostic.x1[0] ;
 wire \diagnostic.x1[1] ;
 wire \diagnostic.x1[2] ;
 wire \diagnostic.x1[3] ;
 wire \diagnostic.x2[0] ;
 wire \diagnostic.x2[1] ;
 wire \diagnostic.x2[2] ;
 wire \diagnostic.x2[3] ;
 wire \diagnostic.x3[0] ;
 wire \diagnostic.x3[1] ;
 wire \diagnostic.x3[2] ;
 wire \diagnostic.x3[3] ;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire clknet_0_clk;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net69;
 wire net70;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;

 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_105 ();
 sky130_fd_sc_hd__inv_2 _369_ (.A(net17),
    .Y(_367_));
 sky130_fd_sc_hd__inv_2 _370_ (.A(net18),
    .Y(_368_));
 sky130_fd_sc_hd__a22o_2 _371_ (.A1(\diagnostic.x1[2] ),
    .A2(net5),
    .B1(\diagnostic.x1[1] ),
    .B2(net6),
    .X(_033_));
 sky130_fd_sc_hd__and4_2 _372_ (.A(\diagnostic.x1[2] ),
    .B(net5),
    .C(\diagnostic.x1[1] ),
    .D(net6),
    .X(_034_));
 sky130_fd_sc_hd__nand4_2 _373_ (.A(\diagnostic.x1[2] ),
    .B(net5),
    .C(\diagnostic.x1[1] ),
    .D(net6),
    .Y(_035_));
 sky130_fd_sc_hd__nand2_2 _374_ (.A(_033_),
    .B(_035_),
    .Y(_036_));
 sky130_fd_sc_hd__and2_2 _375_ (.A(\diagnostic.x1[0] ),
    .B(net7),
    .X(_037_));
 sky130_fd_sc_hd__xnor2_2 _376_ (.A(_036_),
    .B(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__and4_2 _377_ (.A(net5),
    .B(\diagnostic.x1[1] ),
    .C(net6),
    .D(\diagnostic.x1[0] ),
    .X(_039_));
 sky130_fd_sc_hd__nand4_2 _378_ (.A(net5),
    .B(\diagnostic.x1[1] ),
    .C(net6),
    .D(\diagnostic.x1[0] ),
    .Y(_040_));
 sky130_fd_sc_hd__xnor2_2 _379_ (.A(_038_),
    .B(_039_),
    .Y(_041_));
 sky130_fd_sc_hd__nand4_2 _380_ (.A(net1),
    .B(\diagnostic.x0[1] ),
    .C(net70),
    .D(\diagnostic.x0[0] ),
    .Y(_042_));
 sky130_fd_sc_hd__a22oi_2 _381_ (.A1(\diagnostic.x0[2] ),
    .A2(net1),
    .B1(\diagnostic.x0[1] ),
    .B2(net70),
    .Y(_043_));
 sky130_fd_sc_hd__and4_2 _382_ (.A(\diagnostic.x0[2] ),
    .B(net1),
    .C(\diagnostic.x0[1] ),
    .D(net2),
    .X(_044_));
 sky130_fd_sc_hd__nor2_2 _383_ (.A(_043_),
    .B(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__nand2_2 _384_ (.A(\diagnostic.x0[0] ),
    .B(net3),
    .Y(_046_));
 sky130_fd_sc_hd__and3_2 _385_ (.A(\diagnostic.x0[0] ),
    .B(net3),
    .C(_045_),
    .X(_047_));
 sky130_fd_sc_hd__xnor2_2 _386_ (.A(_045_),
    .B(_046_),
    .Y(_048_));
 sky130_fd_sc_hd__and2b_2 _387_ (.A_N(_042_),
    .B(_048_),
    .X(_049_));
 sky130_fd_sc_hd__xor2_2 _388_ (.A(_042_),
    .B(_048_),
    .X(_050_));
 sky130_fd_sc_hd__xor2_2 _389_ (.A(_041_),
    .B(_050_),
    .X(_051_));
 sky130_fd_sc_hd__a22o_2 _390_ (.A1(net5),
    .A2(\diagnostic.x1[1] ),
    .B1(net6),
    .B2(\diagnostic.x1[0] ),
    .X(_052_));
 sky130_fd_sc_hd__a22o_2 _391_ (.A1(net1),
    .A2(\diagnostic.x0[1] ),
    .B1(net70),
    .B2(\diagnostic.x0[0] ),
    .X(_053_));
 sky130_fd_sc_hd__and4_2 _392_ (.A(_040_),
    .B(_042_),
    .C(_052_),
    .D(_053_),
    .X(_054_));
 sky130_fd_sc_hd__a22oi_2 _393_ (.A1(_040_),
    .A2(_052_),
    .B1(_053_),
    .B2(_042_),
    .Y(_055_));
 sky130_fd_sc_hd__nor2_2 _394_ (.A(_054_),
    .B(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__and4_2 _395_ (.A(net5),
    .B(\diagnostic.x1[0] ),
    .C(net1),
    .D(\diagnostic.x0[0] ),
    .X(_057_));
 sky130_fd_sc_hd__and2_2 _396_ (.A(_056_),
    .B(_057_),
    .X(_058_));
 sky130_fd_sc_hd__o21a_2 _397_ (.A1(_054_),
    .A2(_058_),
    .B1(_051_),
    .X(_059_));
 sky130_fd_sc_hd__nor3_2 _398_ (.A(_051_),
    .B(_054_),
    .C(_058_),
    .Y(_060_));
 sky130_fd_sc_hd__and4_2 _399_ (.A(net14),
    .B(net13),
    .C(\diagnostic.x3[1] ),
    .D(\diagnostic.x3[2] ),
    .X(_061_));
 sky130_fd_sc_hd__inv_2 _400_ (.A(net49),
    .Y(_062_));
 sky130_fd_sc_hd__a22o_2 _401_ (.A1(\diagnostic.x3[2] ),
    .A2(net13),
    .B1(\diagnostic.x3[1] ),
    .B2(net14),
    .X(_063_));
 sky130_fd_sc_hd__nand2_2 _402_ (.A(\diagnostic.x3[0] ),
    .B(net15),
    .Y(_064_));
 sky130_fd_sc_hd__or3b_4 _403_ (.A(_061_),
    .B(_064_),
    .C_N(_063_),
    .X(_065_));
 sky130_fd_sc_hd__a21bo_2 _404_ (.A1(_062_),
    .A2(_063_),
    .B1_N(_064_),
    .X(_066_));
 sky130_fd_sc_hd__and2_2 _405_ (.A(_065_),
    .B(_066_),
    .X(_067_));
 sky130_fd_sc_hd__nand2_2 _406_ (.A(net13),
    .B(\diagnostic.x3[0] ),
    .Y(_068_));
 sky130_fd_sc_hd__and4_2 _407_ (.A(net13),
    .B(\diagnostic.x3[1] ),
    .C(net14),
    .D(\diagnostic.x3[0] ),
    .X(_069_));
 sky130_fd_sc_hd__nand2_2 _408_ (.A(_067_),
    .B(_069_),
    .Y(_070_));
 sky130_fd_sc_hd__or2_2 _409_ (.A(_067_),
    .B(_069_),
    .X(_071_));
 sky130_fd_sc_hd__nand2_2 _410_ (.A(_070_),
    .B(_071_),
    .Y(_072_));
 sky130_fd_sc_hd__nor3_2 _411_ (.A(_059_),
    .B(_060_),
    .C(_072_),
    .Y(_073_));
 sky130_fd_sc_hd__o21a_2 _412_ (.A1(_059_),
    .A2(_060_),
    .B1(_072_),
    .X(_074_));
 sky130_fd_sc_hd__and2_4 _413_ (.A(\diagnostic.x2[2] ),
    .B(net10),
    .X(_075_));
 sky130_fd_sc_hd__and3_2 _414_ (.A(net9),
    .B(\diagnostic.x2[1] ),
    .C(_075_),
    .X(_076_));
 sky130_fd_sc_hd__inv_2 _415_ (.A(_076_),
    .Y(_077_));
 sky130_fd_sc_hd__a22o_2 _416_ (.A1(\diagnostic.x2[2] ),
    .A2(net9),
    .B1(\diagnostic.x2[1] ),
    .B2(net10),
    .X(_078_));
 sky130_fd_sc_hd__nand2_2 _417_ (.A(\diagnostic.x2[0] ),
    .B(net11),
    .Y(_079_));
 sky130_fd_sc_hd__or3b_4 _418_ (.A(_076_),
    .B(_079_),
    .C_N(_078_),
    .X(_080_));
 sky130_fd_sc_hd__a21bo_2 _419_ (.A1(_077_),
    .A2(_078_),
    .B1_N(_079_),
    .X(_081_));
 sky130_fd_sc_hd__and2_2 _420_ (.A(_080_),
    .B(_081_),
    .X(_082_));
 sky130_fd_sc_hd__and4_2 _421_ (.A(net9),
    .B(\diagnostic.x2[1] ),
    .C(net10),
    .D(\diagnostic.x2[0] ),
    .X(_083_));
 sky130_fd_sc_hd__nand4_2 _422_ (.A(net9),
    .B(\diagnostic.x2[1] ),
    .C(net10),
    .D(\diagnostic.x2[0] ),
    .Y(_084_));
 sky130_fd_sc_hd__nand2_2 _423_ (.A(_082_),
    .B(_083_),
    .Y(_085_));
 sky130_fd_sc_hd__or2_2 _424_ (.A(_082_),
    .B(_083_),
    .X(_086_));
 sky130_fd_sc_hd__nand2_2 _425_ (.A(_085_),
    .B(_086_),
    .Y(_087_));
 sky130_fd_sc_hd__or3_4 _426_ (.A(_073_),
    .B(_074_),
    .C(_087_),
    .X(_088_));
 sky130_fd_sc_hd__inv_2 _427_ (.A(_088_),
    .Y(_089_));
 sky130_fd_sc_hd__o21ai_2 _428_ (.A1(_073_),
    .A2(_074_),
    .B1(_087_),
    .Y(_090_));
 sky130_fd_sc_hd__nor2_2 _429_ (.A(_056_),
    .B(_057_),
    .Y(_091_));
 sky130_fd_sc_hd__or2_2 _430_ (.A(_058_),
    .B(_091_),
    .X(_092_));
 sky130_fd_sc_hd__a22oi_2 _431_ (.A1(net13),
    .A2(\diagnostic.x3[1] ),
    .B1(net14),
    .B2(\diagnostic.x3[0] ),
    .Y(_093_));
 sky130_fd_sc_hd__or2_2 _432_ (.A(_069_),
    .B(_093_),
    .X(_094_));
 sky130_fd_sc_hd__nor2_2 _433_ (.A(_092_),
    .B(_094_),
    .Y(_095_));
 sky130_fd_sc_hd__a22o_2 _434_ (.A1(net9),
    .A2(\diagnostic.x2[1] ),
    .B1(net10),
    .B2(\diagnostic.x2[0] ),
    .X(_096_));
 sky130_fd_sc_hd__and2_2 _435_ (.A(_092_),
    .B(_094_),
    .X(_097_));
 sky130_fd_sc_hd__nor2_2 _436_ (.A(_095_),
    .B(_097_),
    .Y(_098_));
 sky130_fd_sc_hd__and3_2 _437_ (.A(_084_),
    .B(_096_),
    .C(_098_),
    .X(_099_));
 sky130_fd_sc_hd__o211a_2 _438_ (.A1(_095_),
    .A2(_099_),
    .B1(_088_),
    .C1(_090_),
    .X(_100_));
 sky130_fd_sc_hd__a211o_2 _439_ (.A1(_088_),
    .A2(_090_),
    .B1(_095_),
    .C1(_099_),
    .X(_101_));
 sky130_fd_sc_hd__nand2b_2 _440_ (.A_N(_100_),
    .B(_101_),
    .Y(_102_));
 sky130_fd_sc_hd__a21oi_2 _441_ (.A1(_084_),
    .A2(_096_),
    .B1(_098_),
    .Y(_103_));
 sky130_fd_sc_hd__nor2_2 _442_ (.A(_099_),
    .B(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__a22oi_2 _443_ (.A1(net5),
    .A2(\diagnostic.x1[0] ),
    .B1(net1),
    .B2(\diagnostic.x0[0] ),
    .Y(_105_));
 sky130_fd_sc_hd__nor2_2 _444_ (.A(_057_),
    .B(_105_),
    .Y(_106_));
 sky130_fd_sc_hd__xnor2_2 _445_ (.A(_068_),
    .B(_106_),
    .Y(_107_));
 sky130_fd_sc_hd__and3_2 _446_ (.A(net9),
    .B(\diagnostic.x2[0] ),
    .C(_107_),
    .X(_108_));
 sky130_fd_sc_hd__a31oi_2 _447_ (.A1(net13),
    .A2(\diagnostic.x3[0] ),
    .A3(_106_),
    .B1(_108_),
    .Y(_109_));
 sky130_fd_sc_hd__and2b_2 _448_ (.A_N(_109_),
    .B(_104_),
    .X(_110_));
 sky130_fd_sc_hd__xnor2_2 _449_ (.A(_102_),
    .B(_110_),
    .Y(net27));
 sky130_fd_sc_hd__o21bai_2 _450_ (.A1(_041_),
    .A2(_050_),
    .B1_N(_059_),
    .Y(_111_));
 sky130_fd_sc_hd__nand2_2 _451_ (.A(net2),
    .B(\diagnostic.x0[3] ),
    .Y(_112_));
 sky130_fd_sc_hd__nand4_4 _452_ (.A(\diagnostic.x0[2] ),
    .B(net1),
    .C(net2),
    .D(\diagnostic.x0[3] ),
    .Y(_113_));
 sky130_fd_sc_hd__a22o_4 _453_ (.A1(\diagnostic.x0[2] ),
    .A2(net2),
    .B1(\diagnostic.x0[3] ),
    .B2(net1),
    .X(_114_));
 sky130_fd_sc_hd__a22o_4 _454_ (.A1(\diagnostic.x0[1] ),
    .A2(net3),
    .B1(_113_),
    .B2(_114_),
    .X(_115_));
 sky130_fd_sc_hd__nand4_2 _455_ (.A(\diagnostic.x0[1] ),
    .B(net3),
    .C(_113_),
    .D(_114_),
    .Y(_116_));
 sky130_fd_sc_hd__nand3_2 _456_ (.A(_044_),
    .B(_115_),
    .C(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__a21o_4 _457_ (.A1(_115_),
    .A2(_116_),
    .B1(_044_),
    .X(_118_));
 sky130_fd_sc_hd__nand4_2 _458_ (.A(\diagnostic.x0[0] ),
    .B(net4),
    .C(_117_),
    .D(net64),
    .Y(_119_));
 sky130_fd_sc_hd__a22o_4 _459_ (.A1(\diagnostic.x0[0] ),
    .A2(net4),
    .B1(_117_),
    .B2(_118_),
    .X(_120_));
 sky130_fd_sc_hd__nand3_2 _460_ (.A(_047_),
    .B(_119_),
    .C(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__a21o_4 _461_ (.A1(_120_),
    .A2(_119_),
    .B1(_047_),
    .X(_122_));
 sky130_fd_sc_hd__nand3_2 _462_ (.A(_049_),
    .B(_121_),
    .C(_122_),
    .Y(_123_));
 sky130_fd_sc_hd__a21o_4 _463_ (.A1(_122_),
    .A2(_121_),
    .B1(_049_),
    .X(_124_));
 sky130_fd_sc_hd__nand2_2 _464_ (.A(\diagnostic.x1[0] ),
    .B(net8),
    .Y(_125_));
 sky130_fd_sc_hd__nand2_2 _465_ (.A(net6),
    .B(\diagnostic.x1[3] ),
    .Y(_126_));
 sky130_fd_sc_hd__nand4_2 _466_ (.A(\diagnostic.x1[2] ),
    .B(net5),
    .C(net6),
    .D(\diagnostic.x1[3] ),
    .Y(_127_));
 sky130_fd_sc_hd__a22o_2 _467_ (.A1(\diagnostic.x1[2] ),
    .A2(net6),
    .B1(\diagnostic.x1[3] ),
    .B2(net5),
    .X(_128_));
 sky130_fd_sc_hd__a22o_2 _468_ (.A1(\diagnostic.x1[1] ),
    .A2(net7),
    .B1(_127_),
    .B2(_128_),
    .X(_129_));
 sky130_fd_sc_hd__nand4_2 _469_ (.A(\diagnostic.x1[1] ),
    .B(net7),
    .C(_127_),
    .D(_128_),
    .Y(_130_));
 sky130_fd_sc_hd__and3_2 _470_ (.A(_034_),
    .B(_129_),
    .C(_130_),
    .X(_131_));
 sky130_fd_sc_hd__a21oi_2 _471_ (.A1(_129_),
    .A2(_130_),
    .B1(_034_),
    .Y(_132_));
 sky130_fd_sc_hd__nor2_4 _472_ (.A(_131_),
    .B(_132_),
    .Y(_133_));
 sky130_fd_sc_hd__xnor2_4 _473_ (.A(_125_),
    .B(_133_),
    .Y(_134_));
 sky130_fd_sc_hd__a32o_2 _474_ (.A1(_033_),
    .A2(_035_),
    .A3(_037_),
    .B1(_038_),
    .B2(_039_),
    .X(_135_));
 sky130_fd_sc_hd__xor2_2 _475_ (.A(_135_),
    .B(_134_),
    .X(_136_));
 sky130_fd_sc_hd__nand3_2 _476_ (.A(_123_),
    .B(net63),
    .C(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__a21o_4 _477_ (.A1(_123_),
    .A2(_124_),
    .B1(_136_),
    .X(_138_));
 sky130_fd_sc_hd__and3_4 _478_ (.A(_111_),
    .B(_137_),
    .C(_138_),
    .X(_139_));
 sky130_fd_sc_hd__a21oi_2 _479_ (.A1(_137_),
    .A2(_138_),
    .B1(_111_),
    .Y(_140_));
 sky130_fd_sc_hd__nand2_2 _480_ (.A(net14),
    .B(\diagnostic.x3[3] ),
    .Y(_141_));
 sky130_fd_sc_hd__and4_2 _481_ (.A(\diagnostic.x3[2] ),
    .B(net13),
    .C(net14),
    .D(\diagnostic.x3[3] ),
    .X(_142_));
 sky130_fd_sc_hd__a22oi_2 _482_ (.A1(\diagnostic.x3[2] ),
    .A2(net14),
    .B1(\diagnostic.x3[3] ),
    .B2(net13),
    .Y(_143_));
 sky130_fd_sc_hd__nor2_2 _483_ (.A(_142_),
    .B(_143_),
    .Y(_144_));
 sky130_fd_sc_hd__nand2_2 _484_ (.A(\diagnostic.x3[1] ),
    .B(net15),
    .Y(_145_));
 sky130_fd_sc_hd__and3_2 _485_ (.A(\diagnostic.x3[1] ),
    .B(net15),
    .C(_144_),
    .X(_146_));
 sky130_fd_sc_hd__xnor2_2 _486_ (.A(_144_),
    .B(_145_),
    .Y(_147_));
 sky130_fd_sc_hd__xnor2_2 _487_ (.A(_062_),
    .B(_147_),
    .Y(_148_));
 sky130_fd_sc_hd__and2_2 _488_ (.A(\diagnostic.x3[0] ),
    .B(net16),
    .X(_149_));
 sky130_fd_sc_hd__nor2_2 _489_ (.A(_148_),
    .B(_149_),
    .Y(_150_));
 sky130_fd_sc_hd__and2_2 _490_ (.A(_148_),
    .B(_149_),
    .X(_151_));
 sky130_fd_sc_hd__nor2_2 _491_ (.A(_150_),
    .B(_151_),
    .Y(_152_));
 sky130_fd_sc_hd__or3_2 _492_ (.A(_065_),
    .B(_150_),
    .C(_151_),
    .X(_153_));
 sky130_fd_sc_hd__xor2_2 _493_ (.A(_065_),
    .B(_152_),
    .X(_154_));
 sky130_fd_sc_hd__xnor2_2 _494_ (.A(_070_),
    .B(_154_),
    .Y(_155_));
 sky130_fd_sc_hd__nor3_2 _495_ (.A(_139_),
    .B(_140_),
    .C(_155_),
    .Y(_156_));
 sky130_fd_sc_hd__o21a_4 _496_ (.A1(_139_),
    .A2(_140_),
    .B1(_155_),
    .X(_157_));
 sky130_fd_sc_hd__nand2_2 _497_ (.A(net10),
    .B(\diagnostic.x2[3] ),
    .Y(_158_));
 sky130_fd_sc_hd__and3_2 _498_ (.A(net9),
    .B(\diagnostic.x2[3] ),
    .C(_075_),
    .X(_159_));
 sky130_fd_sc_hd__a21oi_2 _499_ (.A1(net9),
    .A2(\diagnostic.x2[3] ),
    .B1(_075_),
    .Y(_160_));
 sky130_fd_sc_hd__o2bb2a_2 _500_ (.A1_N(\diagnostic.x2[1] ),
    .A2_N(net11),
    .B1(_159_),
    .B2(_160_),
    .X(_161_));
 sky130_fd_sc_hd__and4bb_2 _501_ (.A_N(_160_),
    .B_N(_159_),
    .C(\diagnostic.x2[1] ),
    .D(net11),
    .X(_162_));
 sky130_fd_sc_hd__nor2_2 _502_ (.A(_161_),
    .B(_162_),
    .Y(_163_));
 sky130_fd_sc_hd__and2_2 _503_ (.A(_076_),
    .B(_163_),
    .X(_164_));
 sky130_fd_sc_hd__xnor2_2 _504_ (.A(_077_),
    .B(_163_),
    .Y(_165_));
 sky130_fd_sc_hd__and2_2 _505_ (.A(\diagnostic.x2[0] ),
    .B(net12),
    .X(_166_));
 sky130_fd_sc_hd__nor2_2 _506_ (.A(_165_),
    .B(_166_),
    .Y(_167_));
 sky130_fd_sc_hd__and2_4 _507_ (.A(_165_),
    .B(_166_),
    .X(_168_));
 sky130_fd_sc_hd__nor2_4 _508_ (.A(_167_),
    .B(_168_),
    .Y(_169_));
 sky130_fd_sc_hd__or3_4 _509_ (.A(_080_),
    .B(_167_),
    .C(_168_),
    .X(_170_));
 sky130_fd_sc_hd__xor2_4 _510_ (.A(_169_),
    .B(_080_),
    .X(_171_));
 sky130_fd_sc_hd__xnor2_2 _511_ (.A(_171_),
    .B(_085_),
    .Y(_172_));
 sky130_fd_sc_hd__or3_4 _512_ (.A(_156_),
    .B(_172_),
    .C(_157_),
    .X(_173_));
 sky130_fd_sc_hd__o21ai_2 _513_ (.A1(_156_),
    .A2(net69),
    .B1(_172_),
    .Y(_174_));
 sky130_fd_sc_hd__o211a_2 _514_ (.A1(_073_),
    .A2(_089_),
    .B1(_173_),
    .C1(_174_),
    .X(_175_));
 sky130_fd_sc_hd__a211o_4 _515_ (.A1(_174_),
    .A2(_173_),
    .B1(_073_),
    .C1(_089_),
    .X(_176_));
 sky130_fd_sc_hd__nand2b_4 _516_ (.A_N(_175_),
    .B(net52),
    .Y(_177_));
 sky130_fd_sc_hd__a21o_2 _517_ (.A1(_101_),
    .A2(_110_),
    .B1(_100_),
    .X(_178_));
 sky130_fd_sc_hd__xnor2_2 _518_ (.A(_178_),
    .B(_177_),
    .Y(net28));
 sky130_fd_sc_hd__o21ai_4 _519_ (.A1(_085_),
    .A2(net57),
    .B1(_170_),
    .Y(_179_));
 sky130_fd_sc_hd__and3_2 _520_ (.A(net11),
    .B(\diagnostic.x2[3] ),
    .C(_075_),
    .X(_180_));
 sky130_fd_sc_hd__nand2_2 _521_ (.A(\diagnostic.x2[2] ),
    .B(net11),
    .Y(_181_));
 sky130_fd_sc_hd__a21oi_2 _522_ (.A1(_158_),
    .A2(_181_),
    .B1(_180_),
    .Y(_182_));
 sky130_fd_sc_hd__a21oi_2 _523_ (.A1(\diagnostic.x2[1] ),
    .A2(net12),
    .B1(_182_),
    .Y(_183_));
 sky130_fd_sc_hd__and3_2 _524_ (.A(\diagnostic.x2[1] ),
    .B(net12),
    .C(_182_),
    .X(_184_));
 sky130_fd_sc_hd__nor2_2 _525_ (.A(_183_),
    .B(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__o21a_2 _526_ (.A1(_159_),
    .A2(net53),
    .B1(_185_),
    .X(_186_));
 sky130_fd_sc_hd__nor3_2 _527_ (.A(_159_),
    .B(net53),
    .C(_185_),
    .Y(_187_));
 sky130_fd_sc_hd__nor2_2 _528_ (.A(_186_),
    .B(_187_),
    .Y(_188_));
 sky130_fd_sc_hd__o21a_2 _529_ (.A1(_164_),
    .A2(_168_),
    .B1(_188_),
    .X(_189_));
 sky130_fd_sc_hd__nor3_2 _530_ (.A(_164_),
    .B(_168_),
    .C(_188_),
    .Y(_190_));
 sky130_fd_sc_hd__nor2_2 _531_ (.A(_189_),
    .B(_190_),
    .Y(_191_));
 sky130_fd_sc_hd__xor2_2 _532_ (.A(_179_),
    .B(_191_),
    .X(_192_));
 sky130_fd_sc_hd__a21bo_2 _533_ (.A1(_111_),
    .A2(_138_),
    .B1_N(_137_),
    .X(_193_));
 sky130_fd_sc_hd__a21bo_4 _534_ (.A1(_049_),
    .A2(_122_),
    .B1_N(_121_),
    .X(_194_));
 sky130_fd_sc_hd__nand2_2 _535_ (.A(_113_),
    .B(_116_),
    .Y(_195_));
 sky130_fd_sc_hd__and4_2 _536_ (.A(\diagnostic.x0[2] ),
    .B(net2),
    .C(net3),
    .D(\diagnostic.x0[3] ),
    .X(_196_));
 sky130_fd_sc_hd__nand2_2 _537_ (.A(\diagnostic.x0[2] ),
    .B(net3),
    .Y(_197_));
 sky130_fd_sc_hd__a21oi_2 _538_ (.A1(_112_),
    .A2(_197_),
    .B1(_196_),
    .Y(_198_));
 sky130_fd_sc_hd__a21oi_2 _539_ (.A1(\diagnostic.x0[1] ),
    .A2(net4),
    .B1(_198_),
    .Y(_199_));
 sky130_fd_sc_hd__and3_2 _540_ (.A(\diagnostic.x0[1] ),
    .B(net4),
    .C(_198_),
    .X(_200_));
 sky130_fd_sc_hd__nor2_2 _541_ (.A(_199_),
    .B(_200_),
    .Y(_201_));
 sky130_fd_sc_hd__and2_2 _542_ (.A(_195_),
    .B(_201_),
    .X(_202_));
 sky130_fd_sc_hd__xnor2_2 _543_ (.A(_195_),
    .B(_201_),
    .Y(_203_));
 sky130_fd_sc_hd__and2_2 _544_ (.A(_117_),
    .B(_119_),
    .X(_204_));
 sky130_fd_sc_hd__nor2_2 _545_ (.A(_203_),
    .B(_204_),
    .Y(_205_));
 sky130_fd_sc_hd__xor2_2 _546_ (.A(_203_),
    .B(_204_),
    .X(_206_));
 sky130_fd_sc_hd__xnor2_2 _547_ (.A(_194_),
    .B(_206_),
    .Y(_207_));
 sky130_fd_sc_hd__nand2_2 _548_ (.A(_127_),
    .B(_130_),
    .Y(_208_));
 sky130_fd_sc_hd__and4_2 _549_ (.A(\diagnostic.x1[2] ),
    .B(net6),
    .C(net7),
    .D(\diagnostic.x1[3] ),
    .X(_209_));
 sky130_fd_sc_hd__nand2_2 _550_ (.A(\diagnostic.x1[2] ),
    .B(net7),
    .Y(_210_));
 sky130_fd_sc_hd__a21o_2 _551_ (.A1(_126_),
    .A2(_210_),
    .B1(_209_),
    .X(_211_));
 sky130_fd_sc_hd__nand2_2 _552_ (.A(\diagnostic.x1[1] ),
    .B(net8),
    .Y(_212_));
 sky130_fd_sc_hd__xor2_2 _553_ (.A(_211_),
    .B(_212_),
    .X(_213_));
 sky130_fd_sc_hd__nand2_2 _554_ (.A(_208_),
    .B(_213_),
    .Y(_214_));
 sky130_fd_sc_hd__xnor2_2 _555_ (.A(_208_),
    .B(_213_),
    .Y(_215_));
 sky130_fd_sc_hd__o21ba_2 _556_ (.A1(_125_),
    .A2(_132_),
    .B1_N(_131_),
    .X(_216_));
 sky130_fd_sc_hd__nor2_2 _557_ (.A(_215_),
    .B(_216_),
    .Y(_217_));
 sky130_fd_sc_hd__and2_2 _558_ (.A(_215_),
    .B(_216_),
    .X(_218_));
 sky130_fd_sc_hd__nor2_2 _559_ (.A(_217_),
    .B(_218_),
    .Y(_219_));
 sky130_fd_sc_hd__nand2_2 _560_ (.A(_134_),
    .B(_135_),
    .Y(_220_));
 sky130_fd_sc_hd__xor2_2 _561_ (.A(_219_),
    .B(_220_),
    .X(_221_));
 sky130_fd_sc_hd__nor2_2 _562_ (.A(_207_),
    .B(_221_),
    .Y(_222_));
 sky130_fd_sc_hd__xor2_2 _563_ (.A(_207_),
    .B(_221_),
    .X(_223_));
 sky130_fd_sc_hd__xnor2_2 _564_ (.A(_193_),
    .B(_223_),
    .Y(_224_));
 sky130_fd_sc_hd__o21ai_2 _565_ (.A1(_070_),
    .A2(_154_),
    .B1(_153_),
    .Y(_225_));
 sky130_fd_sc_hd__and4_2 _566_ (.A(\diagnostic.x3[2] ),
    .B(net14),
    .C(net15),
    .D(\diagnostic.x3[3] ),
    .X(_226_));
 sky130_fd_sc_hd__nand2_2 _567_ (.A(\diagnostic.x3[2] ),
    .B(net15),
    .Y(_227_));
 sky130_fd_sc_hd__a21oi_2 _568_ (.A1(_141_),
    .A2(_227_),
    .B1(_226_),
    .Y(_228_));
 sky130_fd_sc_hd__a21oi_2 _569_ (.A1(\diagnostic.x3[1] ),
    .A2(net16),
    .B1(_228_),
    .Y(_229_));
 sky130_fd_sc_hd__and3_2 _570_ (.A(\diagnostic.x3[1] ),
    .B(net16),
    .C(_228_),
    .X(_230_));
 sky130_fd_sc_hd__nor2_2 _571_ (.A(_229_),
    .B(_230_),
    .Y(_231_));
 sky130_fd_sc_hd__o21a_2 _572_ (.A1(_142_),
    .A2(_146_),
    .B1(_231_),
    .X(_232_));
 sky130_fd_sc_hd__nor3_2 _573_ (.A(_142_),
    .B(_146_),
    .C(_231_),
    .Y(_233_));
 sky130_fd_sc_hd__or2_2 _574_ (.A(_232_),
    .B(_233_),
    .X(_234_));
 sky130_fd_sc_hd__a21oi_2 _575_ (.A1(net49),
    .A2(_147_),
    .B1(_151_),
    .Y(_235_));
 sky130_fd_sc_hd__nor2_2 _576_ (.A(_234_),
    .B(_235_),
    .Y(_236_));
 sky130_fd_sc_hd__xor2_2 _577_ (.A(_234_),
    .B(_235_),
    .X(_237_));
 sky130_fd_sc_hd__xnor2_2 _578_ (.A(_225_),
    .B(_237_),
    .Y(_238_));
 sky130_fd_sc_hd__nor2_2 _579_ (.A(_224_),
    .B(_238_),
    .Y(_239_));
 sky130_fd_sc_hd__xor2_2 _580_ (.A(_224_),
    .B(_238_),
    .X(_240_));
 sky130_fd_sc_hd__xnor2_2 _581_ (.A(_192_),
    .B(_240_),
    .Y(_241_));
 sky130_fd_sc_hd__and2b_2 _582_ (.A_N(_156_),
    .B(_173_),
    .X(_242_));
 sky130_fd_sc_hd__nor2_2 _583_ (.A(_241_),
    .B(_242_),
    .Y(_243_));
 sky130_fd_sc_hd__xor2_2 _584_ (.A(_241_),
    .B(_242_),
    .X(_244_));
 sky130_fd_sc_hd__a21o_4 _585_ (.A1(_178_),
    .A2(_176_),
    .B1(_175_),
    .X(_245_));
 sky130_fd_sc_hd__xor2_2 _586_ (.A(_244_),
    .B(net54),
    .X(net29));
 sky130_fd_sc_hd__a21o_2 _587_ (.A1(_192_),
    .A2(_240_),
    .B1(_239_),
    .X(_246_));
 sky130_fd_sc_hd__a21o_2 _588_ (.A1(_193_),
    .A2(_223_),
    .B1(_222_),
    .X(_247_));
 sky130_fd_sc_hd__a21oi_2 _589_ (.A1(_135_),
    .A2(_134_),
    .B1(_217_),
    .Y(_248_));
 sky130_fd_sc_hd__or2_2 _590_ (.A(_218_),
    .B(_248_),
    .X(_249_));
 sky130_fd_sc_hd__a22o_2 _591_ (.A1(net7),
    .A2(\diagnostic.x1[3] ),
    .B1(net8),
    .B2(\diagnostic.x1[2] ),
    .X(_250_));
 sky130_fd_sc_hd__nand2_2 _592_ (.A(\diagnostic.x1[3] ),
    .B(net8),
    .Y(_251_));
 sky130_fd_sc_hd__o21a_2 _593_ (.A1(_210_),
    .A2(_251_),
    .B1(_250_),
    .X(_252_));
 sky130_fd_sc_hd__o21bai_2 _594_ (.A1(_211_),
    .A2(_212_),
    .B1_N(_209_),
    .Y(_253_));
 sky130_fd_sc_hd__nand2_2 _595_ (.A(_252_),
    .B(_253_),
    .Y(_254_));
 sky130_fd_sc_hd__xnor2_2 _596_ (.A(_252_),
    .B(_253_),
    .Y(_255_));
 sky130_fd_sc_hd__xnor2_2 _597_ (.A(_214_),
    .B(_255_),
    .Y(_256_));
 sky130_fd_sc_hd__xnor2_2 _598_ (.A(_249_),
    .B(_256_),
    .Y(_257_));
 sky130_fd_sc_hd__a21o_2 _599_ (.A1(_194_),
    .A2(_206_),
    .B1(_205_),
    .X(_258_));
 sky130_fd_sc_hd__a22oi_2 _600_ (.A1(net3),
    .A2(\diagnostic.x0[3] ),
    .B1(net4),
    .B2(\diagnostic.x0[2] ),
    .Y(_259_));
 sky130_fd_sc_hd__and4_2 _601_ (.A(\diagnostic.x0[2] ),
    .B(net3),
    .C(\diagnostic.x0[3] ),
    .D(net4),
    .X(_260_));
 sky130_fd_sc_hd__nor2_2 _602_ (.A(_259_),
    .B(_260_),
    .Y(_261_));
 sky130_fd_sc_hd__nor2_2 _603_ (.A(_196_),
    .B(_200_),
    .Y(_262_));
 sky130_fd_sc_hd__or3_2 _604_ (.A(_259_),
    .B(_260_),
    .C(_262_),
    .X(_263_));
 sky130_fd_sc_hd__xnor2_2 _605_ (.A(_261_),
    .B(_262_),
    .Y(_264_));
 sky130_fd_sc_hd__and2_2 _606_ (.A(_202_),
    .B(_264_),
    .X(_265_));
 sky130_fd_sc_hd__xor2_2 _607_ (.A(_202_),
    .B(_264_),
    .X(_266_));
 sky130_fd_sc_hd__xnor2_2 _608_ (.A(_258_),
    .B(_266_),
    .Y(_267_));
 sky130_fd_sc_hd__nor2_2 _609_ (.A(_257_),
    .B(_267_),
    .Y(_268_));
 sky130_fd_sc_hd__xor2_2 _610_ (.A(_257_),
    .B(_267_),
    .X(_269_));
 sky130_fd_sc_hd__xnor2_2 _611_ (.A(_247_),
    .B(_269_),
    .Y(_270_));
 sky130_fd_sc_hd__or2_2 _612_ (.A(_225_),
    .B(_236_),
    .X(_271_));
 sky130_fd_sc_hd__a21o_2 _613_ (.A1(_225_),
    .A2(_237_),
    .B1(_236_),
    .X(_272_));
 sky130_fd_sc_hd__a22o_2 _614_ (.A1(net15),
    .A2(\diagnostic.x3[3] ),
    .B1(net16),
    .B2(\diagnostic.x3[2] ),
    .X(_273_));
 sky130_fd_sc_hd__nand2_2 _615_ (.A(\diagnostic.x3[3] ),
    .B(net16),
    .Y(_274_));
 sky130_fd_sc_hd__o21a_2 _616_ (.A1(_227_),
    .A2(_274_),
    .B1(_273_),
    .X(_275_));
 sky130_fd_sc_hd__o21ai_2 _617_ (.A1(_226_),
    .A2(_230_),
    .B1(_275_),
    .Y(_276_));
 sky130_fd_sc_hd__or3_2 _618_ (.A(_226_),
    .B(_230_),
    .C(_275_),
    .X(_277_));
 sky130_fd_sc_hd__and2_2 _619_ (.A(_276_),
    .B(_277_),
    .X(_278_));
 sky130_fd_sc_hd__xor2_2 _620_ (.A(_232_),
    .B(_278_),
    .X(_279_));
 sky130_fd_sc_hd__xnor2_2 _621_ (.A(_272_),
    .B(_279_),
    .Y(_280_));
 sky130_fd_sc_hd__nor2_2 _622_ (.A(_270_),
    .B(_280_),
    .Y(_281_));
 sky130_fd_sc_hd__xnor2_2 _623_ (.A(_270_),
    .B(_280_),
    .Y(_282_));
 sky130_fd_sc_hd__a22o_2 _624_ (.A1(net11),
    .A2(\diagnostic.x2[3] ),
    .B1(net12),
    .B2(\diagnostic.x2[2] ),
    .X(_283_));
 sky130_fd_sc_hd__nand2_2 _625_ (.A(\diagnostic.x2[3] ),
    .B(net12),
    .Y(_284_));
 sky130_fd_sc_hd__o21a_2 _626_ (.A1(_181_),
    .A2(_284_),
    .B1(_283_),
    .X(_285_));
 sky130_fd_sc_hd__o21ai_2 _627_ (.A1(_180_),
    .A2(_184_),
    .B1(_285_),
    .Y(_286_));
 sky130_fd_sc_hd__or3_2 _628_ (.A(_180_),
    .B(_184_),
    .C(_285_),
    .X(_287_));
 sky130_fd_sc_hd__and2_2 _629_ (.A(_286_),
    .B(_287_),
    .X(_288_));
 sky130_fd_sc_hd__xnor2_2 _630_ (.A(_186_),
    .B(_288_),
    .Y(_289_));
 sky130_fd_sc_hd__a21oi_2 _631_ (.A1(_179_),
    .A2(_191_),
    .B1(_189_),
    .Y(_290_));
 sky130_fd_sc_hd__xnor2_2 _632_ (.A(_289_),
    .B(_290_),
    .Y(_291_));
 sky130_fd_sc_hd__nor2_2 _633_ (.A(_282_),
    .B(_291_),
    .Y(_292_));
 sky130_fd_sc_hd__xnor2_2 _634_ (.A(_282_),
    .B(_291_),
    .Y(_293_));
 sky130_fd_sc_hd__and2b_2 _635_ (.A_N(_293_),
    .B(_246_),
    .X(_294_));
 sky130_fd_sc_hd__xnor2_2 _636_ (.A(_246_),
    .B(_293_),
    .Y(_295_));
 sky130_fd_sc_hd__a21o_4 _637_ (.A1(_245_),
    .A2(_244_),
    .B1(_243_),
    .X(_296_));
 sky130_fd_sc_hd__xor2_2 _638_ (.A(_295_),
    .B(net62),
    .X(net30));
 sky130_fd_sc_hd__and3_2 _639_ (.A(\diagnostic.x2[3] ),
    .B(net12),
    .C(_181_),
    .X(_297_));
 sky130_fd_sc_hd__xnor2_2 _640_ (.A(_286_),
    .B(_297_),
    .Y(_298_));
 sky130_fd_sc_hd__a21o_2 _641_ (.A1(_186_),
    .A2(_288_),
    .B1(_189_),
    .X(_299_));
 sky130_fd_sc_hd__a21o_2 _642_ (.A1(_179_),
    .A2(_288_),
    .B1(_299_),
    .X(_300_));
 sky130_fd_sc_hd__o21a_4 _643_ (.A1(_186_),
    .A2(_288_),
    .B1(_300_),
    .X(_301_));
 sky130_fd_sc_hd__nand2_2 _644_ (.A(_298_),
    .B(_301_),
    .Y(_302_));
 sky130_fd_sc_hd__xor2_4 _645_ (.A(_298_),
    .B(_301_),
    .X(_303_));
 sky130_fd_sc_hd__a21oi_2 _646_ (.A1(_269_),
    .A2(_247_),
    .B1(_268_),
    .Y(_304_));
 sky130_fd_sc_hd__and3_2 _647_ (.A(\diagnostic.x1[3] ),
    .B(net8),
    .C(_210_),
    .X(_305_));
 sky130_fd_sc_hd__xnor2_2 _648_ (.A(_254_),
    .B(_305_),
    .Y(_306_));
 sky130_fd_sc_hd__a21oi_2 _649_ (.A1(_214_),
    .A2(net65),
    .B1(_255_),
    .Y(_307_));
 sky130_fd_sc_hd__nand2_2 _650_ (.A(_306_),
    .B(_307_),
    .Y(_308_));
 sky130_fd_sc_hd__xnor2_2 _651_ (.A(_306_),
    .B(_307_),
    .Y(_309_));
 sky130_fd_sc_hd__inv_2 _652_ (.A(_309_),
    .Y(_310_));
 sky130_fd_sc_hd__and3_2 _653_ (.A(\diagnostic.x0[3] ),
    .B(net4),
    .C(_197_),
    .X(_311_));
 sky130_fd_sc_hd__and2b_2 _654_ (.A_N(_263_),
    .B(_311_),
    .X(_312_));
 sky130_fd_sc_hd__xnor2_2 _655_ (.A(_263_),
    .B(_311_),
    .Y(_313_));
 sky130_fd_sc_hd__a211o_4 _656_ (.A1(_194_),
    .A2(_264_),
    .B1(_265_),
    .C1(_205_),
    .X(_314_));
 sky130_fd_sc_hd__o21a_4 _657_ (.A1(_202_),
    .A2(_264_),
    .B1(_314_),
    .X(_315_));
 sky130_fd_sc_hd__and2_4 _658_ (.A(_313_),
    .B(_315_),
    .X(_316_));
 sky130_fd_sc_hd__xor2_2 _659_ (.A(_313_),
    .B(_315_),
    .X(_317_));
 sky130_fd_sc_hd__nand2_2 _660_ (.A(_310_),
    .B(_317_),
    .Y(_318_));
 sky130_fd_sc_hd__xnor2_2 _661_ (.A(_310_),
    .B(_317_),
    .Y(_319_));
 sky130_fd_sc_hd__xor2_2 _662_ (.A(_304_),
    .B(_319_),
    .X(_320_));
 sky130_fd_sc_hd__and3_2 _663_ (.A(\diagnostic.x3[3] ),
    .B(net16),
    .C(_227_),
    .X(_321_));
 sky130_fd_sc_hd__xnor2_2 _664_ (.A(_276_),
    .B(_321_),
    .Y(_322_));
 sky130_fd_sc_hd__o21ai_2 _665_ (.A1(_232_),
    .A2(_271_),
    .B1(_278_),
    .Y(_323_));
 sky130_fd_sc_hd__o211ai_2 _666_ (.A1(_232_),
    .A2(_271_),
    .B1(_278_),
    .C1(_322_),
    .Y(_324_));
 sky130_fd_sc_hd__xnor2_2 _667_ (.A(_322_),
    .B(_323_),
    .Y(_325_));
 sky130_fd_sc_hd__and2_2 _668_ (.A(_320_),
    .B(_325_),
    .X(_326_));
 sky130_fd_sc_hd__xor2_2 _669_ (.A(_320_),
    .B(_325_),
    .X(_327_));
 sky130_fd_sc_hd__xnor2_2 _670_ (.A(_303_),
    .B(_327_),
    .Y(_328_));
 sky130_fd_sc_hd__o21ba_2 _671_ (.A1(_281_),
    .A2(_292_),
    .B1_N(_328_),
    .X(_329_));
 sky130_fd_sc_hd__or3b_4 _672_ (.A(_281_),
    .B(_292_),
    .C_N(_328_),
    .X(_330_));
 sky130_fd_sc_hd__nand2b_2 _673_ (.A_N(_329_),
    .B(_330_),
    .Y(_331_));
 sky130_fd_sc_hd__a21o_4 _674_ (.A1(_296_),
    .A2(_295_),
    .B1(_294_),
    .X(_332_));
 sky130_fd_sc_hd__xnor2_2 _675_ (.A(_331_),
    .B(net55),
    .Y(net31));
 sky130_fd_sc_hd__a21o_2 _676_ (.A1(_181_),
    .A2(_286_),
    .B1(_284_),
    .X(_333_));
 sky130_fd_sc_hd__nand2_2 _677_ (.A(_302_),
    .B(_333_),
    .Y(_334_));
 sky130_fd_sc_hd__o21a_2 _678_ (.A1(_304_),
    .A2(_319_),
    .B1(_318_),
    .X(_335_));
 sky130_fd_sc_hd__a21o_2 _679_ (.A1(_210_),
    .A2(_254_),
    .B1(_251_),
    .X(_336_));
 sky130_fd_sc_hd__nand2_2 _680_ (.A(_308_),
    .B(_336_),
    .Y(_337_));
 sky130_fd_sc_hd__or3_4 _681_ (.A(_260_),
    .B(_312_),
    .C(_316_),
    .X(_338_));
 sky130_fd_sc_hd__and2_2 _682_ (.A(_337_),
    .B(_338_),
    .X(_339_));
 sky130_fd_sc_hd__xor2_2 _683_ (.A(_337_),
    .B(_338_),
    .X(_340_));
 sky130_fd_sc_hd__and2b_2 _684_ (.A_N(_335_),
    .B(_340_),
    .X(_341_));
 sky130_fd_sc_hd__xnor2_2 _685_ (.A(_340_),
    .B(_335_),
    .Y(_342_));
 sky130_fd_sc_hd__a21o_2 _686_ (.A1(_227_),
    .A2(_276_),
    .B1(_274_),
    .X(_343_));
 sky130_fd_sc_hd__nand2_2 _687_ (.A(_324_),
    .B(_343_),
    .Y(_344_));
 sky130_fd_sc_hd__and2_2 _688_ (.A(_342_),
    .B(_344_),
    .X(_345_));
 sky130_fd_sc_hd__xor2_2 _689_ (.A(_344_),
    .B(_342_),
    .X(_346_));
 sky130_fd_sc_hd__and2_4 _690_ (.A(_334_),
    .B(_346_),
    .X(_347_));
 sky130_fd_sc_hd__xor2_2 _691_ (.A(_334_),
    .B(net56),
    .X(_348_));
 sky130_fd_sc_hd__a21oi_2 _692_ (.A1(net50),
    .A2(net51),
    .B1(_326_),
    .Y(_349_));
 sky130_fd_sc_hd__and2b_2 _693_ (.A_N(_349_),
    .B(_348_),
    .X(_350_));
 sky130_fd_sc_hd__xnor2_2 _694_ (.A(_348_),
    .B(_349_),
    .Y(_351_));
 sky130_fd_sc_hd__a21o_4 _695_ (.A1(_332_),
    .A2(_330_),
    .B1(_329_),
    .X(_352_));
 sky130_fd_sc_hd__xor2_2 _696_ (.A(_351_),
    .B(_352_),
    .X(net32));
 sky130_fd_sc_hd__a21o_4 _697_ (.A1(_352_),
    .A2(_351_),
    .B1(_350_),
    .X(_353_));
 sky130_fd_sc_hd__o22a_2 _698_ (.A1(_339_),
    .A2(_341_),
    .B1(_345_),
    .B2(_347_),
    .X(_354_));
 sky130_fd_sc_hd__or4_4 _699_ (.A(_339_),
    .B(_341_),
    .C(_345_),
    .D(_347_),
    .X(_355_));
 sky130_fd_sc_hd__and2b_2 _700_ (.A_N(_354_),
    .B(_355_),
    .X(_356_));
 sky130_fd_sc_hd__xor2_2 _701_ (.A(_353_),
    .B(_356_),
    .X(net33));
 sky130_fd_sc_hd__a21oi_2 _702_ (.A1(net9),
    .A2(\diagnostic.x2[0] ),
    .B1(_107_),
    .Y(_357_));
 sky130_fd_sc_hd__nor2_2 _703_ (.A(_108_),
    .B(_357_),
    .Y(net25));
 sky130_fd_sc_hd__xnor2_2 _704_ (.A(_104_),
    .B(_109_),
    .Y(net26));
 sky130_fd_sc_hd__a21o_2 _705_ (.A1(_353_),
    .A2(_355_),
    .B1(_354_),
    .X(net34));
 sky130_fd_sc_hd__and2_2 _706_ (.A(net88),
    .B(net37),
    .X(_010_));
 sky130_fd_sc_hd__and2_2 _707_ (.A(net37),
    .B(net98),
    .X(_009_));
 sky130_fd_sc_hd__and2_2 _708_ (.A(net35),
    .B(net89),
    .X(_008_));
 sky130_fd_sc_hd__and2_2 _709_ (.A(net37),
    .B(net92),
    .X(_007_));
 sky130_fd_sc_hd__and2_2 _710_ (.A(net37),
    .B(net93),
    .X(_006_));
 sky130_fd_sc_hd__and2_2 _711_ (.A(net18),
    .B(\controller.state[0] ),
    .X(_358_));
 sky130_fd_sc_hd__and2_2 _712_ (.A(net35),
    .B(_358_),
    .X(_005_));
 sky130_fd_sc_hd__and2_2 _713_ (.A(net37),
    .B(net90),
    .X(_004_));
 sky130_fd_sc_hd__and2_2 _714_ (.A(net37),
    .B(net96),
    .X(_003_));
 sky130_fd_sc_hd__and2_2 _715_ (.A(net35),
    .B(net91),
    .X(_002_));
 sky130_fd_sc_hd__and2_2 _716_ (.A(net35),
    .B(net97),
    .X(_001_));
 sky130_fd_sc_hd__and2_2 _717_ (.A(net35),
    .B(net95),
    .X(_000_));
 sky130_fd_sc_hd__a211o_2 _718_ (.A1(_368_),
    .A2(\controller.state[0] ),
    .B1(net86),
    .C1(net17),
    .X(_011_));
 sky130_fd_sc_hd__o41a_2 _719_ (.A1(\controller.state[4] ),
    .A2(net93),
    .A3(\controller.state[7] ),
    .A4(\controller.state[11] ),
    .B1(net37),
    .X(_012_));
 sky130_fd_sc_hd__or4_2 _720_ (.A(net88),
    .B(\controller.state[4] ),
    .C(net90),
    .D(net96),
    .X(_359_));
 sky130_fd_sc_hd__nor3_2 _721_ (.A(net92),
    .B(net97),
    .C(_359_),
    .Y(_360_));
 sky130_fd_sc_hd__nor2_2 _722_ (.A(net17),
    .B(_360_),
    .Y(_013_));
 sky130_fd_sc_hd__or2_2 _723_ (.A(net89),
    .B(net91),
    .X(_361_));
 sky130_fd_sc_hd__o21a_2 _724_ (.A1(_359_),
    .A2(_361_),
    .B1(net35),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _725_ (.A0(net19),
    .A1(net101),
    .S(net23),
    .X(_362_));
 sky130_fd_sc_hd__and2_2 _726_ (.A(net35),
    .B(_362_),
    .X(_015_));
 sky130_fd_sc_hd__mux2_1 _727_ (.A0(net20),
    .A1(net100),
    .S(net23),
    .X(_363_));
 sky130_fd_sc_hd__and2_2 _728_ (.A(net35),
    .B(_363_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _729_ (.A0(net21),
    .A1(net102),
    .S(net23),
    .X(_364_));
 sky130_fd_sc_hd__and2_2 _730_ (.A(net35),
    .B(_364_),
    .X(_017_));
 sky130_fd_sc_hd__and3b_2 _731_ (.A_N(net104),
    .B(net36),
    .C(net22),
    .X(_018_));
 sky130_fd_sc_hd__or4b_2 _732_ (.A(\controller.state[1] ),
    .B(_361_),
    .C(\controller.state[11] ),
    .D_N(_360_),
    .X(_365_));
 sky130_fd_sc_hd__mux2_1 _733_ (.A0(_358_),
    .A1(net23),
    .S(_365_),
    .X(_366_));
 sky130_fd_sc_hd__and2_2 _734_ (.A(net35),
    .B(_366_),
    .X(_019_));
 sky130_fd_sc_hd__and2_2 _735_ (.A(net37),
    .B(net86),
    .X(_020_));
 sky130_fd_sc_hd__and2_2 _736_ (.A(\diagnostic.x0[0] ),
    .B(net36),
    .X(_021_));
 sky130_fd_sc_hd__and2_2 _737_ (.A(\diagnostic.x0[1] ),
    .B(net36),
    .X(_022_));
 sky130_fd_sc_hd__and2_2 _738_ (.A(\diagnostic.x0[2] ),
    .B(net36),
    .X(_023_));
 sky130_fd_sc_hd__and2_2 _739_ (.A(\diagnostic.x0[3] ),
    .B(net36),
    .X(_024_));
 sky130_fd_sc_hd__and2_2 _740_ (.A(net103),
    .B(net37),
    .X(_025_));
 sky130_fd_sc_hd__and2_2 _741_ (.A(\diagnostic.x1[1] ),
    .B(net37),
    .X(_026_));
 sky130_fd_sc_hd__and2_2 _742_ (.A(net108),
    .B(net38),
    .X(_027_));
 sky130_fd_sc_hd__and2_2 _743_ (.A(net105),
    .B(net38),
    .X(_028_));
 sky130_fd_sc_hd__and2_2 _744_ (.A(net107),
    .B(net38),
    .X(_029_));
 sky130_fd_sc_hd__and2_2 _745_ (.A(\diagnostic.x2[1] ),
    .B(net38),
    .X(_030_));
 sky130_fd_sc_hd__and2_2 _746_ (.A(net99),
    .B(net38),
    .X(_031_));
 sky130_fd_sc_hd__and2_2 _747_ (.A(net106),
    .B(net38),
    .X(_032_));
 sky130_fd_sc_hd__dfxtp_2 _748_ (.CLK(clknet_2_2__leaf_clk),
    .D(net94),
    .Q(\controller.test_x[2] ));
 sky130_fd_sc_hd__dfxtp_2 _749_ (.CLK(clknet_2_0__leaf_clk),
    .D(_013_),
    .Q(\controller.test_x[1] ));
 sky130_fd_sc_hd__dfxtp_2 _750_ (.CLK(clknet_2_0__leaf_clk),
    .D(_014_),
    .Q(\controller.test_x[0] ));
 sky130_fd_sc_hd__dfxtp_2 _751_ (.CLK(clknet_2_1__leaf_clk),
    .D(_015_),
    .Q(\diagnostic.x0[0] ));
 sky130_fd_sc_hd__dfxtp_2 _752_ (.CLK(clknet_2_1__leaf_clk),
    .D(_016_),
    .Q(\diagnostic.x0[1] ));
 sky130_fd_sc_hd__dfxtp_2 _753_ (.CLK(clknet_2_1__leaf_clk),
    .D(_017_),
    .Q(\diagnostic.x0[2] ));
 sky130_fd_sc_hd__dfxtp_2 _754_ (.CLK(clknet_2_1__leaf_clk),
    .D(_018_),
    .Q(\diagnostic.x0[3] ));
 sky130_fd_sc_hd__dfxtp_2 _755_ (.CLK(clknet_2_0__leaf_clk),
    .D(_019_),
    .Q(net23));
 sky130_fd_sc_hd__dfxtp_2 _756_ (.CLK(clknet_2_2__leaf_clk),
    .D(_020_),
    .Q(net24));
 sky130_fd_sc_hd__dfxtp_2 _757_ (.CLK(clknet_2_1__leaf_clk),
    .D(_021_),
    .Q(\diagnostic.x1[0] ));
 sky130_fd_sc_hd__dfxtp_2 _758_ (.CLK(clknet_2_1__leaf_clk),
    .D(_022_),
    .Q(\diagnostic.x1[1] ));
 sky130_fd_sc_hd__dfxtp_2 _759_ (.CLK(clknet_2_1__leaf_clk),
    .D(_023_),
    .Q(\diagnostic.x1[2] ));
 sky130_fd_sc_hd__dfxtp_2 _760_ (.CLK(clknet_2_1__leaf_clk),
    .D(_024_),
    .Q(\diagnostic.x1[3] ));
 sky130_fd_sc_hd__dfxtp_2 _761_ (.CLK(clknet_2_3__leaf_clk),
    .D(_025_),
    .Q(\diagnostic.x2[0] ));
 sky130_fd_sc_hd__dfxtp_2 _762_ (.CLK(clknet_2_3__leaf_clk),
    .D(_026_),
    .Q(\diagnostic.x2[1] ));
 sky130_fd_sc_hd__dfxtp_2 _763_ (.CLK(clknet_2_3__leaf_clk),
    .D(_027_),
    .Q(\diagnostic.x2[2] ));
 sky130_fd_sc_hd__dfxtp_2 _764_ (.CLK(clknet_2_3__leaf_clk),
    .D(_028_),
    .Q(\diagnostic.x2[3] ));
 sky130_fd_sc_hd__dfxtp_2 _765_ (.CLK(clknet_2_3__leaf_clk),
    .D(_029_),
    .Q(\diagnostic.x3[0] ));
 sky130_fd_sc_hd__dfxtp_2 _766_ (.CLK(clknet_2_3__leaf_clk),
    .D(_030_),
    .Q(\diagnostic.x3[1] ));
 sky130_fd_sc_hd__dfxtp_2 _767_ (.CLK(clknet_2_3__leaf_clk),
    .D(_031_),
    .Q(\diagnostic.x3[2] ));
 sky130_fd_sc_hd__dfxtp_2 _768_ (.CLK(clknet_2_3__leaf_clk),
    .D(_032_),
    .Q(\diagnostic.x3[3] ));
 sky130_fd_sc_hd__dfxtp_2 _769_ (.CLK(clknet_2_0__leaf_clk),
    .D(net87),
    .Q(\controller.state[0] ));
 sky130_fd_sc_hd__dfxtp_2 _770_ (.CLK(clknet_2_0__leaf_clk),
    .D(_000_),
    .Q(\controller.state[1] ));
 sky130_fd_sc_hd__dfxtp_2 _771_ (.CLK(clknet_2_0__leaf_clk),
    .D(_001_),
    .Q(\controller.state[2] ));
 sky130_fd_sc_hd__dfxtp_2 _772_ (.CLK(clknet_2_0__leaf_clk),
    .D(_002_),
    .Q(\controller.state[3] ));
 sky130_fd_sc_hd__dfxtp_2 _773_ (.CLK(clknet_2_2__leaf_clk),
    .D(_003_),
    .Q(\controller.state[4] ));
 sky130_fd_sc_hd__dfxtp_2 _774_ (.CLK(clknet_2_2__leaf_clk),
    .D(_004_),
    .Q(\controller.state[5] ));
 sky130_fd_sc_hd__dfxtp_2 _775_ (.CLK(clknet_2_0__leaf_clk),
    .D(_005_),
    .Q(\controller.state[6] ));
 sky130_fd_sc_hd__dfxtp_2 _776_ (.CLK(clknet_2_2__leaf_clk),
    .D(_006_),
    .Q(\controller.state[7] ));
 sky130_fd_sc_hd__dfxtp_2 _777_ (.CLK(clknet_2_2__leaf_clk),
    .D(_007_),
    .Q(\controller.state[8] ));
 sky130_fd_sc_hd__dfxtp_2 _778_ (.CLK(clknet_2_0__leaf_clk),
    .D(_008_),
    .Q(\controller.state[9] ));
 sky130_fd_sc_hd__dfxtp_2 _779_ (.CLK(clknet_2_2__leaf_clk),
    .D(_009_),
    .Q(\controller.state[10] ));
 sky130_fd_sc_hd__dfxtp_2 _780_ (.CLK(clknet_2_2__leaf_clk),
    .D(_010_),
    .Q(\controller.state[11] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload1 (.A(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload2 (.A(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout35 (.A(_367_),
    .X(net35));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout36 (.A(_367_),
    .X(net36));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout37 (.A(_367_),
    .X(net37));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout38 (.A(_367_),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold100 (.A(\controller.test_x[1] ),
    .X(net100));
 sky130_fd_sc_hd__dlygate4sd3_1 hold101 (.A(\controller.test_x[0] ),
    .X(net101));
 sky130_fd_sc_hd__dlygate4sd3_1 hold102 (.A(\controller.test_x[2] ),
    .X(net102));
 sky130_fd_sc_hd__dlygate4sd3_1 hold103 (.A(\diagnostic.x1[0] ),
    .X(net103));
 sky130_fd_sc_hd__dlygate4sd3_1 hold104 (.A(net23),
    .X(net104));
 sky130_fd_sc_hd__dlygate4sd3_1 hold105 (.A(\diagnostic.x1[3] ),
    .X(net105));
 sky130_fd_sc_hd__dlygate4sd3_1 hold106 (.A(\diagnostic.x2[3] ),
    .X(net106));
 sky130_fd_sc_hd__dlygate4sd3_1 hold107 (.A(\diagnostic.x2[0] ),
    .X(net107));
 sky130_fd_sc_hd__dlygate4sd3_1 hold108 (.A(\diagnostic.x1[2] ),
    .X(net108));
 sky130_fd_sc_hd__dlygate4sd3_1 hold86 (.A(\controller.state[10] ),
    .X(net86));
 sky130_fd_sc_hd__dlygate4sd3_1 hold87 (.A(_011_),
    .X(net87));
 sky130_fd_sc_hd__dlygate4sd3_1 hold88 (.A(\controller.state[5] ),
    .X(net88));
 sky130_fd_sc_hd__dlygate4sd3_1 hold89 (.A(\controller.state[3] ),
    .X(net89));
 sky130_fd_sc_hd__dlygate4sd3_1 hold90 (.A(\controller.state[8] ),
    .X(net90));
 sky130_fd_sc_hd__dlygate4sd3_1 hold91 (.A(\controller.state[6] ),
    .X(net91));
 sky130_fd_sc_hd__dlygate4sd3_1 hold92 (.A(\controller.state[2] ),
    .X(net92));
 sky130_fd_sc_hd__dlygate4sd3_1 hold93 (.A(\controller.state[1] ),
    .X(net93));
 sky130_fd_sc_hd__dlygate4sd3_1 hold94 (.A(_012_),
    .X(net94));
 sky130_fd_sc_hd__dlygate4sd3_1 hold95 (.A(\controller.state[11] ),
    .X(net95));
 sky130_fd_sc_hd__dlygate4sd3_1 hold96 (.A(\controller.state[7] ),
    .X(net96));
 sky130_fd_sc_hd__dlygate4sd3_1 hold97 (.A(\controller.state[9] ),
    .X(net97));
 sky130_fd_sc_hd__dlygate4sd3_1 hold98 (.A(\controller.state[4] ),
    .X(net98));
 sky130_fd_sc_hd__dlygate4sd3_1 hold99 (.A(\diagnostic.x2[2] ),
    .X(net99));
 sky130_fd_sc_hd__buf_6 input1 (.A(h0[0]),
    .X(net1));
 sky130_fd_sc_hd__dlymetal6s4s_1 input10 (.A(h2[1]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input11 (.A(h2[2]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input12 (.A(h2[3]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_2 input13 (.A(h3[0]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_2 input14 (.A(h3[1]),
    .X(net14));
 sky130_fd_sc_hd__dlymetal6s4s_1 input15 (.A(h3[2]),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input16 (.A(h3[3]),
    .X(net16));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input17 (.A(rst),
    .X(net17));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input18 (.A(start_diag),
    .X(net18));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input19 (.A(x[0]),
    .X(net19));
 sky130_fd_sc_hd__buf_12 input2 (.A(h0[1]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input20 (.A(x[1]),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input21 (.A(x[2]),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input22 (.A(x[3]),
    .X(net22));
 sky130_fd_sc_hd__dlymetal6s2s_1 input3 (.A(h0[2]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(h0[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_2 input5 (.A(h1[0]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_2 input6 (.A(h1[1]),
    .X(net6));
 sky130_fd_sc_hd__dlymetal6s2s_1 input7 (.A(h1[2]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(h1[3]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input9 (.A(h2[0]),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output23 (.A(net23),
    .X(diag_busy));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output24 (.A(net24),
    .X(diag_done));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output25 (.A(net25),
    .X(y[0]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output26 (.A(net26),
    .X(y[1]));
 sky130_fd_sc_hd__dlymetal6s2s_1 output27 (.A(net27),
    .X(y[2]));
 sky130_fd_sc_hd__buf_6 output28 (.A(net28),
    .X(y[3]));
 sky130_fd_sc_hd__buf_6 output29 (.A(net29),
    .X(y[4]));
 sky130_fd_sc_hd__buf_6 output30 (.A(net30),
    .X(y[5]));
 sky130_fd_sc_hd__buf_6 output31 (.A(net31),
    .X(y[6]));
 sky130_fd_sc_hd__buf_6 output32 (.A(net32),
    .X(y[7]));
 sky130_fd_sc_hd__buf_6 output33 (.A(net33),
    .X(y[8]));
 sky130_fd_sc_hd__buf_6 output34 (.A(net34),
    .X(y[9]));
 sky130_fd_sc_hd__buf_2 rebuffer49 (.A(_061_),
    .X(net49));
 sky130_fd_sc_hd__buf_2 rebuffer50 (.A(_303_),
    .X(net50));
 sky130_fd_sc_hd__buf_2 rebuffer51 (.A(_327_),
    .X(net51));
 sky130_fd_sc_hd__buf_6 rebuffer52 (.A(_176_),
    .X(net52));
 sky130_fd_sc_hd__buf_2 rebuffer53 (.A(_162_),
    .X(net53));
 sky130_fd_sc_hd__buf_6 rebuffer54 (.A(_245_),
    .X(net54));
 sky130_fd_sc_hd__buf_6 rebuffer55 (.A(_332_),
    .X(net55));
 sky130_fd_sc_hd__buf_2 rebuffer56 (.A(_346_),
    .X(net56));
 sky130_fd_sc_hd__buf_2 rebuffer57 (.A(_171_),
    .X(net57));
 sky130_fd_sc_hd__buf_6 rebuffer62 (.A(_296_),
    .X(net62));
 sky130_fd_sc_hd__buf_2 rebuffer63 (.A(_124_),
    .X(net63));
 sky130_fd_sc_hd__buf_2 rebuffer64 (.A(_118_),
    .X(net64));
 sky130_fd_sc_hd__buf_2 rebuffer65 (.A(_248_),
    .X(net65));
 sky130_fd_sc_hd__buf_2 rebuffer69 (.A(_157_),
    .X(net69));
 sky130_fd_sc_hd__buf_2 rebuffer70 (.A(net2),
    .X(net70));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir (.LO(net));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_39 (.LO(net39));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_40 (.LO(net40));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_41 (.LO(net41));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_42 (.LO(net42));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_43 (.LO(net43));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_44 (.LO(net44));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_45 (.LO(net45));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_46 (.LO(net46));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_47 (.LO(net47));
 sky130_fd_sc_hd__conb_1 self_diagnosing_fir_48 (.LO(net48));
 assign fault_bit[0] = net;
 assign fault_bit[1] = net39;
 assign fault_bit[2] = net40;
 assign fault_detected = net41;
 assign fault_location[0] = net42;
 assign fault_location[1] = net43;
 assign fault_type = net44;
 assign fault_vector[0] = net45;
 assign fault_vector[1] = net46;
 assign fault_vector[2] = net47;
 assign fault_vector[3] = net48;
endmodule
