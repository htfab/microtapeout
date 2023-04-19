`default_nettype none

module combined_cells (
    input [5:0] in,
    output [419:0] out_notouch_
);

// constants
/////////////
sky130_fd_sc_hd__conb_1 conb_1_inst(.HI(out_notouch_[0]), .LO(out_notouch_[1]));

// buffers & inverters
///////////////////////
wire inv_notouch_[1:0];
sky130_fd_sc_hd__buf_1 buf_1_inst(.A(in[0]), .X(out_notouch_[2]));
sky130_fd_sc_hd__buf_2 buf_2_inst(.A(in[0]), .X(out_notouch_[3]));
sky130_fd_sc_hd__buf_4 buf_4_inst(.A(in[0]), .X(out_notouch_[4]));
sky130_fd_sc_hd__buf_6 buf_6_inst(.A(in[0]), .X(out_notouch_[5]));
sky130_fd_sc_hd__buf_8 buf_8_inst(.A(in[0]), .X(out_notouch_[6]));
sky130_fd_sc_hd__buf_12 buf_12_inst(.A(in[0]), .X(out_notouch_[7]));
sky130_fd_sc_hd__buf_16 buf_16_inst(.A(in[0]), .X(out_notouch_[8]));
sky130_fd_sc_hd__bufbuf_8 bufbuf_8_inst(.A(in[0]), .X(out_notouch_[9]));
sky130_fd_sc_hd__bufbuf_16 bufbuf_16_inst(.A(in[0]), .X(out_notouch_[10]));
sky130_fd_sc_hd__inv_1 inv_1_inst(.A(in[0]), .Y(out_notouch_[11]));
sky130_fd_sc_hd__inv_2 inv_2_inst(.A(in[0]), .Y(out_notouch_[12]));
sky130_fd_sc_hd__inv_4 inv_4_inst(.A(in[0]), .Y(out_notouch_[13]));
sky130_fd_sc_hd__inv_6 inv_6_inst(.A(in[0]), .Y(out_notouch_[14]));
sky130_fd_sc_hd__inv_8 inv_8_inst(.A(in[0]), .Y(out_notouch_[15]));
sky130_fd_sc_hd__inv_12 inv_12_inst(.A(in[0]), .Y(inv_notouch_[0])); assign out_notouch_[16] = inv_notouch_[0];
sky130_fd_sc_hd__inv_16 inv_16_inst(.A(in[0]), .Y(inv_notouch_[1])); assign out_notouch_[17] = inv_notouch_[1];
sky130_fd_sc_hd__bufinv_8 bufinv_8_inst(.A(in[0]), .Y(out_notouch_[18]));
sky130_fd_sc_hd__bufinv_16 bufinv_16_inst(.A(in[0]), .Y(out_notouch_[19]));

// and & nand variants
///////////////////////
//sky130_fd_sc_hd__and2_0 and2_0_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[]));
sky130_fd_sc_hd__and2_1 and2_1_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[20]));
sky130_fd_sc_hd__and2_2 and2_2_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[21]));
sky130_fd_sc_hd__and2_4 and2_4_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[22]));
sky130_fd_sc_hd__and2b_1 and2b_1_inst(.A_N(in[0]), .B(in[1]), .X(out_notouch_[23]));
sky130_fd_sc_hd__and2b_2 and2b_2_inst(.A_N(in[0]), .B(in[1]), .X(out_notouch_[24]));
sky130_fd_sc_hd__and2b_4 and2b_4_inst(.A_N(in[0]), .B(in[1]), .X(out_notouch_[25]));
sky130_fd_sc_hd__and3_1 and3_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[26]));
sky130_fd_sc_hd__and3_2 and3_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[27]));
sky130_fd_sc_hd__and3_4 and3_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[28]));
sky130_fd_sc_hd__and3b_1 and3b_1_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[29]));
sky130_fd_sc_hd__and3b_2 and3b_2_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[30]));
sky130_fd_sc_hd__and3b_4 and3b_4_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[31]));
sky130_fd_sc_hd__and4_1 and4_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[32]));
sky130_fd_sc_hd__and4_2 and4_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[33]));
sky130_fd_sc_hd__and4_4 and4_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[34]));
sky130_fd_sc_hd__and4b_1 and4b_1_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[35]));
sky130_fd_sc_hd__and4b_2 and4b_2_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[36]));
sky130_fd_sc_hd__and4b_4 and4b_4_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[37]));
sky130_fd_sc_hd__and4bb_1 and4bb_1_inst(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[38]));
sky130_fd_sc_hd__and4bb_2 and4bb_2_inst(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[39]));
sky130_fd_sc_hd__and4bb_4 and4bb_4_inst(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[40]));
sky130_fd_sc_hd__nand2_1 nand2_1_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[41]));
sky130_fd_sc_hd__nand2_2 nand2_2_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[42]));
sky130_fd_sc_hd__nand2_4 nand2_4_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[43]));
sky130_fd_sc_hd__nand2_8 nand2_8_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[44]));
sky130_fd_sc_hd__nand2b_1 nand2b_1_inst(.A_N(in[0]), .B(in[1]), .Y(out_notouch_[45]));
sky130_fd_sc_hd__nand2b_2 nand2b_2_inst(.A_N(in[0]), .B(in[1]), .Y(out_notouch_[46]));
sky130_fd_sc_hd__nand2b_4 nand2b_4_inst(.A_N(in[0]), .B(in[1]), .Y(out_notouch_[47]));
sky130_fd_sc_hd__nand3_1 nand3_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[48]));
sky130_fd_sc_hd__nand3_2 nand3_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[49]));
sky130_fd_sc_hd__nand3_4 nand3_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[50]));
sky130_fd_sc_hd__nand3b_1 nand3b_1_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[51]));
sky130_fd_sc_hd__nand3b_2 nand3b_2_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[52]));
sky130_fd_sc_hd__nand3b_4 nand3b_4_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[53]));
sky130_fd_sc_hd__nand4_1 nand4_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[54]));
sky130_fd_sc_hd__nand4_2 nand4_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[55]));
sky130_fd_sc_hd__nand4_4 nand4_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[56]));
sky130_fd_sc_hd__nand4b_1 nand4b_1_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[57]));
sky130_fd_sc_hd__nand4b_2 nand4b_2_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[58]));
sky130_fd_sc_hd__nand4b_4 nand4b_4_inst(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[59]));
sky130_fd_sc_hd__nand4bb_1 nand4bb_1_inst(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[60]));
sky130_fd_sc_hd__nand4bb_2 nand4bb_2_inst(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[61]));
sky130_fd_sc_hd__nand4bb_4 nand4bb_4_inst(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[62]));

// or & nor variants
/////////////////////
//sky130_fd_sc_hd__or2_0 or2_0_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[]));
sky130_fd_sc_hd__or2_1 or2_1_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[63]));
sky130_fd_sc_hd__or2_2 or2_2_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[64]));
sky130_fd_sc_hd__or2_4 or2_4_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[65]));
sky130_fd_sc_hd__or2b_1 or2b_1_inst(.A(in[0]), .B_N(in[1]), .X(out_notouch_[66]));
sky130_fd_sc_hd__or2b_2 or2b_2_inst(.A(in[0]), .B_N(in[1]), .X(out_notouch_[67]));
sky130_fd_sc_hd__or2b_4 or2b_4_inst(.A(in[0]), .B_N(in[1]), .X(out_notouch_[68]));
sky130_fd_sc_hd__or3_1 or3_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[69]));
sky130_fd_sc_hd__or3_2 or3_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[70]));
sky130_fd_sc_hd__or3_4 or3_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[71]));
sky130_fd_sc_hd__or3b_1 or3b_1_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .X(out_notouch_[72]));
sky130_fd_sc_hd__or3b_2 or3b_2_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .X(out_notouch_[73]));
sky130_fd_sc_hd__or3b_4 or3b_4_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .X(out_notouch_[74]));
sky130_fd_sc_hd__or4_1 or4_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[75]));
sky130_fd_sc_hd__or4_2 or4_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[76]));
sky130_fd_sc_hd__or4_4 or4_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[77]));
sky130_fd_sc_hd__or4b_1 or4b_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .X(out_notouch_[78]));
sky130_fd_sc_hd__or4b_2 or4b_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .X(out_notouch_[79]));
sky130_fd_sc_hd__or4b_4 or4b_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .X(out_notouch_[80]));
sky130_fd_sc_hd__or4bb_1 or4bb_1_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .X(out_notouch_[81]));
sky130_fd_sc_hd__or4bb_2 or4bb_2_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .X(out_notouch_[82]));
sky130_fd_sc_hd__or4bb_4 or4bb_4_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .X(out_notouch_[83]));
sky130_fd_sc_hd__nor2_1 nor2_1_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[84]));
sky130_fd_sc_hd__nor2_2 nor2_2_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[85]));
sky130_fd_sc_hd__nor2_4 nor2_4_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[86]));
sky130_fd_sc_hd__nor2_8 nor2_8_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[87]));
sky130_fd_sc_hd__nor2b_1 nor2b_1_inst(.A(in[0]), .B_N(in[1]), .Y(out_notouch_[88]));
sky130_fd_sc_hd__nor2b_2 nor2b_2_inst(.A(in[0]), .B_N(in[1]), .Y(out_notouch_[89]));
sky130_fd_sc_hd__nor2b_4 nor2b_4_inst(.A(in[0]), .B_N(in[1]), .Y(out_notouch_[90]));
sky130_fd_sc_hd__nor3_1 nor3_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[91]));
sky130_fd_sc_hd__nor3_2 nor3_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[92]));
sky130_fd_sc_hd__nor3_4 nor3_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[93]));
sky130_fd_sc_hd__nor3b_1 nor3b_1_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .Y(out_notouch_[94]));
sky130_fd_sc_hd__nor3b_2 nor3b_2_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .Y(out_notouch_[95]));
sky130_fd_sc_hd__nor3b_4 nor3b_4_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .Y(out_notouch_[96]));
sky130_fd_sc_hd__nor4_1 nor4_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[97]));
sky130_fd_sc_hd__nor4_2 nor4_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[98]));
sky130_fd_sc_hd__nor4_4 nor4_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[99]));
sky130_fd_sc_hd__nor4b_1 nor4b_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .Y(out_notouch_[100]));
sky130_fd_sc_hd__nor4b_2 nor4b_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .Y(out_notouch_[101]));
sky130_fd_sc_hd__nor4b_4 nor4b_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .Y(out_notouch_[102]));
sky130_fd_sc_hd__nor4bb_1 nor4bb_1_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .Y(out_notouch_[103]));
sky130_fd_sc_hd__nor4bb_2 nor4bb_2_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .Y(out_notouch_[104]));
sky130_fd_sc_hd__nor4bb_4 nor4bb_4_inst(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .Y(out_notouch_[105]));

// xor & xnor variants
///////////////////////
sky130_fd_sc_hd__xor2_1 xor2_1_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[106]));
sky130_fd_sc_hd__xor2_2 xor2_2_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[107]));
sky130_fd_sc_hd__xor2_4 xor2_4_inst(.A(in[0]), .B(in[1]), .X(out_notouch_[108]));
sky130_fd_sc_hd__xor3_1 xor3_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[109]));
sky130_fd_sc_hd__xor3_2 xor3_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[110]));
sky130_fd_sc_hd__xor3_4 xor3_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[111]));
sky130_fd_sc_hd__xnor2_1 xnor2_1_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[112]));
sky130_fd_sc_hd__xnor2_2 xnor2_2_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[113]));
sky130_fd_sc_hd__xnor2_4 xnor2_4_inst(.A(in[0]), .B(in[1]), .Y(out_notouch_[114]));
sky130_fd_sc_hd__xnor3_1 xnor3_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[115]));
sky130_fd_sc_hd__xnor3_2 xnor3_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[116]));
sky130_fd_sc_hd__xnor3_4 xnor3_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[117]));

// and-into-or variants
////////////////////////
sky130_fd_sc_hd__a2111o_1 a2111o_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[118]));
sky130_fd_sc_hd__a2111o_2 a2111o_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[119]));
sky130_fd_sc_hd__a2111o_4 a2111o_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[120]));
//sky130_fd_sc_hd__a2111oi_0 a2111oi_0_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a2111oi_1 a2111oi_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[121]));
sky130_fd_sc_hd__a2111oi_2 a2111oi_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[122]));
sky130_fd_sc_hd__a2111oi_4 a2111oi_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[123]));
sky130_fd_sc_hd__a211o_1 a211o_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[124]));
sky130_fd_sc_hd__a211o_2 a211o_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[125]));
sky130_fd_sc_hd__a211o_4 a211o_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[126]));
sky130_fd_sc_hd__a211oi_1 a211oi_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[127]));
sky130_fd_sc_hd__a211oi_2 a211oi_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[128]));
sky130_fd_sc_hd__a211oi_4 a211oi_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[129]));
sky130_fd_sc_hd__a21bo_1 a21bo_1_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[130]));
sky130_fd_sc_hd__a21bo_2 a21bo_2_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[131]));
sky130_fd_sc_hd__a21bo_4 a21bo_4_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[132]));
//sky130_fd_sc_hd__a21boi_0 a21boi_0_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a21boi_1 a21boi_1_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[133]));
sky130_fd_sc_hd__a21boi_2 a21boi_2_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[134]));
sky130_fd_sc_hd__a21boi_4 a21boi_4_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[135]));
sky130_fd_sc_hd__a21o_1 a21o_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[136]));
sky130_fd_sc_hd__a21o_2 a21o_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[137]));
sky130_fd_sc_hd__a21o_4 a21o_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[138]));
sky130_fd_sc_hd__a21oi_1 a21oi_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[139]));
sky130_fd_sc_hd__a21oi_2 a21oi_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[140]));
sky130_fd_sc_hd__a21oi_4 a21oi_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[141]));
sky130_fd_sc_hd__a221o_1 a221o_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[142]));
sky130_fd_sc_hd__a221o_2 a221o_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[143]));
sky130_fd_sc_hd__a221o_4 a221o_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[144]));
sky130_fd_sc_hd__a221oi_1 a221oi_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[145]));
sky130_fd_sc_hd__a221oi_2 a221oi_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[146]));
sky130_fd_sc_hd__a221oi_4 a221oi_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[147]));
sky130_fd_sc_hd__a222oi_1 a222oi_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .C2(in[5]), .Y(out_notouch_[148]));
sky130_fd_sc_hd__a22o_1 a22o_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[149]));
sky130_fd_sc_hd__a22o_2 a22o_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[150]));
sky130_fd_sc_hd__a22o_4 a22o_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[151]));
sky130_fd_sc_hd__a22oi_1 a22oi_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[152]));
sky130_fd_sc_hd__a22oi_2 a22oi_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[153]));
sky130_fd_sc_hd__a22oi_4 a22oi_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[154]));
sky130_fd_sc_hd__a2bb2o_1 a2bb2o_1_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[155]));
sky130_fd_sc_hd__a2bb2o_2 a2bb2o_2_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[156]));
sky130_fd_sc_hd__a2bb2o_4 a2bb2o_4_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[157]));
sky130_fd_sc_hd__a2bb2oi_1 a2bb2oi_1_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[158]));
sky130_fd_sc_hd__a2bb2oi_2 a2bb2oi_2_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[159]));
sky130_fd_sc_hd__a2bb2oi_4 a2bb2oi_4_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[160]));
sky130_fd_sc_hd__a311o_1 a311o_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[161]));
sky130_fd_sc_hd__a311o_2 a311o_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[162]));
sky130_fd_sc_hd__a311o_4 a311o_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[163]));
sky130_fd_sc_hd__a311oi_1 a311oi_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[164]));
sky130_fd_sc_hd__a311oi_2 a311oi_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[165]));
sky130_fd_sc_hd__a311oi_4 a311oi_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[166]));
sky130_fd_sc_hd__a31o_1 a31o_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[167]));
sky130_fd_sc_hd__a31o_2 a31o_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[168]));
sky130_fd_sc_hd__a31o_4 a31o_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[169]));
sky130_fd_sc_hd__a31oi_1 a31oi_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[170]));
sky130_fd_sc_hd__a31oi_2 a31oi_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[171]));
sky130_fd_sc_hd__a31oi_4 a31oi_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[172]));
sky130_fd_sc_hd__a32o_1 a32o_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[173]));
sky130_fd_sc_hd__a32o_2 a32o_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[174]));
sky130_fd_sc_hd__a32o_4 a32o_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[175]));
sky130_fd_sc_hd__a32oi_1 a32oi_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[176]));
sky130_fd_sc_hd__a32oi_2 a32oi_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[177]));
sky130_fd_sc_hd__a32oi_4 a32oi_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[178]));
sky130_fd_sc_hd__a41o_1 a41o_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[179]));
sky130_fd_sc_hd__a41o_2 a41o_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[180]));
sky130_fd_sc_hd__a41o_4 a41o_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[181]));
sky130_fd_sc_hd__a41oi_1 a41oi_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[182]));
sky130_fd_sc_hd__a41oi_2 a41oi_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[183]));
sky130_fd_sc_hd__a41oi_4 a41oi_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[184]));

// or-into-and variants
////////////////////////
sky130_fd_sc_hd__o2111a_1 o2111a_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[185]));
sky130_fd_sc_hd__o2111a_2 o2111a_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[186]));
sky130_fd_sc_hd__o2111a_4 o2111a_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[187]));
sky130_fd_sc_hd__o2111ai_1 o2111ai_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[188]));
sky130_fd_sc_hd__o2111ai_2 o2111ai_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[189]));
sky130_fd_sc_hd__o2111ai_4 o2111ai_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[190]));
sky130_fd_sc_hd__o211a_1 o211a_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[191]));
sky130_fd_sc_hd__o211a_2 o211a_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[192]));
sky130_fd_sc_hd__o211a_4 o211a_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[193]));
sky130_fd_sc_hd__o211ai_1 o211ai_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[194]));
sky130_fd_sc_hd__o211ai_2 o211ai_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[195]));
sky130_fd_sc_hd__o211ai_4 o211ai_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[196]));
sky130_fd_sc_hd__o21a_1 o21a_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[197]));
sky130_fd_sc_hd__o21a_2 o21a_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[198]));
sky130_fd_sc_hd__o21a_4 o21a_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[199]));
//sky130_fd_sc_hd__o21ai_0 o21ai_0_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o21ai_1 o21ai_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[200]));
sky130_fd_sc_hd__o21ai_2 o21ai_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[201]));
sky130_fd_sc_hd__o21ai_4 o21ai_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[202]));
sky130_fd_sc_hd__o21ba_1 o21ba_1_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[203]));
sky130_fd_sc_hd__o21ba_2 o21ba_2_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[204]));
sky130_fd_sc_hd__o21ba_4 o21ba_4_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[205]));
sky130_fd_sc_hd__o21bai_1 o21bai_1_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[206]));
sky130_fd_sc_hd__o21bai_2 o21bai_2_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[207]));
sky130_fd_sc_hd__o21bai_4 o21bai_4_inst(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[208]));
sky130_fd_sc_hd__o221a_1 o221a_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[209]));
sky130_fd_sc_hd__o221a_2 o221a_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[210]));
sky130_fd_sc_hd__o221a_4 o221a_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[211]));
sky130_fd_sc_hd__o221ai_1 o221ai_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[212]));
sky130_fd_sc_hd__o221ai_2 o221ai_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[213]));
sky130_fd_sc_hd__o221ai_4 o221ai_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[214]));
sky130_fd_sc_hd__o22a_1 o22a_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[215]));
sky130_fd_sc_hd__o22a_2 o22a_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[216]));
sky130_fd_sc_hd__o22a_4 o22a_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[217]));
sky130_fd_sc_hd__o22ai_1 o22ai_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[218]));
sky130_fd_sc_hd__o22ai_2 o22ai_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[219]));
sky130_fd_sc_hd__o22ai_4 o22ai_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[220]));
sky130_fd_sc_hd__o2bb2a_1 o2bb2a_1_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[221]));
sky130_fd_sc_hd__o2bb2a_2 o2bb2a_2_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[222]));
sky130_fd_sc_hd__o2bb2a_4 o2bb2a_4_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[223]));
sky130_fd_sc_hd__o2bb2ai_1 o2bb2ai_1_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[224]));
sky130_fd_sc_hd__o2bb2ai_2 o2bb2ai_2_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[225]));
sky130_fd_sc_hd__o2bb2ai_4 o2bb2ai_4_inst(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[226]));
sky130_fd_sc_hd__o311a_1 o311a_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[227]));
sky130_fd_sc_hd__o311a_2 o311a_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[228]));
sky130_fd_sc_hd__o311a_4 o311a_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[229]));
//sky130_fd_sc_hd__o311ai_0 o311ai_0_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o311ai_1 o311ai_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[230]));
sky130_fd_sc_hd__o311ai_2 o311ai_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[231]));
sky130_fd_sc_hd__o311ai_4 o311ai_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[232]));
sky130_fd_sc_hd__o31a_1 o31a_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[233]));
sky130_fd_sc_hd__o31a_2 o31a_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[234]));
sky130_fd_sc_hd__o31a_4 o31a_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[235]));
sky130_fd_sc_hd__o31ai_1 o31ai_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[236]));
sky130_fd_sc_hd__o31ai_2 o31ai_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[237]));
sky130_fd_sc_hd__o31ai_4 o31ai_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[238]));
sky130_fd_sc_hd__o32a_1 o32a_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[239]));
sky130_fd_sc_hd__o32a_2 o32a_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[240]));
sky130_fd_sc_hd__o32a_4 o32a_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[241]));
sky130_fd_sc_hd__o32ai_1 o32ai_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[242]));
sky130_fd_sc_hd__o32ai_2 o32ai_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[243]));
sky130_fd_sc_hd__o32ai_4 o32ai_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[244]));
sky130_fd_sc_hd__o41a_1 o41a_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[245]));
sky130_fd_sc_hd__o41a_2 o41a_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[246]));
sky130_fd_sc_hd__o41a_4 o41a_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[247]));
sky130_fd_sc_hd__o41ai_1 o41ai_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[248]));
sky130_fd_sc_hd__o41ai_2 o41ai_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[249]));
sky130_fd_sc_hd__o41ai_4 o41ai_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[250]));

// other combinational cells (majority, multiplexors, adders)
//////////////////////////////////////////////////////////////
sky130_fd_sc_hd__maj3_1 maj3_1_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[251]));
sky130_fd_sc_hd__maj3_2 maj3_2_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[252]));
sky130_fd_sc_hd__maj3_4 maj3_4_inst(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[253]));
sky130_fd_sc_hd__mux2_1 mux2_1_inst(.A0(in[0]), .A1(in[1]), .S(in[2]), .X(out_notouch_[254]));
sky130_fd_sc_hd__mux2_2 mux2_2_inst(.A0(in[0]), .A1(in[1]), .S(in[2]), .X(out_notouch_[255]));
sky130_fd_sc_hd__mux2_4 mux2_4_inst(.A0(in[0]), .A1(in[1]), .S(in[2]), .X(out_notouch_[256]));
sky130_fd_sc_hd__mux2_8 mux2_8_inst(.A0(in[0]), .A1(in[1]), .S(in[2]), .X(out_notouch_[257]));
sky130_fd_sc_hd__mux2i_1 mux2i_1_inst(.A0(in[0]), .A1(in[1]), .S(in[2]), .Y(out_notouch_[258]));
sky130_fd_sc_hd__mux2i_2 mux2i_2_inst(.A0(in[0]), .A1(in[1]), .S(in[2]), .Y(out_notouch_[259]));
sky130_fd_sc_hd__mux2i_4 mux2i_4_inst(.A0(in[0]), .A1(in[1]), .S(in[2]), .Y(out_notouch_[260]));
sky130_fd_sc_hd__mux4_1 mux4_1_inst(.A0(in[0]), .A1(in[1]), .A2(in[2]), .A3(in[3]), .S0(in[4]), .S1(in[5]), .X(out_notouch_[261]));
sky130_fd_sc_hd__mux4_2 mux4_2_inst(.A0(in[0]), .A1(in[1]), .A2(in[2]), .A3(in[3]), .S0(in[4]), .S1(in[5]), .X(out_notouch_[262]));
sky130_fd_sc_hd__mux4_4 mux4_4_inst(.A0(in[0]), .A1(in[1]), .A2(in[2]), .A3(in[3]), .S0(in[4]), .S1(in[5]), .X(out_notouch_[263]));
sky130_fd_sc_hd__ha_1 ha_1_inst(.A(in[0]), .B(in[1]), .COUT(out_notouch_[264]), .SUM(out_notouch_[265]));
sky130_fd_sc_hd__ha_2 ha_2_inst(.A(in[0]), .B(in[1]), .COUT(out_notouch_[266]), .SUM(out_notouch_[267]));
sky130_fd_sc_hd__ha_4 ha_4_inst(.A(in[0]), .B(in[1]), .COUT(out_notouch_[268]), .SUM(out_notouch_[269]));
sky130_fd_sc_hd__fa_1 fa_1_inst(.A(in[0]), .B(in[1]), .CIN(in[2]), .COUT(out_notouch_[270]), .SUM(out_notouch_[271]));
sky130_fd_sc_hd__fa_2 fa_2_inst(.A(in[0]), .B(in[1]), .CIN(in[2]), .COUT(out_notouch_[272]), .SUM(out_notouch_[273]));
sky130_fd_sc_hd__fa_4 fa_4_inst(.A(in[0]), .B(in[1]), .CIN(in[2]), .COUT(out_notouch_[274]), .SUM(out_notouch_[275]));
sky130_fd_sc_hd__fah_1 fah_1_inst(.A(in[0]), .B(in[1]), .CI(in[2]), .COUT(out_notouch_[276]), .SUM(out_notouch_[277]));
sky130_fd_sc_hd__fahcin_1 fahcin_1_inst(.A(in[0]), .B(in[1]), .CIN(in[2]), .COUT(out_notouch_[278]), .SUM(out_notouch_[279]));
sky130_fd_sc_hd__fahcon_1 fahcon_1_inst(.A(in[0]), .B(in[1]), .CI(in[2]), .COUT_N(out_notouch_[280]), .SUM(out_notouch_[281]));

// latches
///////////
sky130_fd_sc_hd__dlxtp_1 dlxtp_1_inst(.D(in[0]), .GATE(in[1]), .Q(out_notouch_[282]));
sky130_fd_sc_hd__dlxtn_1 dlxtn_1_inst(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[283]));
sky130_fd_sc_hd__dlxtn_2 dlxtn_2_inst(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[284]));
sky130_fd_sc_hd__dlxtn_4 dlxtn_4_inst(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[285]));
sky130_fd_sc_hd__dlxbp_1 dlxbp_1_inst(.D(in[0]), .GATE(in[1]), .Q(out_notouch_[286]), .Q_N(out_notouch_[287]));
sky130_fd_sc_hd__dlxbn_1 dlxbn_1_inst(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[288]), .Q_N(out_notouch_[289]));
sky130_fd_sc_hd__dlxbn_2 dlxbn_2_inst(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[290]), .Q_N(out_notouch_[291]));
sky130_fd_sc_hd__dlrtp_1 dlrtp_1_inst(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[292]));
sky130_fd_sc_hd__dlrtp_2 dlrtp_2_inst(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[293]));
sky130_fd_sc_hd__dlrtp_4 dlrtp_4_inst(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[294]));
sky130_fd_sc_hd__dlrtn_1 dlrtn_1_inst(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[295]));
sky130_fd_sc_hd__dlrtn_2 dlrtn_2_inst(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[296]));
sky130_fd_sc_hd__dlrtn_4 dlrtn_4_inst(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[297]));
sky130_fd_sc_hd__dlrbp_1 dlrbp_1_inst(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[298]), .Q_N(out_notouch_[299]));
sky130_fd_sc_hd__dlrbp_2 dlrbp_2_inst(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[300]), .Q_N(out_notouch_[301]));
sky130_fd_sc_hd__dlrbn_1 dlrbn_1_inst(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[302]), .Q_N(out_notouch_[303]));
sky130_fd_sc_hd__dlrbn_2 dlrbn_2_inst(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[304]), .Q_N(out_notouch_[305]));

// flops
/////////
sky130_fd_sc_hd__dfxtp_1 dfxtp_1_inst(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[306]));
sky130_fd_sc_hd__dfxtp_2 dfxtp_2_inst(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[307]));
sky130_fd_sc_hd__dfxtp_4 dfxtp_4_inst(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[308]));
sky130_fd_sc_hd__dfxbp_1 dfxbp_1_inst(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[309]), .Q_N(out_notouch_[310]));
sky130_fd_sc_hd__dfxbp_2 dfxbp_2_inst(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[311]), .Q_N(out_notouch_[312]));
sky130_fd_sc_hd__dfrtp_1 dfrtp_1_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[313]));
sky130_fd_sc_hd__dfrtp_2 dfrtp_2_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[314]));
sky130_fd_sc_hd__dfrtp_4 dfrtp_4_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[315]));
sky130_fd_sc_hd__dfrtn_1 dfrtn_1_inst(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[316]));
sky130_fd_sc_hd__dfrbp_1 dfrbp_1_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[317]), .Q_N(out_notouch_[318]));
sky130_fd_sc_hd__dfrbp_2 dfrbp_2_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[319]), .Q_N(out_notouch_[320]));
sky130_fd_sc_hd__dfstp_1 dfstp_1_inst(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[321]));
sky130_fd_sc_hd__dfstp_2 dfstp_2_inst(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[322]));
sky130_fd_sc_hd__dfstp_4 dfstp_4_inst(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[323]));
sky130_fd_sc_hd__dfsbp_1 dfsbp_1_inst(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[324]), .Q_N(out_notouch_[325]));
sky130_fd_sc_hd__dfsbp_2 dfsbp_2_inst(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[326]), .Q_N(out_notouch_[327]));
sky130_fd_sc_hd__dfbbn_1 dfbbn_1_inst(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SET_B(in[3]), .Q(out_notouch_[328]), .Q_N(out_notouch_[329]));
sky130_fd_sc_hd__dfbbn_2 dfbbn_2_inst(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SET_B(in[3]), .Q(out_notouch_[330]), .Q_N(out_notouch_[331]));
sky130_fd_sc_hd__dfbbp_1 dfbbp_1_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SET_B(in[3]), .Q(out_notouch_[332]), .Q_N(out_notouch_[333]));
sky130_fd_sc_hd__edfxtp_1 edfxtp_1_inst(.CLK(in[0]), .D(in[1]), .DE(in[2]), .Q(out_notouch_[334]));
sky130_fd_sc_hd__edfxbp_1 edfxbp_1_inst(.CLK(in[0]), .D(in[1]), .DE(in[2]), .Q(out_notouch_[335]), .Q_N(out_notouch_[336]));

// flops with scan chain
/////////////////////////
sky130_fd_sc_hd__sdfxtp_1 sdfxtp_1_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[337]));
sky130_fd_sc_hd__sdfxtp_2 sdfxtp_2_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[338]));
sky130_fd_sc_hd__sdfxtp_4 sdfxtp_4_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[339]));
sky130_fd_sc_hd__sdfxbp_1 sdfxbp_1_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[340]), .Q_N(out_notouch_[341]));
sky130_fd_sc_hd__sdfxbp_2 sdfxbp_2_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[342]), .Q_N(out_notouch_[343]));
sky130_fd_sc_hd__sdfrtp_1 sdfrtp_1_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[344]));
sky130_fd_sc_hd__sdfrtp_2 sdfrtp_2_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[345]));
sky130_fd_sc_hd__sdfrtp_4 sdfrtp_4_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[346]));
sky130_fd_sc_hd__sdfrtn_1 sdfrtn_1_inst(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[347]));
sky130_fd_sc_hd__sdfrbp_1 sdfrbp_1_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[348]), .Q_N(out_notouch_[349]));
sky130_fd_sc_hd__sdfrbp_2 sdfrbp_2_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[350]), .Q_N(out_notouch_[351]));
sky130_fd_sc_hd__sdfstp_1 sdfstp_1_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[352]));
sky130_fd_sc_hd__sdfstp_2 sdfstp_2_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[353]));
sky130_fd_sc_hd__sdfstp_4 sdfstp_4_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[354]));
sky130_fd_sc_hd__sdfsbp_1 sdfsbp_1_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[355]), .Q_N(out_notouch_[356]));
sky130_fd_sc_hd__sdfsbp_2 sdfsbp_2_inst(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[357]), .Q_N(out_notouch_[358]));
sky130_fd_sc_hd__sdfbbn_1 sdfbbn_1_inst(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .SET_B(in[5]), .Q(out_notouch_[359]), .Q_N(out_notouch_[360]));
sky130_fd_sc_hd__sdfbbn_2 sdfbbn_2_inst(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .SET_B(in[5]), .Q(out_notouch_[361]), .Q_N(out_notouch_[362]));
sky130_fd_sc_hd__sdfbbp_1 sdfbbp_1_inst(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .SET_B(in[5]), .Q(out_notouch_[363]), .Q_N(out_notouch_[364]));
sky130_fd_sc_hd__sedfxtp_1 sedfxtp_1_inst(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[365]));
sky130_fd_sc_hd__sedfxtp_2 sedfxtp_2_inst(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[366]));
sky130_fd_sc_hd__sedfxtp_4 sedfxtp_4_inst(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[367]));
sky130_fd_sc_hd__sedfxbp_1 sedfxbp_1_inst(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[368]), .Q_N(out_notouch_[369]));
sky130_fd_sc_hd__sedfxbp_2 sedfxbp_2_inst(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[370]), .Q_N(out_notouch_[371]));

// tri-state buffers
/////////////////////
wire [6:0] tri_notouch_;
sky130_fd_sc_hd__ebufn_1 ebufn_1_inst(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[0]));
sky130_fd_sc_hd__ebufn_2 ebufn_2_inst(.A(in[1]), .TE_B(inv_notouch_[0]), .Z(tri_notouch_[0])); assign out_notouch_[372] = tri_notouch_[0];
sky130_fd_sc_hd__ebufn_4 ebufn_4_inst(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[1]));
sky130_fd_sc_hd__ebufn_8 ebufn_8_inst(.A(in[1]), .TE_B(inv_notouch_[1]), .Z(tri_notouch_[1])); assign out_notouch_[373] = tri_notouch_[1];
//sky130_fd_sc_hd__einvn_0 einvn_0_inst(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[2]));
//sky130_fd_sc_hd__einvp_1 einvp_1_dupl(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[2])); assign out_notouch_[] = tri_notouch_[2];
sky130_fd_sc_hd__einvn_1 einvn_1_inst(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[3]));
sky130_fd_sc_hd__einvp_1 einvp_1_inst(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[3])); assign out_notouch_[374] = tri_notouch_[3];
sky130_fd_sc_hd__einvn_2 einvn_2_inst(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[4]));
sky130_fd_sc_hd__einvp_2 einvp_2_inst(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[4])); assign out_notouch_[375] = tri_notouch_[4];
sky130_fd_sc_hd__einvn_4 einvn_4_inst(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[5]));
sky130_fd_sc_hd__einvp_4 einvp_4_inst(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[5])); assign out_notouch_[376] = tri_notouch_[5];
sky130_fd_sc_hd__einvn_8 einvn_8_inst(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[6]));
sky130_fd_sc_hd__einvp_8 einvp_8_inst(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[6])); assign out_notouch_[377] = tri_notouch_[6];

// delay buffers
/////////////////
sky130_fd_sc_hd__dlygate4sd1_1 dlygate4sd1_1_inst(.A(in[0]), .X(out_notouch_[378]));
sky130_fd_sc_hd__dlygate4sd2_1 dlygate4sd2_1_inst(.A(in[0]), .X(out_notouch_[379]));
sky130_fd_sc_hd__dlygate4sd3_1 dlygate4sd3_1_inst(.A(in[0]), .X(out_notouch_[380]));
sky130_fd_sc_hd__dlymetal6s2s_1 dlymetal6s2s_1_inst(.A(in[0]), .X(out_notouch_[381]));
sky130_fd_sc_hd__dlymetal6s4s_1 dlymetal6s4s_1_inst(.A(in[0]), .X(out_notouch_[382]));
sky130_fd_sc_hd__dlymetal6s6s_1 dlymetal6s6s_1_inst(.A(in[0]), .X(out_notouch_[383]));

// buffers, inverters and delay buffers for the clock tree
///////////////////////////////////////////////////////////
sky130_fd_sc_hd__clkbuf_1 clkbuf_1_inst(.A(in[0]), .X(out_notouch_[384]));
sky130_fd_sc_hd__clkbuf_2 clkbuf_2_inst(.A(in[0]), .X(out_notouch_[385]));
sky130_fd_sc_hd__clkbuf_4 clkbuf_4_inst(.A(in[0]), .X(out_notouch_[386]));
sky130_fd_sc_hd__clkbuf_8 clkbuf_8_inst(.A(in[0]), .X(out_notouch_[387]));
sky130_fd_sc_hd__clkbuf_16 clkbuf_16_inst(.A(in[0]), .X(out_notouch_[388]));
sky130_fd_sc_hd__clkinv_1 clkinv_1_inst(.A(in[0]), .Y(out_notouch_[389]));
sky130_fd_sc_hd__clkinv_2 clkinv_2_inst(.A(in[0]), .Y(out_notouch_[390]));
sky130_fd_sc_hd__clkinv_4 clkinv_4_inst(.A(in[0]), .Y(out_notouch_[391]));
sky130_fd_sc_hd__clkinv_8 clkinv_8_inst(.A(in[0]), .Y(out_notouch_[392]));
sky130_fd_sc_hd__clkinv_16 clkinv_16_inst(.A(in[0]), .Y(out_notouch_[393]));
sky130_fd_sc_hd__clkinvlp_2 clkinvlp_2_inst(.A(in[0]), .Y(out_notouch_[394]));
sky130_fd_sc_hd__clkinvlp_4 clkinvlp_4_inst(.A(in[0]), .Y(out_notouch_[395]));
sky130_fd_sc_hd__clkdlybuf4s15_1 clkdlybuf4s15_1_inst(.A(in[0]), .X(out_notouch_[396]));
sky130_fd_sc_hd__clkdlybuf4s15_2 clkdlybuf4s15_2_inst(.A(in[0]), .X(out_notouch_[397]));
sky130_fd_sc_hd__clkdlybuf4s18_1 clkdlybuf4s18_1_inst(.A(in[0]), .X(out_notouch_[398]));
sky130_fd_sc_hd__clkdlybuf4s18_2 clkdlybuf4s18_2_inst(.A(in[0]), .X(out_notouch_[399]));
sky130_fd_sc_hd__clkdlybuf4s25_1 clkdlybuf4s25_1_inst(.A(in[0]), .X(out_notouch_[400]));
sky130_fd_sc_hd__clkdlybuf4s25_2 clkdlybuf4s25_2_inst(.A(in[0]), .X(out_notouch_[401]));
sky130_fd_sc_hd__clkdlybuf4s50_1 clkdlybuf4s50_1_inst(.A(in[0]), .X(out_notouch_[402]));
sky130_fd_sc_hd__clkdlybuf4s50_2 clkdlybuf4s50_2_inst(.A(in[0]), .X(out_notouch_[403]));

// clock gating (latches for the clock tree)
/////////////////////////////////////////////
sky130_fd_sc_hd__dlclkp_1 dlclkp_1_inst(.CLK(in[0]), .GATE(in[1]), .GCLK(out_notouch_[404]));
sky130_fd_sc_hd__dlclkp_2 dlclkp_2_inst(.CLK(in[0]), .GATE(in[1]), .GCLK(out_notouch_[405]));
sky130_fd_sc_hd__dlclkp_4 dlclkp_4_inst(.CLK(in[0]), .GATE(in[1]), .GCLK(out_notouch_[406]));
sky130_fd_sc_hd__sdlclkp_1 sdlclkp_1_inst(.CLK(in[0]), .GATE(in[1]), .SCE(in[2]), .GCLK(out_notouch_[407]));
sky130_fd_sc_hd__sdlclkp_2 sdlclkp_2_inst(.CLK(in[0]), .GATE(in[1]), .SCE(in[2]), .GCLK(out_notouch_[408]));
sky130_fd_sc_hd__sdlclkp_4 sdlclkp_4_inst(.CLK(in[0]), .GATE(in[1]), .SCE(in[2]), .GCLK(out_notouch_[409]));

// power gating (cells for putting part of the circuit in sleep mode)
//////////////////////////////////////////////////////////////////////
sky130_fd_sc_hd__lpflow_inputiso0p_1 lpflow_inputiso0p_1_inst(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[410]));
sky130_fd_sc_hd__lpflow_inputiso0n_1 lpflow_inputiso0n_1_inst(.A(in[0]), .SLEEP_B(in[1]), .X(out_notouch_[411]));
sky130_fd_sc_hd__lpflow_inputiso1p_1 lpflow_inputiso1p_1_inst(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[412]));
sky130_fd_sc_hd__lpflow_inputiso1n_1 lpflow_inputiso1n_1_inst(.A(in[0]), .SLEEP_B(in[1]), .X(out_notouch_[413]));
sky130_fd_sc_hd__lpflow_inputisolatch_1 lpflow_inputisolatch_1_inst(.D(in[0]), .SLEEP_B(in[1]), .Q(out_notouch_[414]));
sky130_fd_sc_hd__lpflow_isobufsrc_1 lpflow_isobufsrc_1_inst(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[415]));
sky130_fd_sc_hd__lpflow_isobufsrc_2 lpflow_isobufsrc_2_inst(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[416]));
sky130_fd_sc_hd__lpflow_isobufsrc_4 lpflow_isobufsrc_4_inst(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[417]));
sky130_fd_sc_hd__lpflow_isobufsrc_8 lpflow_isobufsrc_8_inst(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[418]));
sky130_fd_sc_hd__lpflow_isobufsrc_16 lpflow_isobufsrc_16_inst(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[419]));

// cells to be kept alive in sleep mode (using a secondary power rail)
///////////////////////////////////////////////////////////////////////
//sky130_fd_sc_hd__lpflow_isobufsrckapwr_16 lpflow_isobufsrckapwr_16_inst(.A(in[0]), .SLEEP(in[1]), .KAPWR(in[2]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkbufkapwr_1 lpflow_clkbufkapwr_1_inst(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkbufkapwr_2 lpflow_clkbufkapwr_2_inst(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkbufkapwr_4 lpflow_clkbufkapwr_4_inst(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkbufkapwr_8 lpflow_clkbufkapwr_8_inst(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkbufkapwr_16 lpflow_clkbufkapwr_16_inst(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkinvkapwr_1 lpflow_clkinvkapwr_1_inst(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkinvkapwr_2 lpflow_clkinvkapwr_2_inst(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkinvkapwr_4 lpflow_clkinvkapwr_4_inst(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkinvkapwr_8 lpflow_clkinvkapwr_8_inst(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_clkinvkapwr_16 lpflow_clkinvkapwr_16_inst(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[]));

// voltage & current probe points
//////////////////////////////////
//sky130_fd_sc_hd__probe_p_8 probe_p_8_inst(.A(in[0]), .X(out_notouch_[]));
//sky130_fd_sc_hd__probec_p_8 probec_p_8_inst(.A(in[0]), .X(out_notouch_[]));

// fill cells
//////////////
//sky130_fd_sc_hd__fill_1 fill_1_inst();
//sky130_fd_sc_hd__fill_2 fill_2_inst();
//sky130_fd_sc_hd__fill_4 fill_4_inst();
//sky130_fd_sc_hd__fill_8 fill_8_inst();

// fill cells with decoupling capacitors
/////////////////////////////////////////
//sky130_fd_sc_hd__decap_3 decap_3_inst();
//sky130_fd_sc_hd__decap_4 decap_4_inst();
//sky130_fd_sc_hd__decap_6 decap_6_inst();
//sky130_fd_sc_hd__decap_8 decap_8_inst();
//sky130_fd_sc_hd__decap_12 decap_12_inst();
//sky130_fd_sc_hd__lpflow_decapkapwr_3 lpflow_decapkapwr_3_inst(.KAPWR(in[0]));
//sky130_fd_sc_hd__lpflow_decapkapwr_4 lpflow_decapkapwr_4_inst(.KAPWR(in[0]));
//sky130_fd_sc_hd__lpflow_decapkapwr_6 lpflow_decapkapwr_6_inst(.KAPWR(in[0]));
//sky130_fd_sc_hd__lpflow_decapkapwr_8 lpflow_decapkapwr_8_inst(.KAPWR(in[0]));
//sky130_fd_sc_hd__lpflow_decapkapwr_12 lpflow_decapkapwr_12_inst(.KAPWR(in[0]));

// tap cells
/////////////
//sky130_fd_sc_hd__tap_1 tap_1_inst();
//sky130_fd_sc_hd__tap_2 tap_2_inst();
//sky130_fd_sc_hd__tapvgnd_1 tapvgnd_1_inst();
//sky130_fd_sc_hd__tapvgnd2_1 tapvgnd2_1_inst();
//sky130_fd_sc_hd__tapvpwrvgnd_1 tapvpwrvgnd_1_inst();

// level shift buffers
///////////////////////
//sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_1 lpflow_lsbuf_lh_hl_isowell_tap_1_inst(.A(in[0]), .VPWRIN(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_2 lpflow_lsbuf_lh_hl_isowell_tap_2_inst(.A(in[0]), .VPWRIN(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_4 lpflow_lsbuf_lh_hl_isowell_tap_4_inst(.A(in[0]), .VPWRIN(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_4 lpflow_lsbuf_lh_isowell_4_inst(.A(in[0]), .LOWLX(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_1 lpflow_lsbuf_lh_isowell_tap_1_inst(.A(in[0]), .LOWLX(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_2 lpflow_lsbuf_lh_isowell_tap_2_inst(.A(in[0]), .LOWLX(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_4 lpflow_lsbuf_lh_isowell_tap_4_inst(.A(in[0]), .LOWLX(out_notouch_[]));

// current bleeder for sleep mode
//////////////////////////////////
//sky130_fd_sc_hd__lpflow_bleeder_1 lpflow_bleeder_1_inst(SHORT);

// antenna tie-down diode
//////////////////////////
//sky130_fd_sc_hd__diode_2 diode_2_inst(.DIODE(in[0]));

// spare cell (for last minute metal-layer only revisions)
///////////////////////////////////////////////////////////
//sky130_fd_sc_hd__macro_sparecell macro_sparecell_inst(.LO(out_notouch_[]));

endmodule

