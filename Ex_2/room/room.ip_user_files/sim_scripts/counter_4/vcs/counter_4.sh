#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : counter_4.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Mon Oct 26 12:01:42 +0330 2020
# SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved. 
#
# usage: counter_4.sh [-help]
# usage: counter_4.sh [-lib_map_path]
# usage: counter_4.sh [-noclean_files]
# usage: counter_4.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'counter_4.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib util_vector_logic_v2_0_1)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "counter_4.sh - Script generated by export_simulation (Vivado v2019.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/counter_4/sim/counter_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work util_vector_logic_v2_0_1 $vlogan_opts +v2k \
    "$ref_dir/../../../../room.srcs/sources_1/bd/counter_4/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_33/sim/counter_4_util_vector_logic_0_33.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_30/sim/counter_4_util_vector_logic_2_30.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_34/sim/counter_4_util_vector_logic_0_34.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_31/sim/counter_4_util_vector_logic_2_31.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_0_1/sim/counter_4_not_0_1.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_35/sim/counter_4_util_vector_logic_0_35.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_32/sim/counter_4_util_vector_logic_2_32.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_36/sim/counter_4_util_vector_logic_0_36.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_33/sim/counter_4_util_vector_logic_2_33.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_37/sim/counter_4_util_vector_logic_0_37.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_34/sim/counter_4_util_vector_logic_2_34.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_38/sim/counter_4_util_vector_logic_0_38.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_35/sim/counter_4_util_vector_logic_2_35.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_39/sim/counter_4_util_vector_logic_0_39.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_36/sim/counter_4_util_vector_logic_2_36.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_40/sim/counter_4_util_vector_logic_0_40.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_37/sim/counter_4_util_vector_logic_2_37.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_1_1/sim/counter_4_not_1_1.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_41/sim/counter_4_util_vector_logic_0_41.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_42/sim/counter_4_util_vector_logic_0_42.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_43/sim/counter_4_util_vector_logic_0_43.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_0/sim/counter_4_and_0_0.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_44/sim/counter_4_util_vector_logic_0_44.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_38/sim/counter_4_util_vector_logic_2_38.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_45/sim/counter_4_util_vector_logic_0_45.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_39/sim/counter_4_util_vector_logic_2_39.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_0_2/sim/counter_4_not_0_2.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_46/sim/counter_4_util_vector_logic_0_46.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_40/sim/counter_4_util_vector_logic_2_40.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_47/sim/counter_4_util_vector_logic_0_47.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_41/sim/counter_4_util_vector_logic_2_41.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_48/sim/counter_4_util_vector_logic_0_48.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_42/sim/counter_4_util_vector_logic_2_42.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_49/sim/counter_4_util_vector_logic_0_49.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_43/sim/counter_4_util_vector_logic_2_43.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_50/sim/counter_4_util_vector_logic_0_50.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_44/sim/counter_4_util_vector_logic_2_44.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_51/sim/counter_4_util_vector_logic_0_51.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_45/sim/counter_4_util_vector_logic_2_45.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_1_2/sim/counter_4_not_1_2.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_1/sim/counter_4_and_0_1.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_or_0_0/sim/counter_4_or_0_0.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_52/sim/counter_4_util_vector_logic_0_52.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_1_0/sim/counter_4_and_1_0.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_53/sim/counter_4_util_vector_logic_0_53.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_46/sim/counter_4_util_vector_logic_2_46.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_54/sim/counter_4_util_vector_logic_0_54.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_47/sim/counter_4_util_vector_logic_2_47.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_0_3/sim/counter_4_not_0_3.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_55/sim/counter_4_util_vector_logic_0_55.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_48/sim/counter_4_util_vector_logic_2_48.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_56/sim/counter_4_util_vector_logic_0_56.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_49/sim/counter_4_util_vector_logic_2_49.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_57/sim/counter_4_util_vector_logic_0_57.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_50/sim/counter_4_util_vector_logic_2_50.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_58/sim/counter_4_util_vector_logic_0_58.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_51/sim/counter_4_util_vector_logic_2_51.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_59/sim/counter_4_util_vector_logic_0_59.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_52/sim/counter_4_util_vector_logic_2_52.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_60/sim/counter_4_util_vector_logic_0_60.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_53/sim/counter_4_util_vector_logic_2_53.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_1_3/sim/counter_4_not_1_3.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_2/sim/counter_4_and_0_2.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_or_0_1/sim/counter_4_or_0_1.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_61/sim/counter_4_util_vector_logic_0_61.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_1_1/sim/counter_4_and_1_1.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_62/sim/counter_4_util_vector_logic_0_62.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_54/sim/counter_4_util_vector_logic_2_54.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_63/sim/counter_4_util_vector_logic_0_63.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_55/sim/counter_4_util_vector_logic_2_55.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_0_4/sim/counter_4_not_0_4.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_64/sim/counter_4_util_vector_logic_0_64.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_56/sim/counter_4_util_vector_logic_2_56.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_65/sim/counter_4_util_vector_logic_0_65.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_57/sim/counter_4_util_vector_logic_2_57.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_66/sim/counter_4_util_vector_logic_0_66.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_58/sim/counter_4_util_vector_logic_2_58.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_67/sim/counter_4_util_vector_logic_0_67.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_59/sim/counter_4_util_vector_logic_2_59.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_68/sim/counter_4_util_vector_logic_0_68.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_60/sim/counter_4_util_vector_logic_2_60.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_69/sim/counter_4_util_vector_logic_0_69.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_2_61/sim/counter_4_util_vector_logic_2_61.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_1_4/sim/counter_4_not_1_4.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_3/sim/counter_4_and_0_3.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_or_0_2/sim/counter_4_or_0_2.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_70/sim/counter_4_util_vector_logic_0_70.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_1_2/sim/counter_4_and_1_2.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_71/sim/counter_4_util_vector_logic_0_71.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_1_0/sim/counter_4_util_vector_logic_1_0.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_72/sim/counter_4_util_vector_logic_0_72.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_util_vector_logic_0_73/sim/counter_4_util_vector_logic_0_73.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_not_0_5/sim/counter_4_not_0_5.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_4/sim/counter_4_and_0_4.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_5/sim/counter_4_and_0_5.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_6/sim/counter_4_and_0_6.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_or_0_3/sim/counter_4_or_0_3.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_2_0/sim/counter_4_and_2_0.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_2_1/sim/counter_4_and_2_1.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_or_1_0/sim/counter_4_or_1_0.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_7/sim/counter_4_and_0_7.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_0_8/sim/counter_4_and_0_8.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_2_2/sim/counter_4_and_2_2.v" \
    "$ref_dir/../../../bd/counter_4/ip/counter_4_and_4_0/sim/counter_4_and_4_0.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.counter_4 xil_defaultlib.glbl -o counter_4_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./counter_4_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./counter_4.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key counter_4_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc counter_4_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./counter_4.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: counter_4.sh [-help]\n\
Usage: counter_4.sh [-lib_map_path]\n\
Usage: counter_4.sh [-reset_run]\n\
Usage: counter_4.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
