#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.4.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Feb 11 23:02:12 PST 2018
# SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xsim tb_behav -key {Behavioral:sim_1:Functional:tb} -tclbatch tb.tcl -log simulate.log
