// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Feb 24 20:33:07 2022
// Host        : desktop running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/dimitris/di_vhdl/counter/counter.sim/sim_1/synth/timing/xsim/counter_tb_time_synth.v
// Design      : counter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module counter
   (clk,
    sigin,
    sigout);
  input clk;
  input [3:0]sigin;
  output [2:0]sigout;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire p_0_in;
  wire [2:0]plusOp;
  wire [3:0]sigin;
  wire [3:0]sigin_IBUF;
  wire [2:0]sigout;
  wire [2:0]sigout_OBUF;
  wire \sigout_un[2]_i_1_n_0 ;

initial begin
 $sdf_annotate("counter_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \sigin_IBUF[0]_inst 
       (.I(sigin[0]),
        .O(sigin_IBUF[0]));
  IBUF \sigin_IBUF[1]_inst 
       (.I(sigin[1]),
        .O(sigin_IBUF[1]));
  IBUF \sigin_IBUF[2]_inst 
       (.I(sigin[2]),
        .O(sigin_IBUF[2]));
  IBUF \sigin_IBUF[3]_inst 
       (.I(sigin[3]),
        .O(sigin_IBUF[3]));
  OBUF \sigout_OBUF[0]_inst 
       (.I(sigout_OBUF[0]),
        .O(sigout[0]));
  OBUF \sigout_OBUF[1]_inst 
       (.I(sigout_OBUF[1]),
        .O(sigout[1]));
  OBUF \sigout_OBUF[2]_inst 
       (.I(sigout_OBUF[2]),
        .O(sigout[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \sigout_un[0]_i_1 
       (.I0(sigout_OBUF[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sigout_un[1]_i_1 
       (.I0(sigout_OBUF[0]),
        .I1(sigout_OBUF[1]),
        .O(plusOp[1]));
  LUT4 #(
    .INIT(16'h0040)) 
    \sigout_un[2]_i_1 
       (.I0(sigin_IBUF[1]),
        .I1(sigin_IBUF[0]),
        .I2(sigin_IBUF[2]),
        .I3(sigin_IBUF[3]),
        .O(\sigout_un[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sigout_un[2]_i_2 
       (.I0(sigout_OBUF[0]),
        .I1(sigout_OBUF[1]),
        .I2(sigout_OBUF[2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \sigout_un[2]_i_3 
       (.I0(sigout_OBUF[2]),
        .I1(sigout_OBUF[1]),
        .O(p_0_in));
  FDPE #(
    .INIT(1'b0)) 
    \sigout_un_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\sigout_un[2]_i_1_n_0 ),
        .D(plusOp[0]),
        .PRE(p_0_in),
        .Q(sigout_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sigout_un_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\sigout_un[2]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(plusOp[1]),
        .Q(sigout_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sigout_un_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\sigout_un[2]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(plusOp[2]),
        .Q(sigout_OBUF[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
