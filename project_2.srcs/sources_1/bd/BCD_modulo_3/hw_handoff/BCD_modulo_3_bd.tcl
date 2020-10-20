
################################################################
# This is a generated script based on design: BCD_modulo_3
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BCD_modulo_3_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name BCD_modulo_3

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: add_mode_5
proc create_hier_cell_add_mode_5 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_add_mode_5() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I A0
  create_bd_pin -dir I A1
  create_bd_pin -dir I B0
  create_bd_pin -dir I B1
  create_bd_pin -dir O -from 0 -to 0 mod_0
  create_bd_pin -dir O -from 0 -to 0 mod_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_11

  # Create instance: util_vector_logic_12, and set properties
  set util_vector_logic_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_12 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_12

  # Create instance: util_vector_logic_13, and set properties
  set util_vector_logic_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_13 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_13

  # Create instance: util_vector_logic_14, and set properties
  set util_vector_logic_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_14 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_14

  # Create instance: util_vector_logic_15, and set properties
  set util_vector_logic_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_15 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_15

  # Create instance: util_vector_logic_16, and set properties
  set util_vector_logic_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_16 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_16

  # Create instance: util_vector_logic_17, and set properties
  set util_vector_logic_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_17 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_17

  # Create instance: util_vector_logic_18, and set properties
  set util_vector_logic_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_18 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_18

  # Create instance: util_vector_logic_19, and set properties
  set util_vector_logic_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_19 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_19

  # Create instance: util_vector_logic_20, and set properties
  set util_vector_logic_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_20 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_20

  # Create instance: util_vector_logic_21, and set properties
  set util_vector_logic_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_21 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_21

  # Create instance: util_vector_logic_22, and set properties
  set util_vector_logic_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_22 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_22

  # Create instance: util_vector_logic_23, and set properties
  set util_vector_logic_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_23 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_23

  # Create instance: util_vector_logic_24, and set properties
  set util_vector_logic_24 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_24 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_24

  # Create instance: util_vector_logic_25, and set properties
  set util_vector_logic_25 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_25 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_25

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_pins A0] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_15/Op1] [get_bd_pins util_vector_logic_7/Op1]
  connect_bd_net -net A1_1 [get_bd_pins A1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_23/Op2] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net B0_1 [get_bd_pins B0] [get_bd_pins util_vector_logic_19/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net B1_1 [get_bd_pins B1] [get_bd_pins util_vector_logic_11/Op2] [get_bd_pins util_vector_logic_22/Op2] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_10/Op1] [get_bd_pins util_vector_logic_20/Op1] [get_bd_pins util_vector_logic_23/Op1] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_pins util_vector_logic_10/Res] [get_bd_pins util_vector_logic_12/Op1]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_pins util_vector_logic_11/Res] [get_bd_pins util_vector_logic_12/Op2]
  connect_bd_net -net util_vector_logic_12_Res [get_bd_pins util_vector_logic_12/Res] [get_bd_pins util_vector_logic_14/Op2]
  connect_bd_net -net util_vector_logic_13_Res [get_bd_pins util_vector_logic_13/Res] [get_bd_pins util_vector_logic_14/Op1]
  connect_bd_net -net util_vector_logic_14_Res [get_bd_pins mod_1] [get_bd_pins util_vector_logic_14/Res]
  connect_bd_net -net util_vector_logic_15_Res [get_bd_pins util_vector_logic_15/Res] [get_bd_pins util_vector_logic_17/Op1]
  connect_bd_net -net util_vector_logic_16_Res [get_bd_pins util_vector_logic_16/Res] [get_bd_pins util_vector_logic_17/Op2]
  connect_bd_net -net util_vector_logic_17_Res [get_bd_pins util_vector_logic_17/Res] [get_bd_pins util_vector_logic_25/Op1]
  connect_bd_net -net util_vector_logic_18_Res [get_bd_pins util_vector_logic_18/Res] [get_bd_pins util_vector_logic_25/Op2]
  connect_bd_net -net util_vector_logic_19_Res [get_bd_pins util_vector_logic_18/Op2] [get_bd_pins util_vector_logic_19/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_10/Op2] [get_bd_pins util_vector_logic_15/Op2] [get_bd_pins util_vector_logic_20/Op2] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net util_vector_logic_20_Res [get_bd_pins util_vector_logic_18/Op1] [get_bd_pins util_vector_logic_20/Res]
  connect_bd_net -net util_vector_logic_21_Res [get_bd_pins util_vector_logic_21/Res] [get_bd_pins util_vector_logic_24/Op2]
  connect_bd_net -net util_vector_logic_22_Res [get_bd_pins util_vector_logic_21/Op2] [get_bd_pins util_vector_logic_22/Res]
  connect_bd_net -net util_vector_logic_23_Res [get_bd_pins util_vector_logic_21/Op1] [get_bd_pins util_vector_logic_23/Res]
  connect_bd_net -net util_vector_logic_24_Res [get_bd_pins mod_0] [get_bd_pins util_vector_logic_24/Res]
  connect_bd_net -net util_vector_logic_25_Res [get_bd_pins util_vector_logic_24/Op1] [get_bd_pins util_vector_logic_25/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_16/Op1] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_22/Op1] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_11/Op1] [get_bd_pins util_vector_logic_16/Op2] [get_bd_pins util_vector_logic_19/Op2] [get_bd_pins util_vector_logic_3/Res] [get_bd_pins util_vector_logic_4/Op2] [get_bd_pins util_vector_logic_8/Op2]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins util_vector_logic_4/Res] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins util_vector_logic_5/Res] [get_bd_pins util_vector_logic_6/Op2]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins util_vector_logic_13/Op1] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins util_vector_logic_7/Res] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins util_vector_logic_8/Res] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_pins util_vector_logic_13/Op2] [get_bd_pins util_vector_logic_9/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: add_mode_4
proc create_hier_cell_add_mode_4 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_add_mode_4() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I A0
  create_bd_pin -dir I A1
  create_bd_pin -dir I B0
  create_bd_pin -dir I B1
  create_bd_pin -dir O -from 0 -to 0 mod_0
  create_bd_pin -dir O -from 0 -to 0 mod_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_11

  # Create instance: util_vector_logic_12, and set properties
  set util_vector_logic_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_12 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_12

  # Create instance: util_vector_logic_13, and set properties
  set util_vector_logic_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_13 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_13

  # Create instance: util_vector_logic_14, and set properties
  set util_vector_logic_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_14 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_14

  # Create instance: util_vector_logic_15, and set properties
  set util_vector_logic_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_15 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_15

  # Create instance: util_vector_logic_16, and set properties
  set util_vector_logic_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_16 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_16

  # Create instance: util_vector_logic_17, and set properties
  set util_vector_logic_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_17 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_17

  # Create instance: util_vector_logic_18, and set properties
  set util_vector_logic_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_18 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_18

  # Create instance: util_vector_logic_19, and set properties
  set util_vector_logic_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_19 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_19

  # Create instance: util_vector_logic_20, and set properties
  set util_vector_logic_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_20 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_20

  # Create instance: util_vector_logic_21, and set properties
  set util_vector_logic_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_21 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_21

  # Create instance: util_vector_logic_22, and set properties
  set util_vector_logic_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_22 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_22

  # Create instance: util_vector_logic_23, and set properties
  set util_vector_logic_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_23 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_23

  # Create instance: util_vector_logic_24, and set properties
  set util_vector_logic_24 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_24 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_24

  # Create instance: util_vector_logic_25, and set properties
  set util_vector_logic_25 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_25 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_25

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_pins A0] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_15/Op1] [get_bd_pins util_vector_logic_7/Op1]
  connect_bd_net -net A1_1 [get_bd_pins A1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_23/Op2] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net B0_1 [get_bd_pins B0] [get_bd_pins util_vector_logic_19/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net B1_1 [get_bd_pins B1] [get_bd_pins util_vector_logic_11/Op2] [get_bd_pins util_vector_logic_22/Op2] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_10/Op1] [get_bd_pins util_vector_logic_20/Op1] [get_bd_pins util_vector_logic_23/Op1] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_pins util_vector_logic_10/Res] [get_bd_pins util_vector_logic_12/Op1]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_pins util_vector_logic_11/Res] [get_bd_pins util_vector_logic_12/Op2]
  connect_bd_net -net util_vector_logic_12_Res [get_bd_pins util_vector_logic_12/Res] [get_bd_pins util_vector_logic_14/Op2]
  connect_bd_net -net util_vector_logic_13_Res [get_bd_pins util_vector_logic_13/Res] [get_bd_pins util_vector_logic_14/Op1]
  connect_bd_net -net util_vector_logic_14_Res [get_bd_pins mod_1] [get_bd_pins util_vector_logic_14/Res]
  connect_bd_net -net util_vector_logic_15_Res [get_bd_pins util_vector_logic_15/Res] [get_bd_pins util_vector_logic_17/Op1]
  connect_bd_net -net util_vector_logic_16_Res [get_bd_pins util_vector_logic_16/Res] [get_bd_pins util_vector_logic_17/Op2]
  connect_bd_net -net util_vector_logic_17_Res [get_bd_pins util_vector_logic_17/Res] [get_bd_pins util_vector_logic_25/Op1]
  connect_bd_net -net util_vector_logic_18_Res [get_bd_pins util_vector_logic_18/Res] [get_bd_pins util_vector_logic_25/Op2]
  connect_bd_net -net util_vector_logic_19_Res [get_bd_pins util_vector_logic_18/Op2] [get_bd_pins util_vector_logic_19/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_10/Op2] [get_bd_pins util_vector_logic_15/Op2] [get_bd_pins util_vector_logic_20/Op2] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net util_vector_logic_20_Res [get_bd_pins util_vector_logic_18/Op1] [get_bd_pins util_vector_logic_20/Res]
  connect_bd_net -net util_vector_logic_21_Res [get_bd_pins util_vector_logic_21/Res] [get_bd_pins util_vector_logic_24/Op2]
  connect_bd_net -net util_vector_logic_22_Res [get_bd_pins util_vector_logic_21/Op2] [get_bd_pins util_vector_logic_22/Res]
  connect_bd_net -net util_vector_logic_23_Res [get_bd_pins util_vector_logic_21/Op1] [get_bd_pins util_vector_logic_23/Res]
  connect_bd_net -net util_vector_logic_24_Res [get_bd_pins mod_0] [get_bd_pins util_vector_logic_24/Res]
  connect_bd_net -net util_vector_logic_25_Res [get_bd_pins util_vector_logic_24/Op1] [get_bd_pins util_vector_logic_25/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_16/Op1] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_22/Op1] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_11/Op1] [get_bd_pins util_vector_logic_16/Op2] [get_bd_pins util_vector_logic_19/Op2] [get_bd_pins util_vector_logic_3/Res] [get_bd_pins util_vector_logic_4/Op2] [get_bd_pins util_vector_logic_8/Op2]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins util_vector_logic_4/Res] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins util_vector_logic_5/Res] [get_bd_pins util_vector_logic_6/Op2]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins util_vector_logic_13/Op1] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins util_vector_logic_7/Res] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins util_vector_logic_8/Res] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_pins util_vector_logic_13/Op2] [get_bd_pins util_vector_logic_9/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: add_mode_3
proc create_hier_cell_add_mode_3 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_add_mode_3() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I A0
  create_bd_pin -dir I A1
  create_bd_pin -dir I B0
  create_bd_pin -dir I B1
  create_bd_pin -dir O -from 0 -to 0 mod_0
  create_bd_pin -dir O -from 0 -to 0 mod_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_11

  # Create instance: util_vector_logic_12, and set properties
  set util_vector_logic_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_12 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_12

  # Create instance: util_vector_logic_13, and set properties
  set util_vector_logic_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_13 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_13

  # Create instance: util_vector_logic_14, and set properties
  set util_vector_logic_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_14 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_14

  # Create instance: util_vector_logic_15, and set properties
  set util_vector_logic_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_15 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_15

  # Create instance: util_vector_logic_16, and set properties
  set util_vector_logic_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_16 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_16

  # Create instance: util_vector_logic_17, and set properties
  set util_vector_logic_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_17 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_17

  # Create instance: util_vector_logic_18, and set properties
  set util_vector_logic_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_18 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_18

  # Create instance: util_vector_logic_19, and set properties
  set util_vector_logic_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_19 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_19

  # Create instance: util_vector_logic_20, and set properties
  set util_vector_logic_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_20 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_20

  # Create instance: util_vector_logic_21, and set properties
  set util_vector_logic_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_21 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_21

  # Create instance: util_vector_logic_22, and set properties
  set util_vector_logic_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_22 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_22

  # Create instance: util_vector_logic_23, and set properties
  set util_vector_logic_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_23 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_23

  # Create instance: util_vector_logic_24, and set properties
  set util_vector_logic_24 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_24 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_24

  # Create instance: util_vector_logic_25, and set properties
  set util_vector_logic_25 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_25 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_25

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_pins A0] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_15/Op1] [get_bd_pins util_vector_logic_7/Op1]
  connect_bd_net -net A1_1 [get_bd_pins A1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_23/Op2] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net B0_1 [get_bd_pins B0] [get_bd_pins util_vector_logic_19/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net B1_1 [get_bd_pins B1] [get_bd_pins util_vector_logic_11/Op2] [get_bd_pins util_vector_logic_22/Op2] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_10/Op1] [get_bd_pins util_vector_logic_20/Op1] [get_bd_pins util_vector_logic_23/Op1] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_pins util_vector_logic_10/Res] [get_bd_pins util_vector_logic_12/Op1]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_pins util_vector_logic_11/Res] [get_bd_pins util_vector_logic_12/Op2]
  connect_bd_net -net util_vector_logic_12_Res [get_bd_pins util_vector_logic_12/Res] [get_bd_pins util_vector_logic_14/Op2]
  connect_bd_net -net util_vector_logic_13_Res [get_bd_pins util_vector_logic_13/Res] [get_bd_pins util_vector_logic_14/Op1]
  connect_bd_net -net util_vector_logic_14_Res [get_bd_pins mod_1] [get_bd_pins util_vector_logic_14/Res]
  connect_bd_net -net util_vector_logic_15_Res [get_bd_pins util_vector_logic_15/Res] [get_bd_pins util_vector_logic_17/Op1]
  connect_bd_net -net util_vector_logic_16_Res [get_bd_pins util_vector_logic_16/Res] [get_bd_pins util_vector_logic_17/Op2]
  connect_bd_net -net util_vector_logic_17_Res [get_bd_pins util_vector_logic_17/Res] [get_bd_pins util_vector_logic_25/Op1]
  connect_bd_net -net util_vector_logic_18_Res [get_bd_pins util_vector_logic_18/Res] [get_bd_pins util_vector_logic_25/Op2]
  connect_bd_net -net util_vector_logic_19_Res [get_bd_pins util_vector_logic_18/Op2] [get_bd_pins util_vector_logic_19/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_10/Op2] [get_bd_pins util_vector_logic_15/Op2] [get_bd_pins util_vector_logic_20/Op2] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net util_vector_logic_20_Res [get_bd_pins util_vector_logic_18/Op1] [get_bd_pins util_vector_logic_20/Res]
  connect_bd_net -net util_vector_logic_21_Res [get_bd_pins util_vector_logic_21/Res] [get_bd_pins util_vector_logic_24/Op2]
  connect_bd_net -net util_vector_logic_22_Res [get_bd_pins util_vector_logic_21/Op2] [get_bd_pins util_vector_logic_22/Res]
  connect_bd_net -net util_vector_logic_23_Res [get_bd_pins util_vector_logic_21/Op1] [get_bd_pins util_vector_logic_23/Res]
  connect_bd_net -net util_vector_logic_24_Res [get_bd_pins mod_0] [get_bd_pins util_vector_logic_24/Res]
  connect_bd_net -net util_vector_logic_25_Res [get_bd_pins util_vector_logic_24/Op1] [get_bd_pins util_vector_logic_25/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_16/Op1] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_22/Op1] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_11/Op1] [get_bd_pins util_vector_logic_16/Op2] [get_bd_pins util_vector_logic_19/Op2] [get_bd_pins util_vector_logic_3/Res] [get_bd_pins util_vector_logic_4/Op2] [get_bd_pins util_vector_logic_8/Op2]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins util_vector_logic_4/Res] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins util_vector_logic_5/Res] [get_bd_pins util_vector_logic_6/Op2]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins util_vector_logic_13/Op1] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins util_vector_logic_7/Res] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins util_vector_logic_8/Res] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_pins util_vector_logic_13/Op2] [get_bd_pins util_vector_logic_9/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ONE_BCD_DIGIT_MOD3
proc create_hier_cell_ONE_BCD_DIGIT_MOD3 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ONE_BCD_DIGIT_MOD3() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I A0
  create_bd_pin -dir I A1
  create_bd_pin -dir I A2
  create_bd_pin -dir I A3
  create_bd_pin -dir O -from 0 -to 0 MOD_0
  create_bd_pin -dir O -from 0 -to 0 MOD_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_11

  # Create instance: util_vector_logic_12, and set properties
  set util_vector_logic_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_12 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_12

  # Create instance: util_vector_logic_13, and set properties
  set util_vector_logic_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_13 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_13

  # Create instance: util_vector_logic_14, and set properties
  set util_vector_logic_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_14 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_14

  # Create instance: util_vector_logic_15, and set properties
  set util_vector_logic_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_15 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_15

  # Create instance: util_vector_logic_16, and set properties
  set util_vector_logic_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_16 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_16

  # Create instance: util_vector_logic_17, and set properties
  set util_vector_logic_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_17 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_17

  # Create instance: util_vector_logic_18, and set properties
  set util_vector_logic_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_18 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_18

  # Create instance: util_vector_logic_19, and set properties
  set util_vector_logic_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_19 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_19

  # Create instance: util_vector_logic_20, and set properties
  set util_vector_logic_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_20 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_20

  # Create instance: util_vector_logic_21, and set properties
  set util_vector_logic_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_21 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_21

  # Create instance: util_vector_logic_22, and set properties
  set util_vector_logic_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_22 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_22

  # Create instance: util_vector_logic_23, and set properties
  set util_vector_logic_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_23 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_23

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_pins A0] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_17/Op1] [get_bd_pins util_vector_logic_4/Op1] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net A1_1 [get_bd_pins A1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_13/Op2] [get_bd_pins util_vector_logic_8/Op2]
  connect_bd_net -net A2_1 [get_bd_pins A2] [get_bd_pins util_vector_logic_18/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_7/Op1] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net A3_1 [get_bd_pins A3] [get_bd_pins util_vector_logic_20/Op2] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_13/Op1] [get_bd_pins util_vector_logic_21/Op1] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_pins util_vector_logic_10/Res] [get_bd_pins util_vector_logic_11/Op1]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_pins util_vector_logic_11/Res] [get_bd_pins util_vector_logic_12/Op1]
  connect_bd_net -net util_vector_logic_12_Res [get_bd_pins MOD_0] [get_bd_pins util_vector_logic_12/Res]
  connect_bd_net -net util_vector_logic_13_Res [get_bd_pins util_vector_logic_13/Res] [get_bd_pins util_vector_logic_15/Op1]
  connect_bd_net -net util_vector_logic_14_Res [get_bd_pins util_vector_logic_14/Res] [get_bd_pins util_vector_logic_15/Op2]
  connect_bd_net -net util_vector_logic_15_Res [get_bd_pins util_vector_logic_15/Res] [get_bd_pins util_vector_logic_22/Op1]
  connect_bd_net -net util_vector_logic_16_Res [get_bd_pins util_vector_logic_16/Res] [get_bd_pins util_vector_logic_22/Op2]
  connect_bd_net -net util_vector_logic_17_Res [get_bd_pins util_vector_logic_16/Op1] [get_bd_pins util_vector_logic_17/Res]
  connect_bd_net -net util_vector_logic_18_Res [get_bd_pins util_vector_logic_16/Op2] [get_bd_pins util_vector_logic_18/Res]
  connect_bd_net -net util_vector_logic_19_Res [get_bd_pins util_vector_logic_19/Res] [get_bd_pins util_vector_logic_23/Op2]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_17/Op2] [get_bd_pins util_vector_logic_21/Op2] [get_bd_pins util_vector_logic_4/Op2] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net util_vector_logic_20_Res [get_bd_pins util_vector_logic_19/Op2] [get_bd_pins util_vector_logic_20/Res]
  connect_bd_net -net util_vector_logic_21_Res [get_bd_pins util_vector_logic_19/Op1] [get_bd_pins util_vector_logic_21/Res]
  connect_bd_net -net util_vector_logic_22_Res [get_bd_pins util_vector_logic_22/Res] [get_bd_pins util_vector_logic_23/Op1]
  connect_bd_net -net util_vector_logic_23_Res [get_bd_pins MOD_1] [get_bd_pins util_vector_logic_23/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_14/Op1] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_20/Op1] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_12/Op2] [get_bd_pins util_vector_logic_14/Op2] [get_bd_pins util_vector_logic_18/Op2] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins util_vector_logic_4/Res] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins util_vector_logic_10/Op1] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins util_vector_logic_10/Op2] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins util_vector_logic_6/Op2] [get_bd_pins util_vector_logic_7/Res]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins util_vector_logic_8/Res] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_pins util_vector_logic_11/Op2] [get_bd_pins util_vector_logic_9/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ONE_BCD_DIGIT_MOD2
proc create_hier_cell_ONE_BCD_DIGIT_MOD2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ONE_BCD_DIGIT_MOD2() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I A0
  create_bd_pin -dir I A1
  create_bd_pin -dir I A2
  create_bd_pin -dir I A3
  create_bd_pin -dir O -from 0 -to 0 MOD_0
  create_bd_pin -dir O -from 0 -to 0 MOD_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_11

  # Create instance: util_vector_logic_12, and set properties
  set util_vector_logic_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_12 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_12

  # Create instance: util_vector_logic_13, and set properties
  set util_vector_logic_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_13 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_13

  # Create instance: util_vector_logic_14, and set properties
  set util_vector_logic_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_14 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_14

  # Create instance: util_vector_logic_15, and set properties
  set util_vector_logic_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_15 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_15

  # Create instance: util_vector_logic_16, and set properties
  set util_vector_logic_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_16 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_16

  # Create instance: util_vector_logic_17, and set properties
  set util_vector_logic_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_17 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_17

  # Create instance: util_vector_logic_18, and set properties
  set util_vector_logic_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_18 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_18

  # Create instance: util_vector_logic_19, and set properties
  set util_vector_logic_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_19 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_19

  # Create instance: util_vector_logic_20, and set properties
  set util_vector_logic_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_20 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_20

  # Create instance: util_vector_logic_21, and set properties
  set util_vector_logic_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_21 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_21

  # Create instance: util_vector_logic_22, and set properties
  set util_vector_logic_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_22 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_22

  # Create instance: util_vector_logic_23, and set properties
  set util_vector_logic_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_23 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_23

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_pins A0] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_17/Op1] [get_bd_pins util_vector_logic_4/Op1] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net A1_1 [get_bd_pins A1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_13/Op2] [get_bd_pins util_vector_logic_8/Op2]
  connect_bd_net -net A2_1 [get_bd_pins A2] [get_bd_pins util_vector_logic_18/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_7/Op1] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net A3_1 [get_bd_pins A3] [get_bd_pins util_vector_logic_20/Op2] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_13/Op1] [get_bd_pins util_vector_logic_21/Op1] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_pins util_vector_logic_10/Res] [get_bd_pins util_vector_logic_11/Op1]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_pins util_vector_logic_11/Res] [get_bd_pins util_vector_logic_12/Op1]
  connect_bd_net -net util_vector_logic_12_Res [get_bd_pins MOD_0] [get_bd_pins util_vector_logic_12/Res]
  connect_bd_net -net util_vector_logic_13_Res [get_bd_pins util_vector_logic_13/Res] [get_bd_pins util_vector_logic_15/Op1]
  connect_bd_net -net util_vector_logic_14_Res [get_bd_pins util_vector_logic_14/Res] [get_bd_pins util_vector_logic_15/Op2]
  connect_bd_net -net util_vector_logic_15_Res [get_bd_pins util_vector_logic_15/Res] [get_bd_pins util_vector_logic_22/Op1]
  connect_bd_net -net util_vector_logic_16_Res [get_bd_pins util_vector_logic_16/Res] [get_bd_pins util_vector_logic_22/Op2]
  connect_bd_net -net util_vector_logic_17_Res [get_bd_pins util_vector_logic_16/Op1] [get_bd_pins util_vector_logic_17/Res]
  connect_bd_net -net util_vector_logic_18_Res [get_bd_pins util_vector_logic_16/Op2] [get_bd_pins util_vector_logic_18/Res]
  connect_bd_net -net util_vector_logic_19_Res [get_bd_pins util_vector_logic_19/Res] [get_bd_pins util_vector_logic_23/Op2]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_17/Op2] [get_bd_pins util_vector_logic_21/Op2] [get_bd_pins util_vector_logic_4/Op2] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net util_vector_logic_20_Res [get_bd_pins util_vector_logic_19/Op2] [get_bd_pins util_vector_logic_20/Res]
  connect_bd_net -net util_vector_logic_21_Res [get_bd_pins util_vector_logic_19/Op1] [get_bd_pins util_vector_logic_21/Res]
  connect_bd_net -net util_vector_logic_22_Res [get_bd_pins util_vector_logic_22/Res] [get_bd_pins util_vector_logic_23/Op1]
  connect_bd_net -net util_vector_logic_23_Res [get_bd_pins MOD_1] [get_bd_pins util_vector_logic_23/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_14/Op1] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_20/Op1] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_12/Op2] [get_bd_pins util_vector_logic_14/Op2] [get_bd_pins util_vector_logic_18/Op2] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins util_vector_logic_4/Res] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins util_vector_logic_10/Op1] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins util_vector_logic_10/Op2] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins util_vector_logic_6/Op2] [get_bd_pins util_vector_logic_7/Res]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins util_vector_logic_8/Res] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_pins util_vector_logic_11/Op2] [get_bd_pins util_vector_logic_9/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ONE_BCD_DIGIT_MOD1
proc create_hier_cell_ONE_BCD_DIGIT_MOD1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ONE_BCD_DIGIT_MOD1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I A0
  create_bd_pin -dir I A1
  create_bd_pin -dir I A2
  create_bd_pin -dir I A3
  create_bd_pin -dir O -from 0 -to 0 MOD_0
  create_bd_pin -dir O -from 0 -to 0 MOD_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_11

  # Create instance: util_vector_logic_12, and set properties
  set util_vector_logic_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_12 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_12

  # Create instance: util_vector_logic_13, and set properties
  set util_vector_logic_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_13 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_13

  # Create instance: util_vector_logic_14, and set properties
  set util_vector_logic_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_14 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_14

  # Create instance: util_vector_logic_15, and set properties
  set util_vector_logic_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_15 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_15

  # Create instance: util_vector_logic_16, and set properties
  set util_vector_logic_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_16 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_16

  # Create instance: util_vector_logic_17, and set properties
  set util_vector_logic_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_17 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_17

  # Create instance: util_vector_logic_18, and set properties
  set util_vector_logic_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_18 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_18

  # Create instance: util_vector_logic_19, and set properties
  set util_vector_logic_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_19 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_19

  # Create instance: util_vector_logic_20, and set properties
  set util_vector_logic_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_20 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_20

  # Create instance: util_vector_logic_21, and set properties
  set util_vector_logic_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_21 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_21

  # Create instance: util_vector_logic_22, and set properties
  set util_vector_logic_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_22 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_22

  # Create instance: util_vector_logic_23, and set properties
  set util_vector_logic_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_23 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_23

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_pins A0] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_17/Op1] [get_bd_pins util_vector_logic_4/Op1] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net A1_1 [get_bd_pins A1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_13/Op2] [get_bd_pins util_vector_logic_8/Op2]
  connect_bd_net -net A2_1 [get_bd_pins A2] [get_bd_pins util_vector_logic_18/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_7/Op1] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net A3_1 [get_bd_pins A3] [get_bd_pins util_vector_logic_20/Op2] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_13/Op1] [get_bd_pins util_vector_logic_21/Op1] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_pins util_vector_logic_10/Res] [get_bd_pins util_vector_logic_11/Op1]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_pins util_vector_logic_11/Res] [get_bd_pins util_vector_logic_12/Op1]
  connect_bd_net -net util_vector_logic_12_Res [get_bd_pins MOD_0] [get_bd_pins util_vector_logic_12/Res]
  connect_bd_net -net util_vector_logic_13_Res [get_bd_pins util_vector_logic_13/Res] [get_bd_pins util_vector_logic_15/Op1]
  connect_bd_net -net util_vector_logic_14_Res [get_bd_pins util_vector_logic_14/Res] [get_bd_pins util_vector_logic_15/Op2]
  connect_bd_net -net util_vector_logic_15_Res [get_bd_pins util_vector_logic_15/Res] [get_bd_pins util_vector_logic_22/Op1]
  connect_bd_net -net util_vector_logic_16_Res [get_bd_pins util_vector_logic_16/Res] [get_bd_pins util_vector_logic_22/Op2]
  connect_bd_net -net util_vector_logic_17_Res [get_bd_pins util_vector_logic_16/Op1] [get_bd_pins util_vector_logic_17/Res]
  connect_bd_net -net util_vector_logic_18_Res [get_bd_pins util_vector_logic_16/Op2] [get_bd_pins util_vector_logic_18/Res]
  connect_bd_net -net util_vector_logic_19_Res [get_bd_pins util_vector_logic_19/Res] [get_bd_pins util_vector_logic_23/Op2]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_17/Op2] [get_bd_pins util_vector_logic_21/Op2] [get_bd_pins util_vector_logic_4/Op2] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net util_vector_logic_20_Res [get_bd_pins util_vector_logic_19/Op2] [get_bd_pins util_vector_logic_20/Res]
  connect_bd_net -net util_vector_logic_21_Res [get_bd_pins util_vector_logic_19/Op1] [get_bd_pins util_vector_logic_21/Res]
  connect_bd_net -net util_vector_logic_22_Res [get_bd_pins util_vector_logic_22/Res] [get_bd_pins util_vector_logic_23/Op1]
  connect_bd_net -net util_vector_logic_23_Res [get_bd_pins MOD_1] [get_bd_pins util_vector_logic_23/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_14/Op1] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_20/Op1] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_12/Op2] [get_bd_pins util_vector_logic_14/Op2] [get_bd_pins util_vector_logic_18/Op2] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins util_vector_logic_4/Res] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins util_vector_logic_10/Op1] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins util_vector_logic_10/Op2] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins util_vector_logic_6/Op2] [get_bd_pins util_vector_logic_7/Res]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins util_vector_logic_8/Res] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_pins util_vector_logic_11/Op2] [get_bd_pins util_vector_logic_9/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ONE_BCD_DIGIT_MOD
proc create_hier_cell_ONE_BCD_DIGIT_MOD { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ONE_BCD_DIGIT_MOD() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I A0
  create_bd_pin -dir I A1
  create_bd_pin -dir I A2
  create_bd_pin -dir I A3
  create_bd_pin -dir O -from 0 -to 0 MOD_0
  create_bd_pin -dir O -from 0 -to 0 MOD_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_11

  # Create instance: util_vector_logic_12, and set properties
  set util_vector_logic_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_12 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_12

  # Create instance: util_vector_logic_13, and set properties
  set util_vector_logic_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_13 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_13

  # Create instance: util_vector_logic_14, and set properties
  set util_vector_logic_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_14 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_14

  # Create instance: util_vector_logic_15, and set properties
  set util_vector_logic_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_15 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_15

  # Create instance: util_vector_logic_16, and set properties
  set util_vector_logic_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_16 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_16

  # Create instance: util_vector_logic_17, and set properties
  set util_vector_logic_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_17 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_17

  # Create instance: util_vector_logic_18, and set properties
  set util_vector_logic_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_18 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_18

  # Create instance: util_vector_logic_19, and set properties
  set util_vector_logic_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_19 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_19

  # Create instance: util_vector_logic_20, and set properties
  set util_vector_logic_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_20 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_20

  # Create instance: util_vector_logic_21, and set properties
  set util_vector_logic_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_21 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_21

  # Create instance: util_vector_logic_22, and set properties
  set util_vector_logic_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_22 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_22

  # Create instance: util_vector_logic_23, and set properties
  set util_vector_logic_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_23 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_23

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_pins A0] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_17/Op1] [get_bd_pins util_vector_logic_4/Op1] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net A1_1 [get_bd_pins A1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_13/Op2] [get_bd_pins util_vector_logic_8/Op2]
  connect_bd_net -net A2_1 [get_bd_pins A2] [get_bd_pins util_vector_logic_18/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_7/Op1] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net A3_1 [get_bd_pins A3] [get_bd_pins util_vector_logic_20/Op2] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_13/Op1] [get_bd_pins util_vector_logic_21/Op1] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_pins util_vector_logic_10/Res] [get_bd_pins util_vector_logic_11/Op1]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_pins util_vector_logic_11/Res] [get_bd_pins util_vector_logic_12/Op1]
  connect_bd_net -net util_vector_logic_12_Res [get_bd_pins MOD_0] [get_bd_pins util_vector_logic_12/Res]
  connect_bd_net -net util_vector_logic_13_Res [get_bd_pins util_vector_logic_13/Res] [get_bd_pins util_vector_logic_15/Op1]
  connect_bd_net -net util_vector_logic_14_Res [get_bd_pins util_vector_logic_14/Res] [get_bd_pins util_vector_logic_15/Op2]
  connect_bd_net -net util_vector_logic_15_Res [get_bd_pins util_vector_logic_15/Res] [get_bd_pins util_vector_logic_22/Op1]
  connect_bd_net -net util_vector_logic_16_Res [get_bd_pins util_vector_logic_16/Res] [get_bd_pins util_vector_logic_22/Op2]
  connect_bd_net -net util_vector_logic_17_Res [get_bd_pins util_vector_logic_16/Op1] [get_bd_pins util_vector_logic_17/Res]
  connect_bd_net -net util_vector_logic_18_Res [get_bd_pins util_vector_logic_16/Op2] [get_bd_pins util_vector_logic_18/Res]
  connect_bd_net -net util_vector_logic_19_Res [get_bd_pins util_vector_logic_19/Res] [get_bd_pins util_vector_logic_23/Op2]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_17/Op2] [get_bd_pins util_vector_logic_21/Op2] [get_bd_pins util_vector_logic_4/Op2] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net util_vector_logic_20_Res [get_bd_pins util_vector_logic_19/Op2] [get_bd_pins util_vector_logic_20/Res]
  connect_bd_net -net util_vector_logic_21_Res [get_bd_pins util_vector_logic_19/Op1] [get_bd_pins util_vector_logic_21/Res]
  connect_bd_net -net util_vector_logic_22_Res [get_bd_pins util_vector_logic_22/Res] [get_bd_pins util_vector_logic_23/Op1]
  connect_bd_net -net util_vector_logic_23_Res [get_bd_pins MOD_1] [get_bd_pins util_vector_logic_23/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_14/Op1] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_20/Op1] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_12/Op2] [get_bd_pins util_vector_logic_14/Op2] [get_bd_pins util_vector_logic_18/Op2] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins util_vector_logic_4/Res] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins util_vector_logic_10/Op1] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins util_vector_logic_10/Op2] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins util_vector_logic_6/Op2] [get_bd_pins util_vector_logic_7/Res]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins util_vector_logic_8/Res] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_pins util_vector_logic_11/Op2] [get_bd_pins util_vector_logic_9/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set A0 [ create_bd_port -dir I A0 ]
  set A1 [ create_bd_port -dir I A1 ]
  set A2 [ create_bd_port -dir I A2 ]
  set A3 [ create_bd_port -dir I A3 ]
  set A4 [ create_bd_port -dir I A4 ]
  set A5 [ create_bd_port -dir I A5 ]
  set A6 [ create_bd_port -dir I A6 ]
  set A7 [ create_bd_port -dir I A7 ]
  set A8 [ create_bd_port -dir I A8 ]
  set A9 [ create_bd_port -dir I A9 ]
  set A10 [ create_bd_port -dir I A10 ]
  set A11 [ create_bd_port -dir I A11 ]
  set A12 [ create_bd_port -dir I A12 ]
  set A13 [ create_bd_port -dir I A13 ]
  set A14 [ create_bd_port -dir I A14 ]
  set A15 [ create_bd_port -dir I A15 ]
  set is_mul_of_3 [ create_bd_port -dir O -from 0 -to 0 is_mul_of_3 ]

  # Create instance: ONE_BCD_DIGIT_MOD
  create_hier_cell_ONE_BCD_DIGIT_MOD [current_bd_instance .] ONE_BCD_DIGIT_MOD

  # Create instance: ONE_BCD_DIGIT_MOD1
  create_hier_cell_ONE_BCD_DIGIT_MOD1 [current_bd_instance .] ONE_BCD_DIGIT_MOD1

  # Create instance: ONE_BCD_DIGIT_MOD2
  create_hier_cell_ONE_BCD_DIGIT_MOD2 [current_bd_instance .] ONE_BCD_DIGIT_MOD2

  # Create instance: ONE_BCD_DIGIT_MOD3
  create_hier_cell_ONE_BCD_DIGIT_MOD3 [current_bd_instance .] ONE_BCD_DIGIT_MOD3

  # Create instance: add_mode_3
  create_hier_cell_add_mode_3 [current_bd_instance .] add_mode_3

  # Create instance: add_mode_4
  create_hier_cell_add_mode_4 [current_bd_instance .] add_mode_4

  # Create instance: add_mode_5
  create_hier_cell_add_mode_5 [current_bd_instance .] add_mode_5

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $util_vector_logic_2

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_ports A0] [get_bd_pins ONE_BCD_DIGIT_MOD/A0]
  connect_bd_net -net A0_2 [get_bd_ports A8] [get_bd_pins ONE_BCD_DIGIT_MOD2/A0]
  connect_bd_net -net A1_1 [get_bd_ports A1] [get_bd_pins ONE_BCD_DIGIT_MOD/A1]
  connect_bd_net -net A1_2 [get_bd_ports A9] [get_bd_pins ONE_BCD_DIGIT_MOD2/A1]
  connect_bd_net -net A2_1 [get_bd_ports A2] [get_bd_pins ONE_BCD_DIGIT_MOD/A2]
  connect_bd_net -net A2_2 [get_bd_ports A10] [get_bd_pins ONE_BCD_DIGIT_MOD2/A2]
  connect_bd_net -net A3_1 [get_bd_ports A3] [get_bd_pins ONE_BCD_DIGIT_MOD/A3]
  connect_bd_net -net A3_2 [get_bd_ports A11] [get_bd_pins ONE_BCD_DIGIT_MOD2/A3]
  connect_bd_net -net A4_1 [get_bd_ports A4] [get_bd_pins ONE_BCD_DIGIT_MOD1/A0]
  connect_bd_net -net A4_2 [get_bd_ports A12] [get_bd_pins ONE_BCD_DIGIT_MOD3/A0]
  connect_bd_net -net A5_1 [get_bd_ports A5] [get_bd_pins ONE_BCD_DIGIT_MOD1/A1]
  connect_bd_net -net A5_2 [get_bd_ports A13] [get_bd_pins ONE_BCD_DIGIT_MOD3/A1]
  connect_bd_net -net A6_1 [get_bd_ports A6] [get_bd_pins ONE_BCD_DIGIT_MOD1/A2]
  connect_bd_net -net A6_2 [get_bd_ports A14] [get_bd_pins ONE_BCD_DIGIT_MOD3/A2]
  connect_bd_net -net A7_1 [get_bd_ports A7] [get_bd_pins ONE_BCD_DIGIT_MOD1/A3]
  connect_bd_net -net A7_2 [get_bd_ports A15] [get_bd_pins ONE_BCD_DIGIT_MOD3/A3]
  connect_bd_net -net ONE_BCD_DIGIT_MOD1_MOD_0 [get_bd_pins ONE_BCD_DIGIT_MOD1/MOD_0] [get_bd_pins add_mode_3/B0]
  connect_bd_net -net ONE_BCD_DIGIT_MOD1_MOD_1 [get_bd_pins ONE_BCD_DIGIT_MOD1/MOD_1] [get_bd_pins add_mode_3/B1]
  connect_bd_net -net ONE_BCD_DIGIT_MOD1_MOD_2 [get_bd_pins ONE_BCD_DIGIT_MOD3/MOD_0] [get_bd_pins add_mode_4/B0]
  connect_bd_net -net ONE_BCD_DIGIT_MOD1_MOD_3 [get_bd_pins ONE_BCD_DIGIT_MOD3/MOD_1] [get_bd_pins add_mode_4/B1]
  connect_bd_net -net ONE_BCD_DIGIT_MOD_MOD_0 [get_bd_pins ONE_BCD_DIGIT_MOD/MOD_0] [get_bd_pins add_mode_3/A0]
  connect_bd_net -net ONE_BCD_DIGIT_MOD_MOD_1 [get_bd_pins ONE_BCD_DIGIT_MOD/MOD_1] [get_bd_pins add_mode_3/A1]
  connect_bd_net -net ONE_BCD_DIGIT_MOD_MOD_2 [get_bd_pins ONE_BCD_DIGIT_MOD2/MOD_0] [get_bd_pins add_mode_4/A0]
  connect_bd_net -net ONE_BCD_DIGIT_MOD_MOD_3 [get_bd_pins ONE_BCD_DIGIT_MOD2/MOD_1] [get_bd_pins add_mode_4/A1]
  connect_bd_net -net add_mode_3_mod_0 [get_bd_pins add_mode_3/mod_0] [get_bd_pins add_mode_5/A0]
  connect_bd_net -net add_mode_3_mod_1 [get_bd_pins add_mode_3/mod_1] [get_bd_pins add_mode_5/A1]
  connect_bd_net -net add_mode_4_mod_0 [get_bd_pins add_mode_4/mod_0] [get_bd_pins add_mode_5/B0]
  connect_bd_net -net add_mode_4_mod_1 [get_bd_pins add_mode_4/mod_1] [get_bd_pins add_mode_5/B1]
  connect_bd_net -net add_mode_5_mod_0 [get_bd_pins add_mode_5/mod_0] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net add_mode_5_mod_1 [get_bd_pins add_mode_5/mod_1] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_ports is_mul_of_3] [get_bd_pins util_vector_logic_2/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


