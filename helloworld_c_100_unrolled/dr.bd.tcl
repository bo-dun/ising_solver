
if {[llength [get_files *.bd]] == 1} {
  set diagram_handle [open_bd_design [get_files *.bd]]
} else {
  set diagram_handle [open_bd_design [get_files pfm_dynamic.bd]]
}
upgrade_ip [get_ips]
upgrade_ip -quiet [get_bd_cells * -quiet -hierarchical -filter {VLNV =~ "xilinx.com:ip:processing_system7:*"}]
upgrade_ip -quiet [get_bd_cells * -quiet -hierarchical -filter {VLNV =~ "xilinx.com:ip:zynq_ultra_ps_e:*"}]

#---------------------------
# Constant blocks
#---------------------------

#---------------------------
# Platform Parameters for xilinx_aws-vu9p-f1_dynamic_5_0
#---------------------------
set interconnect_axilite_user [get_bd_cell /interconnect_axilite_user]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 3 \
  CONFIG.M02_HAS_REGSLICE 1 \
  ] $interconnect_axilite_user

#---------------------------
# Instantiating vadd_1
#---------------------------
set vadd_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:vadd:1.0 vadd_1]
  

#---------------------------
# Connectivity
#---------------------------
connect_bd_net  \
  [get_bd_pins /clk_extra_b0] \
  [get_bd_pins /interconnect_axilite_user/M02_ACLK] \
  [get_bd_pins /vadd_1/ap_clk] \

connect_bd_net  \
  [get_bd_pins /reset_controllers/clk_extra_b0_250Mhz_reset/interconnect_aresetn] \
  [get_bd_pins /interconnect_axilite_user/M02_ARESETN] \

connect_bd_net  \
  [get_bd_pins /reset_controllers/clk_extra_b0_250Mhz_reset/peripheral_aresetn] \
  [get_bd_pins /vadd_1/ap_rst_n] \

connect_bd_intf_net \
  [get_bd_intf_pins /interconnect_axilite_user/M02_AXI] \
  [get_bd_intf_pins /vadd_1/s_axi_control] \

sdx_memory_subsystem::map_memory_resource \
  [get_bd_intf_pins /vadd_1/m_axi_gmem] \
  [get_bd_cells /HIP] [list DDR4_MEM00]
