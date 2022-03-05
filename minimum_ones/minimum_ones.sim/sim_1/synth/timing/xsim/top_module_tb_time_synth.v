// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Feb 25 16:52:41 2022
// Host        : desktop running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/dimitris/di_vhdl/minimum_ones/minimum_ones.sim/sim_1/synth/timing/xsim/top_module_tb_time_synth.v
// Design      : top_module
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module latch
   (D,
    Q,
    E,
    \Q_reg[0]_0 ,
    \tmp0_reg[0] ,
    tmp017_out,
    \tmp0_reg[0]_0 ,
    \tmp0_reg[1] ,
    \tmp0_reg[2] ,
    \tmp0_reg[3] ,
    tmp013_out,
    tmp00,
    \tmp0_reg[0]_1 ,
    \tmp0[3]_i_3_0 ,
    SR,
    \Q_reg[3]_0 ,
    CLK);
  output [3:0]D;
  output [3:0]Q;
  output [0:0]E;
  output \Q_reg[0]_0 ;
  input [3:0]\tmp0_reg[0] ;
  input tmp017_out;
  input \tmp0_reg[0]_0 ;
  input \tmp0_reg[1] ;
  input \tmp0_reg[2] ;
  input \tmp0_reg[3] ;
  input tmp013_out;
  input tmp00;
  input [3:0]\tmp0_reg[0]_1 ;
  input [3:0]\tmp0[3]_i_3_0 ;
  input [0:0]SR;
  input [3:0]\Q_reg[3]_0 ;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \Q_reg[0]_0 ;
  wire [3:0]\Q_reg[3]_0 ;
  wire [0:0]SR;
  wire tmp00;
  wire tmp0110_out;
  wire tmp013_out;
  wire tmp017_out;
  wire tmp025_in;
  wire [3:0]\tmp0[3]_i_3_0 ;
  wire \tmp0[3]_i_8_n_0 ;
  wire \tmp0[3]_i_9_n_0 ;
  wire [3:0]\tmp0_reg[0] ;
  wire \tmp0_reg[0]_0 ;
  wire [3:0]\tmp0_reg[0]_1 ;
  wire \tmp0_reg[1] ;
  wire \tmp0_reg[2] ;
  wire \tmp0_reg[3] ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q_reg[3]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q_reg[3]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q_reg[3]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q_reg[3]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp0[0]_i_1 
       (.I0(Q[0]),
        .I1(tmp0110_out),
        .I2(\tmp0_reg[0] [0]),
        .I3(tmp017_out),
        .I4(\tmp0_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp0[1]_i_1 
       (.I0(Q[1]),
        .I1(tmp0110_out),
        .I2(\tmp0_reg[0] [1]),
        .I3(tmp017_out),
        .I4(\tmp0_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp0[2]_i_1 
       (.I0(Q[2]),
        .I1(tmp0110_out),
        .I2(\tmp0_reg[0] [2]),
        .I3(tmp017_out),
        .I4(\tmp0_reg[2] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp0[3]_i_1 
       (.I0(tmp0110_out),
        .I1(tmp013_out),
        .I2(tmp00),
        .I3(tmp017_out),
        .O(E));
  LUT3 #(
    .INIT(8'hB2)) 
    \tmp0[3]_i_10 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[3]),
        .I2(\tmp0[3]_i_3_0 [3]),
        .O(tmp025_in));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_16 
       (.I0(Q[0]),
        .I1(\tmp0[3]_i_3_0 [0]),
        .I2(Q[1]),
        .I3(\tmp0[3]_i_3_0 [1]),
        .I4(Q[2]),
        .I5(\tmp0[3]_i_3_0 [2]),
        .O(\Q_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp0[3]_i_2 
       (.I0(Q[3]),
        .I1(tmp0110_out),
        .I2(\tmp0_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h80EE00E000000000)) 
    \tmp0[3]_i_3 
       (.I0(\tmp0_reg[0] [3]),
        .I1(\tmp0[3]_i_8_n_0 ),
        .I2(\tmp0[3]_i_9_n_0 ),
        .I3(Q[3]),
        .I4(\tmp0_reg[0]_1 [3]),
        .I5(tmp025_in),
        .O(tmp0110_out));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_8 
       (.I0(Q[0]),
        .I1(\tmp0_reg[0] [0]),
        .I2(Q[1]),
        .I3(\tmp0_reg[0] [1]),
        .I4(Q[2]),
        .I5(\tmp0_reg[0] [2]),
        .O(\tmp0[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_9 
       (.I0(Q[0]),
        .I1(\tmp0_reg[0]_1 [0]),
        .I2(Q[1]),
        .I3(\tmp0_reg[0]_1 [1]),
        .I4(Q[2]),
        .I5(\tmp0_reg[0]_1 [2]),
        .O(\tmp0[3]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "latch" *) 
module latch_0
   (tmp017_out,
    Q,
    \tmp0_reg[0] ,
    \tmp0_reg[0]_0 ,
    \tmp0_reg[0]_1 ,
    SR,
    D,
    CLK);
  output tmp017_out;
  output [3:0]Q;
  input [0:0]\tmp0_reg[0] ;
  input [3:0]\tmp0_reg[0]_0 ;
  input \tmp0_reg[0]_1 ;
  input [0:0]SR;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire tmp017_out;
  wire \tmp0[3]_i_15_n_0 ;
  wire [0:0]\tmp0_reg[0] ;
  wire [3:0]\tmp0_reg[0]_0 ;
  wire \tmp0_reg[0]_1 ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_15 
       (.I0(Q[0]),
        .I1(\tmp0_reg[0]_0 [0]),
        .I2(Q[1]),
        .I3(\tmp0_reg[0]_0 [1]),
        .I4(Q[2]),
        .I5(\tmp0_reg[0]_0 [2]),
        .O(\tmp0[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hD0440040)) 
    \tmp0[3]_i_6 
       (.I0(Q[3]),
        .I1(\tmp0[3]_i_15_n_0 ),
        .I2(\tmp0_reg[0] ),
        .I3(\tmp0_reg[0]_0 [3]),
        .I4(\tmp0_reg[0]_1 ),
        .O(tmp017_out));
endmodule

(* ORIG_REF_NAME = "latch" *) 
module latch_1
   (\Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[0]_0 ,
    \Q_reg[1]_0 ,
    \Q_reg[2]_0 ,
    tmp013_out,
    tmp017_out,
    Q,
    \tmp0_reg[3] ,
    \tmp0[3]_i_7_0 ,
    SR,
    D,
    CLK);
  output \Q_reg[3]_0 ;
  output [3:0]\Q_reg[3]_1 ;
  output \Q_reg[0]_0 ;
  output \Q_reg[1]_0 ;
  output \Q_reg[2]_0 ;
  output tmp013_out;
  input tmp017_out;
  input [3:0]Q;
  input [3:0]\tmp0_reg[3] ;
  input [3:0]\tmp0[3]_i_7_0 ;
  input [0:0]SR;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[3]_0 ;
  wire [3:0]\Q_reg[3]_1 ;
  wire [0:0]SR;
  wire tmp013_out;
  wire tmp017_out;
  wire \tmp0[3]_i_11_n_0 ;
  wire \tmp0[3]_i_12_n_0 ;
  wire \tmp0[3]_i_17_n_0 ;
  wire \tmp0[3]_i_18_n_0 ;
  wire [3:0]\tmp0[3]_i_7_0 ;
  wire [3:0]\tmp0_reg[3] ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\Q_reg[3]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\Q_reg[3]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\Q_reg[3]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\Q_reg[3]_1 [3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBAFBFFFF8A080000)) 
    \tmp0[0]_i_2 
       (.I0(\Q_reg[3]_1 [0]),
        .I1(Q[3]),
        .I2(\Q_reg[3]_1 [3]),
        .I3(\tmp0[3]_i_11_n_0 ),
        .I4(\tmp0[3]_i_12_n_0 ),
        .I5(\tmp0_reg[3] [0]),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBAFBFFFF8A080000)) 
    \tmp0[1]_i_2 
       (.I0(\Q_reg[3]_1 [1]),
        .I1(Q[3]),
        .I2(\Q_reg[3]_1 [3]),
        .I3(\tmp0[3]_i_11_n_0 ),
        .I4(\tmp0[3]_i_12_n_0 ),
        .I5(\tmp0_reg[3] [1]),
        .O(\Q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBAFBFFFF8A080000)) 
    \tmp0[2]_i_2 
       (.I0(\Q_reg[3]_1 [2]),
        .I1(Q[3]),
        .I2(\Q_reg[3]_1 [3]),
        .I3(\tmp0[3]_i_11_n_0 ),
        .I4(\tmp0[3]_i_12_n_0 ),
        .I5(\tmp0_reg[3] [2]),
        .O(\Q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_11 
       (.I0(\Q_reg[3]_1 [0]),
        .I1(Q[0]),
        .I2(\Q_reg[3]_1 [1]),
        .I3(Q[1]),
        .I4(\Q_reg[3]_1 [2]),
        .I5(Q[2]),
        .O(\tmp0[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80EE00E0)) 
    \tmp0[3]_i_12 
       (.I0(\tmp0_reg[3] [3]),
        .I1(\tmp0[3]_i_17_n_0 ),
        .I2(\tmp0[3]_i_7_0 [3]),
        .I3(\Q_reg[3]_1 [3]),
        .I4(\tmp0[3]_i_18_n_0 ),
        .O(\tmp0[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_17 
       (.I0(\Q_reg[3]_1 [0]),
        .I1(\tmp0_reg[3] [0]),
        .I2(\Q_reg[3]_1 [1]),
        .I3(\tmp0_reg[3] [1]),
        .I4(\Q_reg[3]_1 [2]),
        .I5(\tmp0_reg[3] [2]),
        .O(\tmp0[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_18 
       (.I0(\Q_reg[3]_1 [0]),
        .I1(\tmp0[3]_i_7_0 [0]),
        .I2(\Q_reg[3]_1 [1]),
        .I3(\tmp0[3]_i_7_0 [1]),
        .I4(\Q_reg[3]_1 [2]),
        .I5(\tmp0[3]_i_7_0 [2]),
        .O(\tmp0[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hB200)) 
    \tmp0[3]_i_4 
       (.I0(Q[3]),
        .I1(\Q_reg[3]_1 [3]),
        .I2(\tmp0[3]_i_11_n_0 ),
        .I3(\tmp0[3]_i_12_n_0 ),
        .O(tmp013_out));
  LUT6 #(
    .INIT(64'hD8D9DDDDC8888888)) 
    \tmp0[3]_i_7 
       (.I0(tmp017_out),
        .I1(Q[3]),
        .I2(\Q_reg[3]_1 [3]),
        .I3(\tmp0[3]_i_11_n_0 ),
        .I4(\tmp0[3]_i_12_n_0 ),
        .I5(\tmp0_reg[3] [3]),
        .O(\Q_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "latch" *) 
module latch_2
   (tmp00,
    \Q_reg[3]_0 ,
    Q,
    \tmp0[3]_i_5_0 ,
    \tmp0[3]_i_5_1 ,
    SR,
    D,
    CLK);
  output tmp00;
  output [3:0]\Q_reg[3]_0 ;
  input [3:0]Q;
  input [3:0]\tmp0[3]_i_5_0 ;
  input [3:0]\tmp0[3]_i_5_1 ;
  input [0:0]SR;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire [3:0]\Q_reg[3]_0 ;
  wire [0:0]SR;
  wire tmp00;
  wire \tmp0[3]_i_13_n_0 ;
  wire \tmp0[3]_i_14_n_0 ;
  wire \tmp0[3]_i_19_n_0 ;
  wire \tmp0[3]_i_20_n_0 ;
  wire [3:0]\tmp0[3]_i_5_0 ;
  wire [3:0]\tmp0[3]_i_5_1 ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\Q_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\Q_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\Q_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\Q_reg[3]_0 [3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_13 
       (.I0(\Q_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(\Q_reg[3]_0 [1]),
        .I3(Q[1]),
        .I4(\Q_reg[3]_0 [2]),
        .I5(Q[2]),
        .O(\tmp0[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h80EE00E0)) 
    \tmp0[3]_i_14 
       (.I0(\tmp0[3]_i_5_0 [3]),
        .I1(\tmp0[3]_i_19_n_0 ),
        .I2(\tmp0[3]_i_5_1 [3]),
        .I3(\Q_reg[3]_0 [3]),
        .I4(\tmp0[3]_i_20_n_0 ),
        .O(\tmp0[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_19 
       (.I0(\Q_reg[3]_0 [0]),
        .I1(\tmp0[3]_i_5_0 [0]),
        .I2(\Q_reg[3]_0 [1]),
        .I3(\tmp0[3]_i_5_0 [1]),
        .I4(\Q_reg[3]_0 [2]),
        .I5(\tmp0[3]_i_5_0 [2]),
        .O(\tmp0[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \tmp0[3]_i_20 
       (.I0(\Q_reg[3]_0 [0]),
        .I1(\tmp0[3]_i_5_1 [0]),
        .I2(\Q_reg[3]_0 [1]),
        .I3(\tmp0[3]_i_5_1 [1]),
        .I4(\Q_reg[3]_0 [2]),
        .I5(\tmp0[3]_i_5_1 [2]),
        .O(\tmp0[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hB200)) 
    \tmp0[3]_i_5 
       (.I0(Q[3]),
        .I1(\Q_reg[3]_0 [3]),
        .I2(\tmp0[3]_i_13_n_0 ),
        .I3(\tmp0[3]_i_14_n_0 ),
        .O(tmp00));
endmodule

(* WIDTH = "4" *) 
(* NotValidForBitStream *)
module top_module
   (clk,
    rst,
    data0,
    data1,
    data2,
    data3,
    min,
    ones);
  input clk;
  input rst;
  input [3:0]data0;
  input [3:0]data1;
  input [3:0]data2;
  input [3:0]data3;
  output [3:0]min;
  output [3:0]ones;

  wire L0_n_8;
  wire L0_n_9;
  wire L1_n_1;
  wire L1_n_2;
  wire L1_n_3;
  wire L1_n_4;
  wire L2_n_0;
  wire L2_n_1;
  wire L2_n_2;
  wire L2_n_3;
  wire L2_n_4;
  wire L2_n_5;
  wire L2_n_6;
  wire L2_n_7;
  wire L3_n_1;
  wire L3_n_2;
  wire L3_n_3;
  wire L3_n_4;
  wire [3:0]Q;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]data0;
  wire [3:0]data0_IBUF;
  wire [3:0]data1;
  wire [3:0]data1_IBUF;
  wire [3:0]data2;
  wire [3:0]data2_IBUF;
  wire [3:0]data3;
  wire [3:0]data3_IBUF;
  wire [3:0]min;
  wire [3:0]min_OBUF;
  wire [3:0]ones;
  wire [2:0]ones_OBUF;
  wire [3:0]p_1_in;
  wire rst;
  wire rst_IBUF;
  wire tmp00;
  wire tmp013_out;
  wire tmp017_out;

initial begin
 $sdf_annotate("top_module_tb_time_synth.sdf",,,,"tool_control");
end
  latch L0
       (.CLK(clk_IBUF_BUFG),
        .D(p_1_in),
        .E(L0_n_8),
        .Q(Q),
        .\Q_reg[0]_0 (L0_n_9),
        .\Q_reg[3]_0 (data0_IBUF),
        .SR(rst_IBUF),
        .tmp00(tmp00),
        .tmp013_out(tmp013_out),
        .tmp017_out(tmp017_out),
        .\tmp0[3]_i_3_0 ({L3_n_1,L3_n_2,L3_n_3,L3_n_4}),
        .\tmp0_reg[0] ({L1_n_1,L1_n_2,L1_n_3,L1_n_4}),
        .\tmp0_reg[0]_0 (L2_n_5),
        .\tmp0_reg[0]_1 ({L2_n_1,L2_n_2,L2_n_3,L2_n_4}),
        .\tmp0_reg[1] (L2_n_6),
        .\tmp0_reg[2] (L2_n_7),
        .\tmp0_reg[3] (L2_n_0));
  latch_0 L1
       (.CLK(clk_IBUF_BUFG),
        .D(data1_IBUF),
        .Q({L1_n_1,L1_n_2,L1_n_3,L1_n_4}),
        .SR(rst_IBUF),
        .tmp017_out(tmp017_out),
        .\tmp0_reg[0] (L3_n_1),
        .\tmp0_reg[0]_0 (Q),
        .\tmp0_reg[0]_1 (L0_n_9));
  latch_1 L2
       (.CLK(clk_IBUF_BUFG),
        .D(data2_IBUF),
        .Q({L1_n_1,L1_n_2,L1_n_3,L1_n_4}),
        .\Q_reg[0]_0 (L2_n_5),
        .\Q_reg[1]_0 (L2_n_6),
        .\Q_reg[2]_0 (L2_n_7),
        .\Q_reg[3]_0 (L2_n_0),
        .\Q_reg[3]_1 ({L2_n_1,L2_n_2,L2_n_3,L2_n_4}),
        .SR(rst_IBUF),
        .tmp013_out(tmp013_out),
        .tmp017_out(tmp017_out),
        .\tmp0[3]_i_7_0 (Q),
        .\tmp0_reg[3] ({L3_n_1,L3_n_2,L3_n_3,L3_n_4}));
  latch_2 L3
       (.CLK(clk_IBUF_BUFG),
        .D(data3_IBUF),
        .Q({L1_n_1,L1_n_2,L1_n_3,L1_n_4}),
        .\Q_reg[3]_0 ({L3_n_1,L3_n_2,L3_n_3,L3_n_4}),
        .SR(rst_IBUF),
        .tmp00(tmp00),
        .\tmp0[3]_i_5_0 (Q),
        .\tmp0[3]_i_5_1 ({L2_n_1,L2_n_2,L2_n_3,L2_n_4}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data0_IBUF[0]_inst 
       (.I(data0[0]),
        .O(data0_IBUF[0]));
  IBUF \data0_IBUF[1]_inst 
       (.I(data0[1]),
        .O(data0_IBUF[1]));
  IBUF \data0_IBUF[2]_inst 
       (.I(data0[2]),
        .O(data0_IBUF[2]));
  IBUF \data0_IBUF[3]_inst 
       (.I(data0[3]),
        .O(data0_IBUF[3]));
  IBUF \data1_IBUF[0]_inst 
       (.I(data1[0]),
        .O(data1_IBUF[0]));
  IBUF \data1_IBUF[1]_inst 
       (.I(data1[1]),
        .O(data1_IBUF[1]));
  IBUF \data1_IBUF[2]_inst 
       (.I(data1[2]),
        .O(data1_IBUF[2]));
  IBUF \data1_IBUF[3]_inst 
       (.I(data1[3]),
        .O(data1_IBUF[3]));
  IBUF \data2_IBUF[0]_inst 
       (.I(data2[0]),
        .O(data2_IBUF[0]));
  IBUF \data2_IBUF[1]_inst 
       (.I(data2[1]),
        .O(data2_IBUF[1]));
  IBUF \data2_IBUF[2]_inst 
       (.I(data2[2]),
        .O(data2_IBUF[2]));
  IBUF \data2_IBUF[3]_inst 
       (.I(data2[3]),
        .O(data2_IBUF[3]));
  IBUF \data3_IBUF[0]_inst 
       (.I(data3[0]),
        .O(data3_IBUF[0]));
  IBUF \data3_IBUF[1]_inst 
       (.I(data3[1]),
        .O(data3_IBUF[1]));
  IBUF \data3_IBUF[2]_inst 
       (.I(data3[2]),
        .O(data3_IBUF[2]));
  IBUF \data3_IBUF[3]_inst 
       (.I(data3[3]),
        .O(data3_IBUF[3]));
  OBUF \min_OBUF[0]_inst 
       (.I(min_OBUF[0]),
        .O(min[0]));
  OBUF \min_OBUF[1]_inst 
       (.I(min_OBUF[1]),
        .O(min[1]));
  OBUF \min_OBUF[2]_inst 
       (.I(min_OBUF[2]),
        .O(min[2]));
  OBUF \min_OBUF[3]_inst 
       (.I(min_OBUF[3]),
        .O(min[3]));
  OBUF \ones_OBUF[0]_inst 
       (.I(ones_OBUF[0]),
        .O(ones[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ones_OBUF[0]_inst_i_1 
       (.I0(min_OBUF[2]),
        .I1(min_OBUF[3]),
        .I2(min_OBUF[1]),
        .I3(min_OBUF[0]),
        .O(ones_OBUF[0]));
  OBUF \ones_OBUF[1]_inst 
       (.I(ones_OBUF[1]),
        .O(ones[1]));
  LUT4 #(
    .INIT(16'h7EE8)) 
    \ones_OBUF[1]_inst_i_1 
       (.I0(min_OBUF[0]),
        .I1(min_OBUF[1]),
        .I2(min_OBUF[3]),
        .I3(min_OBUF[2]),
        .O(ones_OBUF[1]));
  OBUF \ones_OBUF[2]_inst 
       (.I(ones_OBUF[2]),
        .O(ones[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ones_OBUF[2]_inst_i_1 
       (.I0(min_OBUF[3]),
        .I1(min_OBUF[2]),
        .I2(min_OBUF[0]),
        .I3(min_OBUF[1]),
        .O(ones_OBUF[2]));
  OBUF \ones_OBUF[3]_inst 
       (.I(1'b0),
        .O(ones[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(L0_n_8),
        .D(p_1_in[0]),
        .Q(min_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(L0_n_8),
        .D(p_1_in[1]),
        .Q(min_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(L0_n_8),
        .D(p_1_in[2]),
        .Q(min_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(L0_n_8),
        .D(p_1_in[3]),
        .Q(min_OBUF[3]),
        .R(1'b0));
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
