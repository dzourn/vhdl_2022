// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Dec  2 14:49:25 2021
// Host        : desktop running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/dimitris/di_vhdl/project_1/project_1.sim/sim_1/synth/timing/xsim/DSD_Lab2_tb_w_time_synth.v
// Design      : DSD_Lab2
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module DSD_Lab2
   (data1_in,
    data2_in,
    data1_out,
    data2_out);
  input [1:0]data1_in;
  input [1:0]data2_in;
  output data1_out;
  output [1:0]data2_out;

  wire [1:0]data1_in;
  wire [1:0]data1_in_IBUF;
  wire data1_out;
  wire data1_out_OBUF;
  wire [1:0]data2_in;
  wire [1:0]data2_in_IBUF;
  wire [1:0]data2_out;
  wire [1:0]data2_out_OBUF;

initial begin
 $sdf_annotate("DSD_Lab2_tb_w_time_synth.sdf",,,,"tool_control");
end
  IBUF \data1_in_IBUF[0]_inst 
       (.I(data1_in[0]),
        .O(data1_in_IBUF[0]));
  IBUF \data1_in_IBUF[1]_inst 
       (.I(data1_in[1]),
        .O(data1_in_IBUF[1]));
  OBUF data1_out_OBUF_inst
       (.I(data1_out_OBUF),
        .O(data1_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    data1_out_OBUF_inst_i_1
       (.I0(data2_in_IBUF[1]),
        .I1(data2_in_IBUF[0]),
        .I2(data1_in_IBUF[1]),
        .I3(data1_in_IBUF[0]),
        .O(data1_out_OBUF));
  IBUF \data2_in_IBUF[0]_inst 
       (.I(data2_in[0]),
        .O(data2_in_IBUF[0]));
  IBUF \data2_in_IBUF[1]_inst 
       (.I(data2_in[1]),
        .O(data2_in_IBUF[1]));
  OBUF \data2_out_OBUF[0]_inst 
       (.I(data2_out_OBUF[0]),
        .O(data2_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \data2_out_OBUF[0]_inst_i_1 
       (.I0(data2_in_IBUF[0]),
        .I1(data1_in_IBUF[0]),
        .O(data2_out_OBUF[0]));
  OBUF \data2_out_OBUF[1]_inst 
       (.I(data2_out_OBUF[1]),
        .O(data2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data2_out_OBUF[1]_inst_i_1 
       (.I0(data2_in_IBUF[1]),
        .I1(data1_in_IBUF[1]),
        .O(data2_out_OBUF[1]));
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
