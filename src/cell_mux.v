`default_nettype none

module cell_mux (
    input [5:0] page,
    input [5:0] in,
    output [7:0] out
);

wire [370:0] cc_out_notouch_;

combined_cells cc_inst (
    .in(in),
    .out_notouch_(cc_out_notouch_)
);

assign out = cc_out_notouch_[8*page +: 8];

endmodule

