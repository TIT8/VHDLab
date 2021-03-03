#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.3 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Wed Nov 27 10:38:57 CET 2019
# SW Build 2018833 on Wed Oct  4 19:58:07 MDT 2017
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
ExecStep xsim top_sim_mealy_behav -key {Behavioral:sim_1:Functional:top_sim_mealy} -tclbatch top_sim_mealy.tcl -view /home/fabio/VivadoSources/2017.3/Projects/Didattica/2019/EdgeDetector/top_sim_behav.wcfg -log simulate.log