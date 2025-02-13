#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Feb 25 14:53:56 EET 2022
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim top_module_tb_behav -key {Behavioral:sim_1:Functional:top_module_tb} -tclbatch top_module_tb.tcl -view /home/dimitris/di_vhdl/minimum_ones/top_module_tb_behav.wcfg -log simulate.log"
xsim top_module_tb_behav -key {Behavioral:sim_1:Functional:top_module_tb} -tclbatch top_module_tb.tcl -view /home/dimitris/di_vhdl/minimum_ones/top_module_tb_behav.wcfg -log simulate.log

