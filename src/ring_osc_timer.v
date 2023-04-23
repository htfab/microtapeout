`default_nettype none

`ifndef STROBE_BIT
    `define STROBE_BIT 34
`endif

module ring_osc_timer (
    input slow_clk,
    input enable,
    input signal,
    output [7:0] out
);
    
wire running;
wire [3:0] ring;
`ifdef RTL_TEST
    reg saved_signal;
    reg [`STROBE_BIT:0] counter;
    reg [`STROBE_BIT:0] counter_n;
    always @(signal, slow_clk) if(~slow_clk) saved_signal <= signal;
`else
    wire saved_signal;
    wire [`STROBE_BIT:0] counter;
    wire [`STROBE_BIT:0] counter_n;
    sky130_fd_sc_hd__dlxtn_1 sig_latch(.D(signal), .GATE_N(slow_clk), .Q(saved_signal));
`endif
sky130_fd_sc_hd__xnor2_1 sig_cmp(.A(signal), .B(saved_signal), .Y(running));
sky130_fd_sc_hd__nand2_1 ring_osc_0(.A(ring[0]), .B(enable), .Y(ring[1]));
sky130_fd_sc_hd__inv_1 ring_osc_1(.A(ring[1]), .Y(ring[2]));
sky130_fd_sc_hd__inv_1 ring_osc_2(.A(ring[2]), .Y(ring[3]));
`ifdef RTL_TEST
    assign #1 ring[0] = ring[3];
    always @(posedge ring[0], negedge ring[0]) begin
        counter[0] <= ring[0] & running;
        counter_n[0] <= ~(ring[0] & running);
    end
`else
    assign ring[0] = ring[3];
    sky130_fd_sc_hd__dlclkp_1 clock_gate(.CLK(ring[0]), .GATE(running), .GCLK(counter[0]));
    sky130_fd_sc_hd__inv_1 gclk_inv(.A(counter[0]), .Y(counter_n[0]));
`endif
generate genvar i;  
`ifdef RTL_TEST
for (i=1; i<=`STROBE_BIT; i=i+1) begin: gcount
    always @(posedge counter_n[i-1]) begin
        counter[i] <= ~counter[i];
        counter_n[i] <= counter[i];
        if (~slow_clk) begin
            counter[i] <= 0;
            counter_n[i] <= 1;
        end
    end
end
`else
for (i=1; i<=`STROBE_BIT; i=i+1) begin: gcount
    sky130_fd_sc_hd__dfrbp_1 div_flop(.CLK(counter_n[i-1]), .D(counter_n[i]), .RESET_B(slow_clk), .Q(counter[i]), .Q_N(counter_n[i]));
end
`endif
endgenerate

wire strobe = counter[`STROBE_BIT];
assign out = {saved_signal, strobe, counter[5:0]};

endmodule
