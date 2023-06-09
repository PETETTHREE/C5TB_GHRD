# TCL File Generated by Component Editor 18.1
# Sat Mar 11 11:44:18 CST 2023
# DO NOT MODIFY


# 
# vcam "vcam" v1.0
#  2023.03.11.11:44:18
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module vcam
# 
set_module_property DESCRIPTION ""
set_module_property NAME vcam
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME vcam
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL vcam_top
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file vcam.qxp QXP PATH vcam.qxp


# 
# parameters
# 
add_parameter BURST_LEN INTEGER 16
set_parameter_property BURST_LEN DEFAULT_VALUE 16
set_parameter_property BURST_LEN DISPLAY_NAME BURST_LEN
set_parameter_property BURST_LEN TYPE INTEGER
set_parameter_property BURST_LEN UNITS None
set_parameter_property BURST_LEN ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BURST_LEN HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point data_bus
# 
add_interface data_bus avalon start
set_interface_property data_bus addressUnits SYMBOLS
set_interface_property data_bus associatedClock clock
set_interface_property data_bus associatedReset reset
set_interface_property data_bus bitsPerSymbol 8
set_interface_property data_bus burstOnBurstBoundariesOnly false
set_interface_property data_bus burstcountUnits WORDS
set_interface_property data_bus doStreamReads false
set_interface_property data_bus doStreamWrites false
set_interface_property data_bus holdTime 0
set_interface_property data_bus linewrapBursts false
set_interface_property data_bus maximumPendingReadTransactions 0
set_interface_property data_bus maximumPendingWriteTransactions 0
set_interface_property data_bus readLatency 0
set_interface_property data_bus readWaitTime 1
set_interface_property data_bus setupTime 0
set_interface_property data_bus timingUnits Cycles
set_interface_property data_bus writeWaitTime 0
set_interface_property data_bus ENABLED true
set_interface_property data_bus EXPORT_OF ""
set_interface_property data_bus PORT_NAME_MAP ""
set_interface_property data_bus CMSIS_SVD_VARIABLES ""
set_interface_property data_bus SVD_ADDRESS_GROUP ""

add_interface_port data_bus avm_write write Output 1
add_interface_port data_bus avm_read read Output 1
add_interface_port data_bus avm_addr address Output 32
add_interface_port data_bus avm_waitrequest waitrequest Input 1
add_interface_port data_bus avm_rdata_valid readdatavalid Input 1
add_interface_port data_bus avm_rdata readdata Input 128
add_interface_port data_bus avm_wdata writedata Output 128
add_interface_port data_bus avm_byteenable byteenable Output 16
add_interface_port data_bus avm_size burstcount Output 10


# 
# connection point cfg_bus
# 
add_interface cfg_bus avalon end
set_interface_property cfg_bus addressUnits WORDS
set_interface_property cfg_bus associatedClock clock
set_interface_property cfg_bus associatedReset reset
set_interface_property cfg_bus bitsPerSymbol 8
set_interface_property cfg_bus burstOnBurstBoundariesOnly false
set_interface_property cfg_bus burstcountUnits WORDS
set_interface_property cfg_bus explicitAddressSpan 0
set_interface_property cfg_bus holdTime 0
set_interface_property cfg_bus linewrapBursts false
set_interface_property cfg_bus maximumPendingReadTransactions 0
set_interface_property cfg_bus maximumPendingWriteTransactions 0
set_interface_property cfg_bus readLatency 0
set_interface_property cfg_bus readWaitTime 1
set_interface_property cfg_bus setupTime 0
set_interface_property cfg_bus timingUnits Cycles
set_interface_property cfg_bus writeWaitTime 0
set_interface_property cfg_bus ENABLED true
set_interface_property cfg_bus EXPORT_OF ""
set_interface_property cfg_bus PORT_NAME_MAP ""
set_interface_property cfg_bus CMSIS_SVD_VARIABLES ""
set_interface_property cfg_bus SVD_ADDRESS_GROUP ""

add_interface_port cfg_bus cfg_addr address Input 4
add_interface_port cfg_bus cfg_write_data writedata Input 32
add_interface_port cfg_bus cfg_read_data readdata Output 32
add_interface_port cfg_bus cfg_read read Input 1
add_interface_port cfg_bus cfg_write write Input 1
set_interface_assignment cfg_bus embeddedsw.configuration.isFlash 0
set_interface_assignment cfg_bus embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment cfg_bus embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment cfg_bus embeddedsw.configuration.isPrintableDevice 0


# 
# connection point dvp_bus
# 
add_interface dvp_bus conduit end
set_interface_property dvp_bus associatedClock clock
set_interface_property dvp_bus associatedReset reset
set_interface_property dvp_bus ENABLED true
set_interface_property dvp_bus EXPORT_OF ""
set_interface_property dvp_bus PORT_NAME_MAP ""
set_interface_property dvp_bus CMSIS_SVD_VARIABLES ""
set_interface_property dvp_bus SVD_ADDRESS_GROUP ""

add_interface_port dvp_bus dvp_data dvp_data Output 8
add_interface_port dvp_bus dvp_href dvp_href Output 1
add_interface_port dvp_bus dvp_pclk dvp_pclk Output 1
add_interface_port dvp_bus dvp_vsync dvp_vsync Output 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset rst_n reset_n Input 1

