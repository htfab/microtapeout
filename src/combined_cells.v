`default_nettype none

module combined_cells (
    input [5:0] in,
    output [370:0] out_notouch_
);

// constants
/////////////
sky130_fd_sc_hd__conb_1 inst_conb_1(.HI(out_notouch_[0]), .LO(out_notouch_[1]));

// buffers & inverters
///////////////////////
wire inv_notouch_[1:0];
sky130_fd_sc_hd__buf_1 inst_buf_1(.A(in[0]), .X(out_notouch_[2]));
sky130_fd_sc_hd__buf_2 inst_buf_2(.A(in[0]), .X(out_notouch_[3]));
sky130_fd_sc_hd__buf_4 inst_buf_4(.A(in[0]), .X(out_notouch_[4]));
sky130_fd_sc_hd__buf_6 inst_buf_6(.A(in[0]), .X(out_notouch_[5]));
sky130_fd_sc_hd__buf_8 inst_buf_8(.A(in[0]), .X(out_notouch_[6]));
sky130_fd_sc_hd__buf_12 inst_buf_12(.A(in[0]), .X(out_notouch_[7]));
sky130_fd_sc_hd__buf_16 inst_buf_16(.A(in[0]), .X(out_notouch_[8]));
sky130_fd_sc_hd__bufbuf_8 inst_bufbuf_8(.A(in[0]), .X(out_notouch_[9]));
sky130_fd_sc_hd__bufbuf_16 inst_bufbuf_16(.A(in[0]), .X(out_notouch_[10]));
sky130_fd_sc_hd__inv_1 inst_inv_1(.A(in[0]), .Y(out_notouch_[11]));
sky130_fd_sc_hd__inv_2 inst_inv_2(.A(in[0]), .Y(out_notouch_[12]));
sky130_fd_sc_hd__inv_4 inst_inv_4(.A(in[0]), .Y(out_notouch_[13]));
sky130_fd_sc_hd__inv_6 inst_inv_6(.A(in[0]), .Y(out_notouch_[14]));
sky130_fd_sc_hd__inv_8 inst_inv_8(.A(in[0]), .Y(out_notouch_[15]));
sky130_fd_sc_hd__inv_12 inst_inv_12(.A(in[0]), .Y(inv_notouch_[0])); assign out_notouch_[16] = inv_notouch_[0];
sky130_fd_sc_hd__inv_16 inst_inv_16(.A(in[0]), .Y(inv_notouch_[1])); assign out_notouch_[17] = inv_notouch_[1];
sky130_fd_sc_hd__bufinv_8 inst_bufinv_8(.A(in[0]), .Y(out_notouch_[18]));
sky130_fd_sc_hd__bufinv_16 inst_bufinv_16(.A(in[0]), .Y(out_notouch_[19]));

// and & nand variants
///////////////////////
sky130_fd_sc_hd__and2_0 inst_and2_0(.A(in[0]), .B(in[1]), .X(out_notouch_[20]));
sky130_fd_sc_hd__and2_1 inst_and2_1(.A(in[0]), .B(in[1]), .X(out_notouch_[21]));
sky130_fd_sc_hd__and2_2 inst_and2_2(.A(in[0]), .B(in[1]), .X(out_notouch_[22]));
sky130_fd_sc_hd__and2_4 inst_and2_4(.A(in[0]), .B(in[1]), .X(out_notouch_[23]));
sky130_fd_sc_hd__and2b_1 inst_and2b_1(.A_N(in[0]), .B(in[1]), .X(out_notouch_[24]));
sky130_fd_sc_hd__and2b_2 inst_and2b_2(.A_N(in[0]), .B(in[1]), .X(out_notouch_[25]));
//sky130_fd_sc_hd__and2b_4 inst_and2b_4(.A_N(in[0]), .B(in[1]), .X(out_notouch_[]));
sky130_fd_sc_hd__and3_1 inst_and3_1(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[26]));
sky130_fd_sc_hd__and3_2 inst_and3_2(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[27]));
sky130_fd_sc_hd__and3_4 inst_and3_4(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[28]));
sky130_fd_sc_hd__and3b_1 inst_and3b_1(.A_N(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[29]));
sky130_fd_sc_hd__and3b_2 inst_and3b_2(.A_N(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[30]));
//sky130_fd_sc_hd__and3b_4 inst_and3b_4(.A_N(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[]));
sky130_fd_sc_hd__and4_1 inst_and4_1(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[31]));
sky130_fd_sc_hd__and4_2 inst_and4_2(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[32]));
sky130_fd_sc_hd__and4_4 inst_and4_4(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[33]));
sky130_fd_sc_hd__and4b_1 inst_and4b_1(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[34]));
sky130_fd_sc_hd__and4b_2 inst_and4b_2(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[35]));
//sky130_fd_sc_hd__and4b_4 inst_and4b_4(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__and4bb_1 inst_and4bb_1(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[36]));
sky130_fd_sc_hd__and4bb_2 inst_and4bb_2(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[37]));
//sky130_fd_sc_hd__and4bb_4 inst_and4bb_4(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__nand2_1 inst_nand2_1(.A(in[0]), .B(in[1]), .Y(out_notouch_[38]));
sky130_fd_sc_hd__nand2_2 inst_nand2_2(.A(in[0]), .B(in[1]), .Y(out_notouch_[39]));
sky130_fd_sc_hd__nand2_4 inst_nand2_4(.A(in[0]), .B(in[1]), .Y(out_notouch_[40]));
sky130_fd_sc_hd__nand2_8 inst_nand2_8(.A(in[0]), .B(in[1]), .Y(out_notouch_[41]));
sky130_fd_sc_hd__nand2b_1 inst_nand2b_1(.A_N(in[0]), .B(in[1]), .Y(out_notouch_[42]));
sky130_fd_sc_hd__nand2b_2 inst_nand2b_2(.A_N(in[0]), .B(in[1]), .Y(out_notouch_[43]));
//sky130_fd_sc_hd__nand2b_4 inst_nand2b_4(.A_N(in[0]), .B(in[1]), .Y(out_notouch_[]));
sky130_fd_sc_hd__nand3_1 inst_nand3_1(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[44]));
sky130_fd_sc_hd__nand3_2 inst_nand3_2(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[45]));
sky130_fd_sc_hd__nand3_4 inst_nand3_4(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[46]));
sky130_fd_sc_hd__nand3b_1 inst_nand3b_1(.A_N(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[47]));
sky130_fd_sc_hd__nand3b_2 inst_nand3b_2(.A_N(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[48]));
//sky130_fd_sc_hd__nand3b_4 inst_nand3b_4(.A_N(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[]));
sky130_fd_sc_hd__nand4_1 inst_nand4_1(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[49]));
sky130_fd_sc_hd__nand4_2 inst_nand4_2(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[50]));
sky130_fd_sc_hd__nand4_4 inst_nand4_4(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[51]));
sky130_fd_sc_hd__nand4b_1 inst_nand4b_1(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[52]));
sky130_fd_sc_hd__nand4b_2 inst_nand4b_2(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[53]));
//sky130_fd_sc_hd__nand4b_4 inst_nand4b_4(.A_N(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__nand4bb_1 inst_nand4bb_1(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[54]));
sky130_fd_sc_hd__nand4bb_2 inst_nand4bb_2(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[55]));
//sky130_fd_sc_hd__nand4bb_4 inst_nand4bb_4(.A_N(in[0]), .B_N(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[]));

// or & nor variants
/////////////////////
sky130_fd_sc_hd__or2_0 inst_or2_0(.A(in[0]), .B(in[1]), .X(out_notouch_[56]));
sky130_fd_sc_hd__or2_1 inst_or2_1(.A(in[0]), .B(in[1]), .X(out_notouch_[57]));
sky130_fd_sc_hd__or2_2 inst_or2_2(.A(in[0]), .B(in[1]), .X(out_notouch_[58]));
sky130_fd_sc_hd__or2_4 inst_or2_4(.A(in[0]), .B(in[1]), .X(out_notouch_[59]));
sky130_fd_sc_hd__or2b_1 inst_or2b_1(.A(in[0]), .B_N(in[1]), .X(out_notouch_[60]));
sky130_fd_sc_hd__or2b_2 inst_or2b_2(.A(in[0]), .B_N(in[1]), .X(out_notouch_[61]));
//sky130_fd_sc_hd__or2b_4 inst_or2b_4(.A(in[0]), .B_N(in[1]), .X(out_notouch_[]));
sky130_fd_sc_hd__or3_1 inst_or3_1(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[62]));
sky130_fd_sc_hd__or3_2 inst_or3_2(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[63]));
sky130_fd_sc_hd__or3_4 inst_or3_4(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[64]));
sky130_fd_sc_hd__or3b_1 inst_or3b_1(.A(in[0]), .B(in[1]), .C_N(in[2]), .X(out_notouch_[65]));
sky130_fd_sc_hd__or3b_2 inst_or3b_2(.A(in[0]), .B(in[1]), .C_N(in[2]), .X(out_notouch_[66]));
//sky130_fd_sc_hd__or3b_4 inst_or3b_4(.A(in[0]), .B(in[1]), .C_N(in[2]), .X(out_notouch_[]));
sky130_fd_sc_hd__or4_1 inst_or4_1(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[67]));
sky130_fd_sc_hd__or4_2 inst_or4_2(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[68]));
sky130_fd_sc_hd__or4_4 inst_or4_4(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .X(out_notouch_[69]));
sky130_fd_sc_hd__or4b_1 inst_or4b_1(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .X(out_notouch_[70]));
sky130_fd_sc_hd__or4b_2 inst_or4b_2(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .X(out_notouch_[71]));
//sky130_fd_sc_hd__or4b_4 inst_or4b_4(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__or4bb_1 inst_or4bb_1(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .X(out_notouch_[72]));
sky130_fd_sc_hd__or4bb_2 inst_or4bb_2(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .X(out_notouch_[73]));
//sky130_fd_sc_hd__or4bb_4 inst_or4bb_4(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__nor2_1 inst_nor2_1(.A(in[0]), .B(in[1]), .Y(out_notouch_[74]));
sky130_fd_sc_hd__nor2_2 inst_nor2_2(.A(in[0]), .B(in[1]), .Y(out_notouch_[75]));
sky130_fd_sc_hd__nor2_4 inst_nor2_4(.A(in[0]), .B(in[1]), .Y(out_notouch_[76]));
sky130_fd_sc_hd__nor2_8 inst_nor2_8(.A(in[0]), .B(in[1]), .Y(out_notouch_[77]));
sky130_fd_sc_hd__nor2b_1 inst_nor2b_1(.A(in[0]), .B_N(in[1]), .Y(out_notouch_[78]));
sky130_fd_sc_hd__nor2b_2 inst_nor2b_2(.A(in[0]), .B_N(in[1]), .Y(out_notouch_[79]));
//sky130_fd_sc_hd__nor2b_4 inst_nor2b_4(.A(in[0]), .B_N(in[1]), .Y(out_notouch_[]));
sky130_fd_sc_hd__nor3_1 inst_nor3_1(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[80]));
sky130_fd_sc_hd__nor3_2 inst_nor3_2(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[81]));
sky130_fd_sc_hd__nor3_4 inst_nor3_4(.A(in[0]), .B(in[1]), .C(in[2]), .Y(out_notouch_[82]));
sky130_fd_sc_hd__nor3b_1 inst_nor3b_1(.A(in[0]), .B(in[1]), .C_N(in[2]), .Y(out_notouch_[83]));
sky130_fd_sc_hd__nor3b_2 inst_nor3b_2(.A(in[0]), .B(in[1]), .C_N(in[2]), .Y(out_notouch_[84]));
//sky130_fd_sc_hd__nor3b_4 inst_nor3b_4(.A(in[0]), .B(in[1]), .C_N(in[2]), .Y(out_notouch_[]));
sky130_fd_sc_hd__nor4_1 inst_nor4_1(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[85]));
sky130_fd_sc_hd__nor4_2 inst_nor4_2(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[86]));
sky130_fd_sc_hd__nor4_4 inst_nor4_4(.A(in[0]), .B(in[1]), .C(in[2]), .D(in[3]), .Y(out_notouch_[87]));
sky130_fd_sc_hd__nor4b_1 inst_nor4b_1(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .Y(out_notouch_[88]));
sky130_fd_sc_hd__nor4b_2 inst_nor4b_2(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .Y(out_notouch_[89]));
//sky130_fd_sc_hd__nor4b_4 inst_nor4b_4(.A(in[0]), .B(in[1]), .C(in[2]), .D_N(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__nor4bb_1 inst_nor4bb_1(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .Y(out_notouch_[90]));
sky130_fd_sc_hd__nor4bb_2 inst_nor4bb_2(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .Y(out_notouch_[91]));
//sky130_fd_sc_hd__nor4bb_4 inst_nor4bb_4(.A(in[0]), .B(in[1]), .C_N(in[2]), .D_N(in[3]), .Y(out_notouch_[]));

// xor & xnor variants
///////////////////////
sky130_fd_sc_hd__xor2_1 inst_xor2_1(.A(in[0]), .B(in[1]), .X(out_notouch_[92]));
sky130_fd_sc_hd__xor2_2 inst_xor2_2(.A(in[0]), .B(in[1]), .X(out_notouch_[93]));
sky130_fd_sc_hd__xor2_4 inst_xor2_4(.A(in[0]), .B(in[1]), .X(out_notouch_[94]));
sky130_fd_sc_hd__xor3_1 inst_xor3_1(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[95]));
sky130_fd_sc_hd__xor3_2 inst_xor3_2(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[96]));
sky130_fd_sc_hd__xor3_4 inst_xor3_4(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[97]));
sky130_fd_sc_hd__xnor2_1 inst_xnor2_1(.A(in[0]), .B(in[1]), .Y(out_notouch_[98]));
sky130_fd_sc_hd__xnor2_2 inst_xnor2_2(.A(in[0]), .B(in[1]), .Y(out_notouch_[99]));
sky130_fd_sc_hd__xnor2_4 inst_xnor2_4(.A(in[0]), .B(in[1]), .Y(out_notouch_[100]));
sky130_fd_sc_hd__xnor3_1 inst_xnor3_1(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[101]));
sky130_fd_sc_hd__xnor3_2 inst_xnor3_2(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[102]));
sky130_fd_sc_hd__xnor3_4 inst_xnor3_4(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[103]));

// and-into-or variants
////////////////////////
sky130_fd_sc_hd__a2111o_1 inst_a2111o_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[104]));
sky130_fd_sc_hd__a2111o_2 inst_a2111o_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[105]));
//sky130_fd_sc_hd__a2111o_4 inst_a2111o_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__a2111oi_0 inst_a2111oi_0(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[106]));
sky130_fd_sc_hd__a2111oi_1 inst_a2111oi_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[107]));
//sky130_fd_sc_hd__a2111oi_2 inst_a2111oi_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[]));
//sky130_fd_sc_hd__a2111oi_4 inst_a2111oi_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a211o_1 inst_a211o_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[108]));
sky130_fd_sc_hd__a211o_2 inst_a211o_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[109]));
//sky130_fd_sc_hd__a211o_4 inst_a211o_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__a211oi_1 inst_a211oi_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[110]));
sky130_fd_sc_hd__a211oi_2 inst_a211oi_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[111]));
//sky130_fd_sc_hd__a211oi_4 inst_a211oi_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a21bo_1 inst_a21bo_1(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[112]));
sky130_fd_sc_hd__a21bo_2 inst_a21bo_2(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[113]));
//sky130_fd_sc_hd__a21bo_4 inst_a21bo_4(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[]));
sky130_fd_sc_hd__a21boi_0 inst_a21boi_0(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[114]));
sky130_fd_sc_hd__a21boi_1 inst_a21boi_1(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[115]));
//sky130_fd_sc_hd__a21boi_2 inst_a21boi_2(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[]));
//sky130_fd_sc_hd__a21boi_4 inst_a21boi_4(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a21o_1 inst_a21o_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[116]));
sky130_fd_sc_hd__a21o_2 inst_a21o_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[117]));
//sky130_fd_sc_hd__a21o_4 inst_a21o_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[]));
sky130_fd_sc_hd__a21oi_1 inst_a21oi_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[118]));
sky130_fd_sc_hd__a21oi_2 inst_a21oi_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[119]));
//sky130_fd_sc_hd__a21oi_4 inst_a21oi_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a221o_1 inst_a221o_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[120]));
sky130_fd_sc_hd__a221o_2 inst_a221o_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[121]));
//sky130_fd_sc_hd__a221o_4 inst_a221o_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__a221oi_1 inst_a221oi_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[122]));
sky130_fd_sc_hd__a221oi_2 inst_a221oi_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[123]));
//sky130_fd_sc_hd__a221oi_4 inst_a221oi_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a222oi_1 inst_a222oi_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .C2(in[5]), .Y(out_notouch_[124]));
sky130_fd_sc_hd__a22o_1 inst_a22o_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[125]));
sky130_fd_sc_hd__a22o_2 inst_a22o_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[126]));
//sky130_fd_sc_hd__a22o_4 inst_a22o_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__a22oi_1 inst_a22oi_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[127]));
sky130_fd_sc_hd__a22oi_2 inst_a22oi_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[128]));
//sky130_fd_sc_hd__a22oi_4 inst_a22oi_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a2bb2o_1 inst_a2bb2o_1(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[129]));
sky130_fd_sc_hd__a2bb2o_2 inst_a2bb2o_2(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[130]));
//sky130_fd_sc_hd__a2bb2o_4 inst_a2bb2o_4(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__a2bb2oi_1 inst_a2bb2oi_1(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[131]));
sky130_fd_sc_hd__a2bb2oi_2 inst_a2bb2oi_2(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[132]));
//sky130_fd_sc_hd__a2bb2oi_4 inst_a2bb2oi_4(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a311o_1 inst_a311o_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[133]));
sky130_fd_sc_hd__a311o_2 inst_a311o_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[134]));
//sky130_fd_sc_hd__a311o_4 inst_a311o_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__a311oi_1 inst_a311oi_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[135]));
sky130_fd_sc_hd__a311oi_2 inst_a311oi_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[136]));
//sky130_fd_sc_hd__a311oi_4 inst_a311oi_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a31o_1 inst_a31o_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[137]));
sky130_fd_sc_hd__a31o_2 inst_a31o_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[138]));
//sky130_fd_sc_hd__a31o_4 inst_a31o_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__a31oi_1 inst_a31oi_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[139]));
sky130_fd_sc_hd__a31oi_2 inst_a31oi_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[140]));
//sky130_fd_sc_hd__a31oi_4 inst_a31oi_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a32o_1 inst_a32o_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[141]));
sky130_fd_sc_hd__a32o_2 inst_a32o_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[142]));
//sky130_fd_sc_hd__a32o_4 inst_a32o_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__a32oi_1 inst_a32oi_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[143]));
sky130_fd_sc_hd__a32oi_2 inst_a32oi_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[144]));
//sky130_fd_sc_hd__a32oi_4 inst_a32oi_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__a41o_1 inst_a41o_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[145]));
sky130_fd_sc_hd__a41o_2 inst_a41o_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[146]));
//sky130_fd_sc_hd__a41o_4 inst_a41o_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__a41oi_1 inst_a41oi_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[147]));
sky130_fd_sc_hd__a41oi_2 inst_a41oi_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[148]));
//sky130_fd_sc_hd__a41oi_4 inst_a41oi_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[]));

// or-into-and variants
////////////////////////
sky130_fd_sc_hd__o2111a_1 inst_o2111a_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[149]));
sky130_fd_sc_hd__o2111a_2 inst_o2111a_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[150]));
//sky130_fd_sc_hd__o2111a_4 inst_o2111a_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__o2111ai_1 inst_o2111ai_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[151]));
sky130_fd_sc_hd__o2111ai_2 inst_o2111ai_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[152]));
//sky130_fd_sc_hd__o2111ai_4 inst_o2111ai_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .D1(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o211a_1 inst_o211a_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[153]));
sky130_fd_sc_hd__o211a_2 inst_o211a_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[154]));
//sky130_fd_sc_hd__o211a_4 inst_o211a_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__o211ai_1 inst_o211ai_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[155]));
sky130_fd_sc_hd__o211ai_2 inst_o211ai_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[156]));
//sky130_fd_sc_hd__o211ai_4 inst_o211ai_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .C1(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o21a_1 inst_o21a_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[157]));
sky130_fd_sc_hd__o21a_2 inst_o21a_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[158]));
//sky130_fd_sc_hd__o21a_4 inst_o21a_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .X(out_notouch_[]));
sky130_fd_sc_hd__o21ai_0 inst_o21ai_0(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[159]));
sky130_fd_sc_hd__o21ai_1 inst_o21ai_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[160]));
//sky130_fd_sc_hd__o21ai_2 inst_o21ai_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[]));
//sky130_fd_sc_hd__o21ai_4 inst_o21ai_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o21ba_1 inst_o21ba_1(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[161]));
sky130_fd_sc_hd__o21ba_2 inst_o21ba_2(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[162]));
//sky130_fd_sc_hd__o21ba_4 inst_o21ba_4(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .X(out_notouch_[]));
sky130_fd_sc_hd__o21bai_1 inst_o21bai_1(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[163]));
sky130_fd_sc_hd__o21bai_2 inst_o21bai_2(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[164]));
//sky130_fd_sc_hd__o21bai_4 inst_o21bai_4(.A1(in[0]), .A2(in[1]), .B1_N(in[2]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o221a_1 inst_o221a_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[165]));
sky130_fd_sc_hd__o221a_2 inst_o221a_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[166]));
//sky130_fd_sc_hd__o221a_4 inst_o221a_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__o221ai_1 inst_o221ai_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[167]));
sky130_fd_sc_hd__o221ai_2 inst_o221ai_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[168]));
//sky130_fd_sc_hd__o221ai_4 inst_o221ai_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o22a_1 inst_o22a_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[169]));
sky130_fd_sc_hd__o22a_2 inst_o22a_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[170]));
//sky130_fd_sc_hd__o22a_4 inst_o22a_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__o22ai_1 inst_o22ai_1(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[171]));
sky130_fd_sc_hd__o22ai_2 inst_o22ai_2(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[172]));
//sky130_fd_sc_hd__o22ai_4 inst_o22ai_4(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o2bb2a_1 inst_o2bb2a_1(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[173]));
sky130_fd_sc_hd__o2bb2a_2 inst_o2bb2a_2(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[174]));
//sky130_fd_sc_hd__o2bb2a_4 inst_o2bb2a_4(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__o2bb2ai_1 inst_o2bb2ai_1(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[175]));
sky130_fd_sc_hd__o2bb2ai_2 inst_o2bb2ai_2(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[176]));
//sky130_fd_sc_hd__o2bb2ai_4 inst_o2bb2ai_4(.A1_N(in[0]), .A2_N(in[1]), .B1(in[2]), .B2(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o311a_1 inst_o311a_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[177]));
sky130_fd_sc_hd__o311a_2 inst_o311a_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[178]));
//sky130_fd_sc_hd__o311a_4 inst_o311a_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__o311ai_0 inst_o311ai_0(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[179]));
sky130_fd_sc_hd__o311ai_1 inst_o311ai_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[180]));
//sky130_fd_sc_hd__o311ai_2 inst_o311ai_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[]));
//sky130_fd_sc_hd__o311ai_4 inst_o311ai_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .C1(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o31a_1 inst_o31a_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[181]));
sky130_fd_sc_hd__o31a_2 inst_o31a_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[182]));
//sky130_fd_sc_hd__o31a_4 inst_o31a_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .X(out_notouch_[]));
sky130_fd_sc_hd__o31ai_1 inst_o31ai_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[183]));
sky130_fd_sc_hd__o31ai_2 inst_o31ai_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[184]));
//sky130_fd_sc_hd__o31ai_4 inst_o31ai_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o32a_1 inst_o32a_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[185]));
sky130_fd_sc_hd__o32a_2 inst_o32a_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[186]));
//sky130_fd_sc_hd__o32a_4 inst_o32a_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__o32ai_1 inst_o32ai_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[187]));
sky130_fd_sc_hd__o32ai_2 inst_o32ai_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[188]));
//sky130_fd_sc_hd__o32ai_4 inst_o32ai_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .Y(out_notouch_[]));
sky130_fd_sc_hd__o41a_1 inst_o41a_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[189]));
sky130_fd_sc_hd__o41a_2 inst_o41a_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[190]));
//sky130_fd_sc_hd__o41a_4 inst_o41a_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .X(out_notouch_[]));
sky130_fd_sc_hd__o41ai_1 inst_o41ai_1(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[191]));
sky130_fd_sc_hd__o41ai_2 inst_o41ai_2(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[192]));
//sky130_fd_sc_hd__o41ai_4 inst_o41ai_4(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .B1(in[4]), .Y(out_notouch_[]));

// other combinational cells (majority, multiplexors, adders)
//////////////////////////////////////////////////////////////
sky130_fd_sc_hd__maj3_1 inst_maj3_1(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[193]));
sky130_fd_sc_hd__maj3_2 inst_maj3_2(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[194]));
sky130_fd_sc_hd__maj3_4 inst_maj3_4(.A(in[0]), .B(in[1]), .C(in[2]), .X(out_notouch_[195]));
sky130_fd_sc_hd__mux2_1 inst_mux2_1(.A0(in[0]), .A1(in[1]), .S(in[2]), .X(out_notouch_[196]));
sky130_fd_sc_hd__mux2_2 inst_mux2_2(.A0(in[0]), .A1(in[1]), .S(in[2]), .X(out_notouch_[197]));
sky130_fd_sc_hd__mux2_4 inst_mux2_4(.A0(in[0]), .A1(in[1]), .S(in[2]), .X(out_notouch_[198]));
sky130_fd_sc_hd__mux2_8 inst_mux2_8(.A0(in[0]), .A1(in[1]), .S(in[2]), .X(out_notouch_[199]));
sky130_fd_sc_hd__mux2i_1 inst_mux2i_1(.A0(in[0]), .A1(in[1]), .S(in[2]), .Y(out_notouch_[200]));
sky130_fd_sc_hd__mux2i_2 inst_mux2i_2(.A0(in[0]), .A1(in[1]), .S(in[2]), .Y(out_notouch_[201]));
sky130_fd_sc_hd__mux2i_4 inst_mux2i_4(.A0(in[0]), .A1(in[1]), .S(in[2]), .Y(out_notouch_[202]));
sky130_fd_sc_hd__mux4_1 inst_mux4_1(.A0(in[0]), .A1(in[1]), .A2(in[2]), .A3(in[3]), .S0(in[4]), .S1(in[5]), .X(out_notouch_[203]));
sky130_fd_sc_hd__mux4_2 inst_mux4_2(.A0(in[0]), .A1(in[1]), .A2(in[2]), .A3(in[3]), .S0(in[4]), .S1(in[5]), .X(out_notouch_[204]));
sky130_fd_sc_hd__mux4_4 inst_mux4_4(.A0(in[0]), .A1(in[1]), .A2(in[2]), .A3(in[3]), .S0(in[4]), .S1(in[5]), .X(out_notouch_[205]));
sky130_fd_sc_hd__ha_1 inst_ha_1(.A(in[0]), .B(in[1]), .COUT(out_notouch_[206]), .SUM(out_notouch_[207]));
sky130_fd_sc_hd__ha_2 inst_ha_2(.A(in[0]), .B(in[1]), .COUT(out_notouch_[208]), .SUM(out_notouch_[209]));
sky130_fd_sc_hd__ha_4 inst_ha_4(.A(in[0]), .B(in[1]), .COUT(out_notouch_[210]), .SUM(out_notouch_[211]));
sky130_fd_sc_hd__fa_1 inst_fa_1(.A(in[0]), .B(in[1]), .CIN(in[2]), .COUT(out_notouch_[212]), .SUM(out_notouch_[213]));
sky130_fd_sc_hd__fa_2 inst_fa_2(.A(in[0]), .B(in[1]), .CIN(in[2]), .COUT(out_notouch_[214]), .SUM(out_notouch_[215]));
sky130_fd_sc_hd__fa_4 inst_fa_4(.A(in[0]), .B(in[1]), .CIN(in[2]), .COUT(out_notouch_[216]), .SUM(out_notouch_[217]));
sky130_fd_sc_hd__fah_1 inst_fah_1(.A(in[0]), .B(in[1]), .CI(in[2]), .COUT(out_notouch_[218]), .SUM(out_notouch_[219]));
sky130_fd_sc_hd__fahcin_1 inst_fahcin_1(.A(in[0]), .B(in[1]), .CIN(in[2]), .COUT(out_notouch_[220]), .SUM(out_notouch_[221]));
sky130_fd_sc_hd__fahcon_1 inst_fahcon_1(.A(in[0]), .B(in[1]), .CI(in[2]), .COUT_N(out_notouch_[222]), .SUM(out_notouch_[223]));

// latches
///////////
sky130_fd_sc_hd__dlxtp_1 inst_dlxtp_1(.D(in[0]), .GATE(in[1]), .Q(out_notouch_[224]));
sky130_fd_sc_hd__dlxtn_1 inst_dlxtn_1(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[225]));
sky130_fd_sc_hd__dlxtn_2 inst_dlxtn_2(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[226]));
sky130_fd_sc_hd__dlxtn_4 inst_dlxtn_4(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[227]));
sky130_fd_sc_hd__dlxbp_1 inst_dlxbp_1(.D(in[0]), .GATE(in[1]), .Q(out_notouch_[228]), .Q_N(out_notouch_[229]));
sky130_fd_sc_hd__dlxbn_1 inst_dlxbn_1(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[230]), .Q_N(out_notouch_[231]));
sky130_fd_sc_hd__dlxbn_2 inst_dlxbn_2(.D(in[0]), .GATE_N(in[1]), .Q(out_notouch_[232]), .Q_N(out_notouch_[233]));
sky130_fd_sc_hd__dlrtp_1 inst_dlrtp_1(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[234]));
sky130_fd_sc_hd__dlrtp_2 inst_dlrtp_2(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[235]));
sky130_fd_sc_hd__dlrtp_4 inst_dlrtp_4(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[236]));
sky130_fd_sc_hd__dlrtn_1 inst_dlrtn_1(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[237]));
sky130_fd_sc_hd__dlrtn_2 inst_dlrtn_2(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[238]));
sky130_fd_sc_hd__dlrtn_4 inst_dlrtn_4(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[239]));
sky130_fd_sc_hd__dlrbp_1 inst_dlrbp_1(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[240]), .Q_N(out_notouch_[241]));
sky130_fd_sc_hd__dlrbp_2 inst_dlrbp_2(.D(in[0]), .GATE(in[1]), .RESET_B(in[2]), .Q(out_notouch_[242]), .Q_N(out_notouch_[243]));
sky130_fd_sc_hd__dlrbn_1 inst_dlrbn_1(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[244]), .Q_N(out_notouch_[245]));
sky130_fd_sc_hd__dlrbn_2 inst_dlrbn_2(.D(in[0]), .GATE_N(in[1]), .RESET_B(in[2]), .Q(out_notouch_[246]), .Q_N(out_notouch_[247]));

// flops
/////////
sky130_fd_sc_hd__dfxtp_1 inst_dfxtp_1(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[248]));
sky130_fd_sc_hd__dfxtp_2 inst_dfxtp_2(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[249]));
sky130_fd_sc_hd__dfxtp_4 inst_dfxtp_4(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[250]));
sky130_fd_sc_hd__dfxbp_1 inst_dfxbp_1(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[251]), .Q_N(out_notouch_[252]));
sky130_fd_sc_hd__dfxbp_2 inst_dfxbp_2(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[253]), .Q_N(out_notouch_[254]));
sky130_fd_sc_hd__dfrtp_1 inst_dfrtp_1(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[255]));
sky130_fd_sc_hd__dfrtp_2 inst_dfrtp_2(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[256]));
sky130_fd_sc_hd__dfrtp_4 inst_dfrtp_4(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[257]));
sky130_fd_sc_hd__dfrtn_1 inst_dfrtn_1(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[258]));
sky130_fd_sc_hd__dfrbp_1 inst_dfrbp_1(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[259]), .Q_N(out_notouch_[260]));
sky130_fd_sc_hd__dfrbp_2 inst_dfrbp_2(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .Q(out_notouch_[261]), .Q_N(out_notouch_[262]));
sky130_fd_sc_hd__dfstp_1 inst_dfstp_1(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[263]));
sky130_fd_sc_hd__dfstp_2 inst_dfstp_2(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[264]));
sky130_fd_sc_hd__dfstp_4 inst_dfstp_4(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[265]));
sky130_fd_sc_hd__dfsbp_1 inst_dfsbp_1(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[266]), .Q_N(out_notouch_[267]));
sky130_fd_sc_hd__dfsbp_2 inst_dfsbp_2(.CLK(in[0]), .D(in[1]), .SET_B(in[2]), .Q(out_notouch_[268]), .Q_N(out_notouch_[269]));
sky130_fd_sc_hd__dfbbn_1 inst_dfbbn_1(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SET_B(in[3]), .Q(out_notouch_[270]), .Q_N(out_notouch_[271]));
sky130_fd_sc_hd__dfbbn_2 inst_dfbbn_2(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SET_B(in[3]), .Q(out_notouch_[272]), .Q_N(out_notouch_[273]));
sky130_fd_sc_hd__dfbbp_1 inst_dfbbp_1(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SET_B(in[3]), .Q(out_notouch_[274]), .Q_N(out_notouch_[275]));
sky130_fd_sc_hd__edfxtp_1 inst_edfxtp_1(.CLK(in[0]), .D(in[1]), .DE(in[2]), .Q(out_notouch_[276]));
sky130_fd_sc_hd__edfxbp_1 inst_edfxbp_1(.CLK(in[0]), .D(in[1]), .DE(in[2]), .Q(out_notouch_[277]), .Q_N(out_notouch_[278]));

// flops with scan chain
/////////////////////////
sky130_fd_sc_hd__sdfxtp_1 inst_sdfxtp_1(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[279]));
sky130_fd_sc_hd__sdfxtp_2 inst_sdfxtp_2(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[280]));
sky130_fd_sc_hd__sdfxtp_4 inst_sdfxtp_4(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[281]));
sky130_fd_sc_hd__sdfxbp_1 inst_sdfxbp_1(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[282]), .Q_N(out_notouch_[283]));
sky130_fd_sc_hd__sdfxbp_2 inst_sdfxbp_2(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .Q(out_notouch_[284]), .Q_N(out_notouch_[285]));
sky130_fd_sc_hd__sdfrtp_1 inst_sdfrtp_1(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[286]));
sky130_fd_sc_hd__sdfrtp_2 inst_sdfrtp_2(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[287]));
sky130_fd_sc_hd__sdfrtp_4 inst_sdfrtp_4(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[288]));
sky130_fd_sc_hd__sdfrtn_1 inst_sdfrtn_1(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[289]));
sky130_fd_sc_hd__sdfrbp_1 inst_sdfrbp_1(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[290]), .Q_N(out_notouch_[291]));
sky130_fd_sc_hd__sdfrbp_2 inst_sdfrbp_2(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[292]), .Q_N(out_notouch_[293]));
sky130_fd_sc_hd__sdfstp_1 inst_sdfstp_1(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[294]));
sky130_fd_sc_hd__sdfstp_2 inst_sdfstp_2(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[295]));
sky130_fd_sc_hd__sdfstp_4 inst_sdfstp_4(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[296]));
sky130_fd_sc_hd__sdfsbp_1 inst_sdfsbp_1(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[297]), .Q_N(out_notouch_[298]));
sky130_fd_sc_hd__sdfsbp_2 inst_sdfsbp_2(.CLK(in[0]), .D(in[1]), .SCD(in[2]), .SCE(in[3]), .SET_B(in[4]), .Q(out_notouch_[299]), .Q_N(out_notouch_[300]));
sky130_fd_sc_hd__sdfbbn_1 inst_sdfbbn_1(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .SET_B(in[5]), .Q(out_notouch_[301]), .Q_N(out_notouch_[302]));
sky130_fd_sc_hd__sdfbbn_2 inst_sdfbbn_2(.CLK_N(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .SET_B(in[5]), .Q(out_notouch_[303]), .Q_N(out_notouch_[304]));
sky130_fd_sc_hd__sdfbbp_1 inst_sdfbbp_1(.CLK(in[0]), .D(in[1]), .RESET_B(in[2]), .SCD(in[3]), .SCE(in[4]), .SET_B(in[5]), .Q(out_notouch_[305]), .Q_N(out_notouch_[306]));
sky130_fd_sc_hd__sedfxtp_1 inst_sedfxtp_1(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[307]));
sky130_fd_sc_hd__sedfxtp_2 inst_sedfxtp_2(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[308]));
sky130_fd_sc_hd__sedfxtp_4 inst_sedfxtp_4(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[309]));
sky130_fd_sc_hd__sedfxbp_1 inst_sedfxbp_1(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[310]), .Q_N(out_notouch_[311]));
sky130_fd_sc_hd__sedfxbp_2 inst_sedfxbp_2(.CLK(in[0]), .D(in[1]), .DE(in[2]), .SCD(in[3]), .SCE(in[4]), .Q(out_notouch_[312]), .Q_N(out_notouch_[313]));

// tri-state buffers
/////////////////////
wire [6:0] tri_notouch_;
sky130_fd_sc_hd__ebufn_1 inst_ebufn_1(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[0]));
sky130_fd_sc_hd__ebufn_2 inst_ebufn_2(.A(in[1]), .TE_B(inv_notouch_[0]), .Z(tri_notouch_[0])); assign out_notouch_[314] = tri_notouch_[0];
sky130_fd_sc_hd__ebufn_4 inst_ebufn_4(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[1]));
sky130_fd_sc_hd__ebufn_8 inst_ebufn_8(.A(in[1]), .TE_B(inv_notouch_[1]), .Z(tri_notouch_[1])); assign out_notouch_[315] = tri_notouch_[1];
sky130_fd_sc_hd__einvn_0 inst_einvn_0(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[2]));
sky130_fd_sc_hd__einvp_1 dupl_einvp_1(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[2])); assign out_notouch_[316] = tri_notouch_[2];
sky130_fd_sc_hd__einvn_1 inst_einvn_1(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[3]));
sky130_fd_sc_hd__einvp_1 inst_einvp_1(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[3])); assign out_notouch_[317] = tri_notouch_[3];
sky130_fd_sc_hd__einvn_2 inst_einvn_2(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[4]));
sky130_fd_sc_hd__einvp_2 inst_einvp_2(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[4])); assign out_notouch_[318] = tri_notouch_[4];
sky130_fd_sc_hd__einvn_4 inst_einvn_4(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[5]));
sky130_fd_sc_hd__einvp_4 inst_einvp_4(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[5])); assign out_notouch_[319] = tri_notouch_[5];
sky130_fd_sc_hd__einvn_8 inst_einvn_8(.A(in[1]), .TE_B(in[0]), .Z(tri_notouch_[6]));
sky130_fd_sc_hd__einvp_8 inst_einvp_8(.A(in[1]), .TE(in[0]), .Z(tri_notouch_[6])); assign out_notouch_[320] = tri_notouch_[6];

// delay buffers
/////////////////
sky130_fd_sc_hd__dlygate4sd1_1 inst_dlygate4sd1_1(.A(in[0]), .X(out_notouch_[321]));
sky130_fd_sc_hd__dlygate4sd2_1 inst_dlygate4sd2_1(.A(in[0]), .X(out_notouch_[322]));
sky130_fd_sc_hd__dlygate4sd3_1 inst_dlygate4sd3_1(.A(in[0]), .X(out_notouch_[323]));
sky130_fd_sc_hd__dlymetal6s2s_1 inst_dlymetal6s2s_1(.A(in[0]), .X(out_notouch_[324]));
sky130_fd_sc_hd__dlymetal6s4s_1 inst_dlymetal6s4s_1(.A(in[0]), .X(out_notouch_[325]));
sky130_fd_sc_hd__dlymetal6s6s_1 inst_dlymetal6s6s_1(.A(in[0]), .X(out_notouch_[326]));

// buffers, inverters and delay buffers for the clock tree
///////////////////////////////////////////////////////////
sky130_fd_sc_hd__clkbuf_1 inst_clkbuf_1(.A(in[0]), .X(out_notouch_[327]));
sky130_fd_sc_hd__clkbuf_2 inst_clkbuf_2(.A(in[0]), .X(out_notouch_[328]));
sky130_fd_sc_hd__clkbuf_4 inst_clkbuf_4(.A(in[0]), .X(out_notouch_[329]));
sky130_fd_sc_hd__clkbuf_8 inst_clkbuf_8(.A(in[0]), .X(out_notouch_[330]));
sky130_fd_sc_hd__clkbuf_16 inst_clkbuf_16(.A(in[0]), .X(out_notouch_[331]));
sky130_fd_sc_hd__clkinv_1 inst_clkinv_1(.A(in[0]), .Y(out_notouch_[332]));
sky130_fd_sc_hd__clkinv_2 inst_clkinv_2(.A(in[0]), .Y(out_notouch_[333]));
sky130_fd_sc_hd__clkinv_4 inst_clkinv_4(.A(in[0]), .Y(out_notouch_[334]));
sky130_fd_sc_hd__clkinv_8 inst_clkinv_8(.A(in[0]), .Y(out_notouch_[335]));
sky130_fd_sc_hd__clkinv_16 inst_clkinv_16(.A(in[0]), .Y(out_notouch_[336]));
sky130_fd_sc_hd__clkinvlp_2 inst_clkinvlp_2(.A(in[0]), .Y(out_notouch_[337]));
sky130_fd_sc_hd__clkinvlp_4 inst_clkinvlp_4(.A(in[0]), .Y(out_notouch_[338]));
sky130_fd_sc_hd__clkdlybuf4s15_1 inst_clkdlybuf4s15_1(.A(in[0]), .X(out_notouch_[339]));
sky130_fd_sc_hd__clkdlybuf4s15_2 inst_clkdlybuf4s15_2(.A(in[0]), .X(out_notouch_[340]));
sky130_fd_sc_hd__clkdlybuf4s18_1 inst_clkdlybuf4s18_1(.A(in[0]), .X(out_notouch_[341]));
sky130_fd_sc_hd__clkdlybuf4s18_2 inst_clkdlybuf4s18_2(.A(in[0]), .X(out_notouch_[342]));
sky130_fd_sc_hd__clkdlybuf4s25_1 inst_clkdlybuf4s25_1(.A(in[0]), .X(out_notouch_[343]));
sky130_fd_sc_hd__clkdlybuf4s25_2 inst_clkdlybuf4s25_2(.A(in[0]), .X(out_notouch_[344]));
sky130_fd_sc_hd__clkdlybuf4s50_1 inst_clkdlybuf4s50_1(.A(in[0]), .X(out_notouch_[345]));
sky130_fd_sc_hd__clkdlybuf4s50_2 inst_clkdlybuf4s50_2(.A(in[0]), .X(out_notouch_[346]));

// clock gating (latches for the clock tree)
/////////////////////////////////////////////
sky130_fd_sc_hd__dlclkp_1 inst_dlclkp_1(.CLK(in[0]), .GATE(in[1]), .GCLK(out_notouch_[347]));
sky130_fd_sc_hd__dlclkp_2 inst_dlclkp_2(.CLK(in[0]), .GATE(in[1]), .GCLK(out_notouch_[348]));
sky130_fd_sc_hd__dlclkp_4 inst_dlclkp_4(.CLK(in[0]), .GATE(in[1]), .GCLK(out_notouch_[349]));
sky130_fd_sc_hd__sdlclkp_1 inst_sdlclkp_1(.CLK(in[0]), .GATE(in[1]), .SCE(in[2]), .GCLK(out_notouch_[350]));
sky130_fd_sc_hd__sdlclkp_2 inst_sdlclkp_2(.CLK(in[0]), .GATE(in[1]), .SCE(in[2]), .GCLK(out_notouch_[351]));
sky130_fd_sc_hd__sdlclkp_4 inst_sdlclkp_4(.CLK(in[0]), .GATE(in[1]), .SCE(in[2]), .GCLK(out_notouch_[352]));

// power gating (cells for putting part of the circuit in sleep mode)
//////////////////////////////////////////////////////////////////////
sky130_fd_sc_hd__lpflow_inputiso0p_1 inst_lpflow_inputiso0p_1(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[353]));
sky130_fd_sc_hd__lpflow_inputiso0n_1 inst_lpflow_inputiso0n_1(.A(in[0]), .SLEEP_B(in[1]), .X(out_notouch_[354]));
sky130_fd_sc_hd__lpflow_inputiso1p_1 inst_lpflow_inputiso1p_1(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[355]));
sky130_fd_sc_hd__lpflow_inputiso1n_1 inst_lpflow_inputiso1n_1(.A(in[0]), .SLEEP_B(in[1]), .X(out_notouch_[356]));
sky130_fd_sc_hd__lpflow_inputisolatch_1 inst_lpflow_inputisolatch_1(.D(in[0]), .SLEEP_B(in[1]), .Q(out_notouch_[357]));
sky130_fd_sc_hd__lpflow_isobufsrc_1 inst_lpflow_isobufsrc_1(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[358]));
sky130_fd_sc_hd__lpflow_isobufsrc_2 inst_lpflow_isobufsrc_2(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[359]));
sky130_fd_sc_hd__lpflow_isobufsrc_4 inst_lpflow_isobufsrc_4(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[360]));
sky130_fd_sc_hd__lpflow_isobufsrc_8 inst_lpflow_isobufsrc_8(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[361]));
//sky130_fd_sc_hd__lpflow_isobufsrc_16 inst_lpflow_isobufsrc_16(.A(in[0]), .SLEEP(in[1]), .X(out_notouch_[]));
sky130_fd_sc_hd__lpflow_isobufsrckapwr_16 inst_lpflow_isobufsrckapwr_16(.A(in[0]), .SLEEP(in[1]), .KAPWR(in[2]), .X(out_notouch_[362]));
sky130_fd_sc_hd__lpflow_clkbufkapwr_1 inst_lpflow_clkbufkapwr_1(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[363]));
sky130_fd_sc_hd__lpflow_clkbufkapwr_2 inst_lpflow_clkbufkapwr_2(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[364]));
sky130_fd_sc_hd__lpflow_clkbufkapwr_4 inst_lpflow_clkbufkapwr_4(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[365]));
sky130_fd_sc_hd__lpflow_clkbufkapwr_8 inst_lpflow_clkbufkapwr_8(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[366]));
//sky130_fd_sc_hd__lpflow_clkbufkapwr_16 inst_lpflow_clkbufkapwr_16(.A(in[0]), .KAPWR(in[1]), .X(out_notouch_[]));
sky130_fd_sc_hd__lpflow_clkinvkapwr_1 inst_lpflow_clkinvkapwr_1(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[367]));
sky130_fd_sc_hd__lpflow_clkinvkapwr_2 inst_lpflow_clkinvkapwr_2(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[368]));
sky130_fd_sc_hd__lpflow_clkinvkapwr_4 inst_lpflow_clkinvkapwr_4(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[369]));
sky130_fd_sc_hd__lpflow_clkinvkapwr_8 inst_lpflow_clkinvkapwr_8(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[370]));
//sky130_fd_sc_hd__lpflow_clkinvkapwr_16 inst_lpflow_clkinvkapwr_16(.A(in[0]), .KAPWR(in[1]), .Y(out_notouch_[]));

// voltage & current probe points
//sky130_fd_sc_hd__probe_p_8 inst_probe_p_8(.A(in[0]), .X(out_notouch_[]));
//sky130_fd_sc_hd__probec_p_8 inst_probec_p_8(.A(in[0]), .X(out_notouch_[]));

// fill cells
//sky130_fd_sc_hd__fill_1 inst_fill_1();
//sky130_fd_sc_hd__fill_2 inst_fill_2();
//sky130_fd_sc_hd__fill_4 inst_fill_4();
//sky130_fd_sc_hd__fill_8 inst_fill_8();

// fill cells with decoupling capacitors
//sky130_fd_sc_hd__decap_3 inst_decap_3();
//sky130_fd_sc_hd__decap_4 inst_decap_4();
//sky130_fd_sc_hd__decap_6 inst_decap_6();
//sky130_fd_sc_hd__decap_8 inst_decap_8();
//sky130_fd_sc_hd__decap_12 inst_decap_12();
//sky130_fd_sc_hd__lpflow_decapkapwr_3 inst_lpflow_decapkapwr_3(.KAPWR(in[0]));
//sky130_fd_sc_hd__lpflow_decapkapwr_4 inst_lpflow_decapkapwr_4(.KAPWR(in[0]));
//sky130_fd_sc_hd__lpflow_decapkapwr_6 inst_lpflow_decapkapwr_6(.KAPWR(in[0]));
//sky130_fd_sc_hd__lpflow_decapkapwr_8 inst_lpflow_decapkapwr_8(.KAPWR(in[0]));
//sky130_fd_sc_hd__lpflow_decapkapwr_12 inst_lpflow_decapkapwr_12(.KAPWR(in[0]));

// tap cells
//sky130_fd_sc_hd__tap_1 inst_tap_1();
//sky130_fd_sc_hd__tap_2 inst_tap_2();
//sky130_fd_sc_hd__tapvgnd_1 inst_tapvgnd_1();
//sky130_fd_sc_hd__tapvgnd2_1 inst_tapvgnd2_1();
//sky130_fd_sc_hd__tapvpwrvgnd_1 inst_tapvpwrvgnd_1();

// level shift buffers
//sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_1 inst_lpflow_lsbuf_lh_hl_isowell_tap_1(.A(in[0]), .VPWRIN(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_2 inst_lpflow_lsbuf_lh_hl_isowell_tap_2(.A(in[0]), .VPWRIN(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_4 inst_lpflow_lsbuf_lh_hl_isowell_tap_4(.A(in[0]), .VPWRIN(in[1]), .X(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_4 inst_lpflow_lsbuf_lh_isowell_4(.A(in[0]), .LOWLX(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_1 inst_lpflow_lsbuf_lh_isowell_tap_1(.A(in[0]), .LOWLX(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_2 inst_lpflow_lsbuf_lh_isowell_tap_2(.A(in[0]), .LOWLX(out_notouch_[]));
//sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_4 inst_lpflow_lsbuf_lh_isowell_tap_4(.A(in[0]), .LOWLX(out_notouch_[]));

// current bleeder for sleep mode
//sky130_fd_sc_hd__lpflow_bleeder_1 inst_lpflow_bleeder_1(SHORT);

// antenna tie-down diode
//sky130_fd_sc_hd__diode_2 inst_diode_2(.DIODE(in[0]));

// spare cell (for last minute metal-layer only revisions)
//sky130_fd_sc_hd__macro_sparecell inst_macro_sparecell(.LO(out_notouch_[]));

endmodule

